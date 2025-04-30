#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

#define COVERT_CHANNEL

#if defined(COVERT_CHANNEL)
    #define __HAL_RCC_DMAMUX_CLK_ENABLE ""
    //#define DMA_REQUEST "DMA_REQUEST_MEM2MEM"
    #define DMA_DIRECTION "DMA_MEMORY_TO_MEMORY"
    #define DMA_PERIPH_INC "DMA_PINC_DISABLE"
    #define DMA_MEM_INC "DMA_MINC_DISABLE"
    #define DMA_PERIPH_DATA_ALIGNMENT "DMA_PDATAALIGN_BYTE"
    #define DMA_MEM_DATA_ALIGNMENT "DMA_MDATAALIGN_BYTE"
    #define DMA_MODE "DMA_NORMAL"
    #define DMA_PRIORITY "DMA_PRIORITY_LOW"
    #define DMA_CHANNEL_ATTR "DMA_CHANNEL_NPRIV"
#else
    #error "Unknown configuration"
#endif

#define OUT_FILENAME "dma.h"

typedef struct {
    const char *name;
    const char *stream;
    const char *channel;
} DMA_Config;


cJSON *load_json(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (!file) {
        printf("%s: Error opening file: %s\n", __FILE__, filename);
        return NULL;
    }

    fseek(file, 0, SEEK_END);
    long length = ftell(file);
    fseek(file, 0, SEEK_SET);

    char *data = (char *)malloc(length + 1);
    fread(data, 1, length, file);
    data[length] = '\0';
    fclose(file);

    cJSON *json = cJSON_Parse(data);
    free(data);
    return json;
}


void generate_stm_dma_config(cJSON *root, const char *out_file_path) {

    DMA_Config dma;

    char *board_fam     = cJSON_GetObjectItem(root, "family")->valuestring;


    cJSON *dma_json     = cJSON_GetObjectItem(root, "dma");
    dma.name            = cJSON_GetObjectItem(dma_json, "name")->valuestring;
    cJSON *stream_json  = cJSON_GetObjectItem(dma_json, "stream");
    cJSON *channel_json = cJSON_GetObjectItem(dma_json, "channel");

    char dma_instance[32];

    if (cJSON_IsString(stream_json))
    {
        dma.stream = stream_json->valuestring;
        snprintf(dma_instance, sizeof(dma_instance), "%s_%s", dma.name, dma.stream);
    }
    else if (cJSON_IsString(channel_json))
    {
        dma.channel = channel_json->valuestring;
        snprintf(dma_instance, sizeof(dma_instance), "%s_%s", dma.name, dma.channel);
    }
    else 
    {
        fprintf(stderr, "Missing 'stream' or 'channel'\n");
        return;
    }


    char buffer[1024];
    snprintf(buffer, sizeof(buffer),
            "#ifndef __DMA_H__\n"
            "#define __DMA_H__\n"
            "\n"
            "#include \"%s_hal.h\"\n"
            "\n"
            "extern DMA_HandleTypeDef hdma;\n"
            "\n"
            "#define __HAL_RCC_DMAMUX_CLK_ENABLE %s\n"
            "#define __HAL_RCC_DMA_CLK_ENABLE __HAL_RCC_%s_CLK_ENABLE\n"
            "#define DMA_INSTANCE %s\n"
            //"#define DMA_REQUEST %s \n"
            "#define DMA_DIRECTION  %s\n"
            "#define DMA_PERIPH_INC %s\n"
            "#define DMA_MEM_INC %s\n"
            "#define DMA_PERIPH_DATA_ALIGNMENT %s\n"
            "#define DMA_MEM_DATA_ALIGNMENT %s\n"
            "#define DMA_MODE %s\n"
            "#define DMA_PRIORITY %s\n"
            "#define DMA_CHANNEL_ATTR %s\n"
            "#define DMA_IRQ %s_IRQn\n"
            "\n"
            "void DMA_Init(void);\n"
            "\n"
            "#endif",
            board_fam, __HAL_RCC_DMAMUX_CLK_ENABLE, dma.name, dma_instance,
            /*DMA_REQUEST,*/ DMA_DIRECTION, DMA_PERIPH_INC,
            DMA_MEM_INC, DMA_PERIPH_DATA_ALIGNMENT, DMA_MEM_DATA_ALIGNMENT,
            DMA_MODE, DMA_PRIORITY, DMA_CHANNEL_ATTR, dma_instance
            );

    const char *suffix = OUT_FILENAME;
    int len = strlen(out_file_path) + strlen(suffix) + 2;
    char output_filename[len];
    snprintf(output_filename, sizeof(output_filename), "%s/%s", out_file_path, suffix);

    FILE *output_file = fopen(output_filename, "w");
    if (output_file) {
        fwrite(buffer, sizeof(char), strlen(buffer), output_file);
        fclose(output_file);
    } else {
        printf("Failed to open file %s for writing.\n", output_filename);
    }

}

int main(int argc, char *argv[]) {
    
    if (argc < 3) {
        printf("Usage: %s <board_config_path>\n", argv[0]);
        return 1;
    }

    cJSON *root = load_json(argv[1]);
    if (!root) {
        printf("%s: Error loading board %s\n", __FILE__, argv[1]);
        cJSON_Delete(root);
        return 1;
    }

    generate_stm_dma_config(root, argv[2]);
    
    cJSON_Delete(root);

    return 0;
}
