#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

#define VENDOR_JSON_FILE(vendor) "Configs/" vendor "_config.json"
#define BOARD_JSON_FILE(board) "Configs/" board "_config.json"
#define USER_CONFIG_FILE "user_config.json"

// Função para carregar JSON de um arquivo
cJSON *load_json(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (!file) {
        printf("Error opening file: %s\n", filename);
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

// Combine JSON files (inheritance)
// cJSON *combine_json(cJSON *base_json, cJSON *board_json) {
//     if (!base_json || !board_json) return NULL;

//     // Copiar as configurações do JSON base
//     cJSON *combined_json = cJSON_Duplicate(base_json, 1);

//     // Herdar as configurações do arquivo específico da placa
//     cJSON *inherits = cJSON_GetObjectItem(board_json, "inherits");
//     if (inherits && cJSON_IsString(inherits)) {
//         // A chave "inherits" indica o nome do arquivo base
//         printf("Inheriting configurations from: %s\n", inherits->valuestring);
//         // Nesse caso, as configurações de "board" substituem ou complementam o que está no arquivo base
//     }

//     // Adicionar as configurações específicas da placa
//     cJSON *uart_config = cJSON_GetObjectItem(board_json, "uart");
//     if (uart_config) {
//         cJSON_AddItemToObject(combined_json, "uart", cJSON_Duplicate(uart_config, 1));
//     }

//     return combined_json;
// }

// Automatic way to combine (not explored)
/*cJSON *combine_json(cJSON *base_json, cJSON *board_json) {
    if (!base_json || !board_json) return NULL;

    // Copiar as configurações do JSON base
    cJSON *combined_json = cJSON_Duplicate(base_json, 1);

    // Verificar se há um campo "inherits" no JSON da placa (board_json)
    cJSON *inherits = cJSON_GetObjectItem(board_json, "inherits");
    if (inherits && cJSON_IsString(inherits)) {
        // A chave "inherits" indica o nome do arquivo base
        printf("Inheriting configurations from: %s\n", inherits->valuestring);
        // Aqui você pode carregar o arquivo base indicado e combinar suas configurações automaticamente.
    }

    // Iterar sobre todas as chaves do JSON específico da placa (board_json)
    cJSON *board_item = NULL;
    cJSON_ArrayForEach(board_item, board_json) {
        // Adicionar ou substituir as chaves do JSON base com as do JSON da placa
        cJSON *existing_item = cJSON_GetObjectItem(combined_json, board_item->string);
        if (existing_item) {
            // Se a chave já existe no base_json, você pode decidir como combinar. Exemplo:
            if (cJSON_IsObject(board_item)) {
                // Se for um objeto, você pode fundir os objetos, por exemplo.
                cJSON_ReplaceItemInObject(combined_json, board_item->string, cJSON_Duplicate(board_item, 1));
            } else {
                // Caso contrário, substitui diretamente
                cJSON_ReplaceItemInObject(combined_json, board_item->string, cJSON_Duplicate(board_item, 1));
            }
        } else {
            // Se não existir, adiciona diretamente
            cJSON_AddItemToObject(combined_json, board_item->string, cJSON_Duplicate(board_item, 1));
        }
    }

    return combined_json;
}*/

// Se uma chave já existir, ela é substituída pelo valor do board_json
void merge_json_objects(cJSON *base, cJSON *overlay) {
    cJSON *overlay_item = NULL;
    cJSON_ArrayForEach(overlay_item, overlay) {
        // Procura o mesmo item na base
        cJSON *base_item = cJSON_GetObjectItem(base, overlay_item->string);
        if (base_item != NULL && cJSON_IsObject(base_item) && cJSON_IsObject(overlay_item)) {
            // Mescla recursivamente os objetos aninhados
            merge_json_objects(base_item, overlay_item);
        } else {
            // Se o item já existe, substitui; caso contrário, adiciona
            if (base_item != NULL) {
                cJSON_ReplaceItemInObject(base, overlay_item->string,
                                           cJSON_Duplicate(overlay_item, 1));
            } else {
                cJSON_AddItemToObject(base, overlay_item->string,
                                      cJSON_Duplicate(overlay_item, 1));
            }
        }
    }
}

// Combina o JSON base com o JSON da placa usando a mesclagem recursiva
cJSON *combine_json(cJSON *base_json, cJSON *board_json) {
    if (!base_json || !board_json)
        return NULL;

    // Duplica o base_json para não modificá-lo diretamente
    cJSON *combined_json = cJSON_Duplicate(base_json, 1);
    merge_json_objects(combined_json, board_json);
    return combined_json;
}

// Função para salvar a configuração do usuário em um arquivo JSON
void save_user_config(const char *count, const char *trig, 
    const char *dma, const char *channel, cJSON *uart_config) {

    cJSON *user_config = cJSON_CreateObject();
    cJSON_AddStringToObject(user_config, "timer_count", count);
    cJSON_AddStringToObject(user_config, "timer_trig", trig);

    // Create DMA object
    cJSON *dma_obj = cJSON_CreateObject();
    cJSON *dma_channel = cJSON_CreateObject();
    cJSON_AddStringToObject(dma_channel, "channel", channel);
    cJSON_AddItemToObject(dma_obj, dma, dma_channel);

    cJSON_AddItemToObject(user_config, "dma", dma_obj);

    if (uart_config) {
        cJSON_AddItemToObject(user_config, "uart", cJSON_Duplicate(uart_config, 1));
    }

    // Write User Config JSON file
    char *json_str = cJSON_Print(user_config);
    FILE *file = fopen(USER_CONFIG_FILE, "w");
    if (file) {
        fprintf(file, "%s", json_str);
        fclose(file);
    }

    cJSON_free(json_str);
    cJSON_Delete(user_config);

    printf("\nConfiguration saved in '%s'\n", USER_CONFIG_FILE);
}

void print_json_busted(cJSON *json, const char * n_obj, const char * search_obj) {
    cJSON *obj = cJSON_GetObjectItem(json, n_obj);
    if (!obj) {
        printf("No %s found!\n", n_obj);
        return;
    }

    printf("\n\n%6s | %s            \n", n_obj, search_obj);
    printf("----------------------------------\n");

    cJSON *arr_obj;

    cJSON_ArrayForEach(arr_obj, obj) {

    
        if (strstr(n_obj, "timers") != NULL) {
            cJSON *period_obj = cJSON_GetObjectItem(arr_obj, "period");
            if (period_obj && cJSON_IsNumber(period_obj)) {
                printf("%6s (%s) | ", arr_obj->string, (period_obj->valueint == 0xffff) ? "16-bit" : "32-bit");
            }
        }
        else {
            printf("%6s | ", arr_obj->string);  
        }

        cJSON *arr_s_obj = cJSON_GetObjectItem(arr_obj, search_obj);
        if (cJSON_IsArray(arr_s_obj)) {
            int first = 1;
            cJSON *s_obj;
            cJSON_ArrayForEach(s_obj, arr_s_obj) {
                if (!first) printf(", ");
                printf("%-5s", s_obj->valuestring);
                first = 0;
            }
        }
        printf("\n");
    }
    printf("\n");
}

void get_user_input(const char *prompt, char *buffer, size_t size) {
    printf("%s", prompt);
    fgets(buffer, size, stdin);
    buffer[strcspn(buffer, "\n")] = '\0'; // Remove newline
}



typedef struct {
    const char *t_name;
    const char *t_board;
    const char *t_path;
    volatile unsigned char flag_log;
    volatile unsigned char flag_manual;
} TestInputs;

int main(int argc, char *argv[]) {
    
    if (argc < 4) {
        printf("Usage: %s <test_name> <board_config_path> <test_path> [-flags]\n", argv[0]);
        printf(" -manual : choose peripherals\n -log : print logs during execution\n");
        return 1;
    }
    
    TestInputs s_test = {argv[1], argv[2], argv[3], 0, 0};

    for (int i = 4; i < argc; i++) {
        if (strcasecmp(argv[i], "-log") == 0) {
            s_test.flag_log = 1;
        } 
        else if (strcasecmp(argv[i], "-manual") == 0) {
            s_test.flag_manual = 1;
        } 
        else {
            printf("Warning: Unknown flag %s ignored.\n", argv[i]);
        }
    }

    // Carregar o arquivo base de configuração
    cJSON *base_json = load_json(VENDOR_JSON_FILE("stm32"));
    if (!base_json) return 1;

    // char board_config[64];
    // snprintf(board_config, sizeof(board_config), "Configs/%s_config.json", s_test.t_board);
    
    // Carregar a configuração específica da placa
    cJSON *board_json = load_json(s_test.t_board);
    if (!board_json) {
        printf("Error loading board-specific configuration\n");
        cJSON_Delete(base_json);
        return 1;
    }

    // Combines 2 json files
    cJSON *combined_json = combine_json(base_json, board_json);

    // Presents JSON combine file (Helps visualization)
    // char *combined_str = cJSON_Print(combined_json);
    // printf("Combined Configuration:\n%s\n", combined_str);
    // cJSON_free(combined_str);
    
    char timer_trig[20], timer_count[20], dma[10], channel[10];
    
    print_json_busted(combined_json, "timers", "trigger");
    get_user_input("Timer count     (.:timX): ", timer_count, sizeof(timer_count));
    get_user_input("Timer trigger   (.:timX): ", timer_trig, sizeof(timer_trig));
    
    print_json_busted(combined_json, "dmas", "channel");
    
    get_user_input("DMA             (.:dmaX): ", dma, sizeof(dma));
    get_user_input("DMA channel (.:channelX): ", channel, sizeof(channel));
    

    cJSON *uart = cJSON_GetObjectItem(combined_json, "uart");

    save_user_config(timer_count, timer_trig, dma, channel, uart);

    // Delete Inst
    cJSON_Delete(combined_json);
    cJSON_Delete(board_json);
    cJSON_Delete(base_json);
    return 0;
}
