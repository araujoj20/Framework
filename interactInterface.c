#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

#define JSON_FILE "Help-Code/stm32_config.json"
#define USER_CONFIG "user_config.json"

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

// Função para imprimir opções e obter escolha do utilizador
char *get_user_choice(cJSON *json, const char *category) {
    cJSON *items = cJSON_GetObjectItem(json, category);
    if (!items) {
        printf("No %s found!\n", category);
        return NULL;
    }

    printf("Available %s:\n", category);
    int index = 0;
    cJSON *item;
    cJSON_ArrayForEach(item, items) {
        printf("[%d] %s\n", index, item->string);
        index++;
    }

    int choice;
    printf("Choose %s (enter number): ", category);
    scanf("%d", &choice);

    index = 0;
    cJSON_ArrayForEach(item, items) {
        if (index == choice) {
            return item->string;
        }
        index++;
    }
    return NULL;
}

// Função para salvar as escolhas no ficheiro JSON
void save_user_config(const char *trig, const char *count, const char *dma) {
    cJSON *user_config = cJSON_CreateObject();
    cJSON_AddStringToObject(user_config, "timer_trig", trig);
    cJSON_AddStringToObject(user_config, "timer_count", count);
    cJSON_AddStringToObject(user_config, "dma", dma);

    char *json_str = cJSON_Print(user_config);
    FILE *file = fopen(USER_CONFIG, "w");
    if (file) {
        fprintf(file, "%s", json_str);
        fclose(file);
    }

    cJSON_free(json_str);
    cJSON_Delete(user_config);
}

int main() {
    cJSON *json = load_json(JSON_FILE);
    if (!json) return 1;

    char *timer_trig = get_user_choice(json, "timers");
    char *timer_count = get_user_choice(json, "timers");
    char *dma = get_user_choice(json, "dmas");

    if (timer_trig && timer_count && dma) {
        save_user_config(timer_trig, timer_count, dma);
        printf("Configuration saved successfully!\n");
    } else {
        printf("Invalid selection!\n");
    }

    cJSON_Delete(json);
    return 0;
}
