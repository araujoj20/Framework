#include <stdio.h>
#include <stdlib.h>
#include "cJSON.h"

#define JSON_FILE "Help-Code/stm32_config.json"

// Função para ler JSON do ficheiro
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

void print_timers(cJSON *json) {
    cJSON *timers = cJSON_GetObjectItem(json, "timers");
    if (!timers) {
        printf("No timers found!\n");
        return;
    }

    printf(" Timer | Input Triggers            \n");
    printf("----------------------------------\n");

    cJSON *timer;
    cJSON_ArrayForEach(timer, timers) {
        printf(" %-5s | ", timer->string);  // Timers Names

        cJSON *input_triggers = cJSON_GetObjectItem(timer, "input_trigger");
        if (cJSON_IsArray(input_triggers)) {
            int first = 1;
            cJSON *trigger;
            cJSON_ArrayForEach(trigger, input_triggers) {
                if (!first) printf(", ");
                printf("%-5s", trigger->valuestring);   // Input Triggers Names
                first = 0;
            }
        }
        printf("\n");
    }
}

void print_dmas(cJSON *json) {
    cJSON *dmas = cJSON_GetObjectItem(json, "dmas");
    if (!dmas) {
        printf("No dmas found!\n");
        return;
    }

    printf(" DMA  | Channels\n");
    printf("--------------------------------------------------------------------------------------\n");

    cJSON *dma;
    cJSON_ArrayForEach(dma, dmas) {
        printf(" %-4s | ", dma->string);  // Nome do timer

        cJSON *channels = cJSON_GetObjectItem(dma, "channel");
        if (cJSON_IsArray(channels)) {
            int first = 1;
            cJSON *channel;
            cJSON_ArrayForEach(channel, channels) {
                if (!first) printf(", ");
                printf("%-6s", channel->valuestring);
                first = 0;
            }
        }
        printf("\n");
    }
}

int main() {
    cJSON *json = load_json(JSON_FILE);
    if (!json) return 1;

    print_timers(json);
    printf("\n\n");
    print_dmas(json);

    cJSON_Delete(json);
    return 0;
}
