#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

// gcc -DSTM32F767 -c periph_gen.c cJSON/cJSON.c -o periph_gen

#if   defined(STM32F767)
    #define UART_GPIO_ALTERNATE "GPIO_AF7_USART3"
#elif defined(STM32F407)
    #define UART_GPIO_ALTERNATE "GPIO_AF7_USART2"
#elif defined(STM32L552)
    #define UART_GPIO_ALTERNATE "GPIO_AF8_LPUART1"
#elif defined(STM32U575)
    #define UART_GPIO_ALTERNATE "GPIO_AF7_USART1"
#else
    #error "Unknown board configuration"
#endif

typedef struct {
    const char *instance;
    int baudrate;
    const char *tx_pin;
    const char *rx_pin;
} UART_Config;

typedef struct {
    const char *board;
    const char *family;
    UART_Config uart;
} Board_Config;


void parse_pin(const char *pin, char *port, int *pin_number) {
    
    sscanf(pin + 1, "%c%d", port, pin_number); // Pin Format: "PXy", X = Port, y = Num
}

//fw.sh -test test1 -file_config -test_path [-flags]

/* The idea is to use #if #endif, just temporary (made above)*/
const char* verify_board_temp(const char *board_fam){
    if (!strcmp(board_fam, "f7")) {
        return "GPIO_AF7_USART3";
    }
    else if (!strcmp(board_fam, "f4")) {
        return "GPIO_AF7_USART2";
    }
    else if (!strcmp(board_fam, "l5")) {
        return "GPIO_AF8_LPUART1";
    }
    return NULL;
}

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

void generate_uart_config(cJSON *root, const char *file_path) {


    // cJSON *uart = cJSON_GetObjectItem(root, "uart");
    // if (!cJSON_IsObject(uart)) {
    //     printf("Invalid JSON format for UART.\n");
    //     cJSON_Delete(root);
    //     free(json_string);
    //     return;
    // }
    
    // char board_fam[3];
    // if (!sscanf(filename, "Configs/stm32_%2s", board_fam)){
    //     printf("Failed to extract board family.\n");
    // }
    // const char *UART_GPIO_ALTERNATE = verify_board_temp(board_fam);

    Board_Config board;

    board.board            = cJSON_GetObjectItem(root, "board")->valuestring;
    board.family           = cJSON_GetObjectItem(root, "family")->valuestring;

    cJSON *uart            = cJSON_GetObjectItem(root, "uart");
    board.uart.instance    = cJSON_GetObjectItem(uart, "instance")->valuestring;
    board.uart.baudrate    = cJSON_GetObjectItem(uart, "baudrate")->valueint;
    board.uart.tx_pin      = cJSON_GetObjectItem(uart, "tx_pin")->valuestring;
    board.uart.rx_pin      = cJSON_GetObjectItem(uart, "rx_pin")->valuestring;

    int tx_pin_number, rx_pin_number;
    char port;

    {
        char tx_port, rx_port;
        parse_pin(board.uart.tx_pin, &tx_port, &tx_pin_number);
        parse_pin(board.uart.rx_pin, &rx_port, &rx_pin_number);

        if (tx_port - rx_port) {
            printf("Error: Rx and Tx pin have different ports\n");
        } 
        else {
            port = tx_port & rx_port;
        }
    }

    char buffer[1024];
    snprintf(buffer, sizeof(buffer),
            "#ifndef __PERIPHERALS_H__\n"
            "#define __PERIPHERALS_H__\n"
            "\n"
            "#include \"%s_hal.h\"\n"
            "\n"
            "#define UART_INSTANCE %s\n"
            "#define UART_BAUDRATE %d\n"
            "#define UART_RCC_PERIPHCLK RCC_PERIPHCLK_%s\n"
            //"#define UART_RCC_CLKSOURCE RCC_%sCLKSOURCE_PCLK1\n"
            "#define __HAL_RCC_GPIO_CLK_ENABLE  __HAL_RCC_GPIO%c_CLK_ENABLE\n"
            "#define __HAL_RCC_UART_CLK_ENABLE  __HAL_RCC_%s_CLK_ENABLE\n"
            "#define __HAL_RCC_UART_CLK_DISABLE __HAL_RCC_%s_CLK_DISABLE\n"
            "#define UART_TX_GPIO_PIN GPIO_PIN_%d\n"
            "#define UART_RX_GPIO_PIN GPIO_PIN_%d\n"
            "#define UART_GPIO_PORT GPIO%c\n"
            "#define UART_GPIO_MODE GPIO_MODE_AF_PP\n"
            "#define UART_GPIO_SPEED GPIO_SPEED_FREQ_VERY_HIGH\n"
            "#define UART_GPIO_ALTERNATE %s\n"
            "\n"
            "void UART_Init(void);\n"
            "\n"
            "#endif",
            board.family, board.uart.instance, board.uart.baudrate, board.uart.instance, /*instance,*/ port, 
            board.uart.instance, board.uart.instance, tx_pin_number, rx_pin_number, port, UART_GPIO_ALTERNATE
        );

    const char *suffix = "/peripherals.h";
    int len = strlen(file_path) + strlen(suffix) + 1;
    char output_filename[len];
    snprintf(output_filename, sizeof(output_filename), "%s%s", file_path, suffix);

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
        printf("Error loading board %s\n", argv[1]);
        cJSON_Delete(root);
        return 1;
    }

    generate_uart_config(root, argv[2]);
    
    cJSON_Delete(root);

    return 0;
}
