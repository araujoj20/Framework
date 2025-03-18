#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

#define JSON_FILE "Help-Code/stm32_l552_config.json"
#define USER_CONFIG_FILE "user_config.json"

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

void print_json_busted(cJSON *json, const char * n_obj, const char * search_obj) {
    cJSON *obj = cJSON_GetObjectItem(json, n_obj);
    if (!obj) {
        printf("No %s found!\n", n_obj);
        return;
    }

    printf("%6s | %s            \n", n_obj, search_obj);
    printf("----------------------------------\n");

    cJSON *arr_obj;
    cJSON_ArrayForEach(arr_obj, obj) {
        printf("%6s | ", arr_obj->string);
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

void save_user_config(const char *count, const char *trig, const char *dma, const char *channel) {
    cJSON *user_config = cJSON_CreateObject();
    cJSON_AddStringToObject(user_config, "timer_count", count);
    cJSON_AddStringToObject(user_config, "timer_trig", trig);

    // Create DMA object
    cJSON *dma_obj = cJSON_CreateObject();
    cJSON *dma_channel = cJSON_CreateObject();
    cJSON_AddStringToObject(dma_channel, "channel", channel);
    cJSON_AddItemToObject(dma_obj, dma, dma_channel);

    cJSON_AddItemToObject(user_config, "dma", dma_obj);

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

int main() {
    cJSON *json = load_json(JSON_FILE);
    if (!json) return 1;

    print_json_busted(json, "timers", "trigger");
    print_json_busted(json, "dmas", "channel");

    char timer_trig[20], timer_count[20], dma[10], channel[10];
    get_user_input("Enter timer count     (.:timX): ", timer_count, sizeof(timer_count));
    get_user_input("Enter timer trigger   (.:timX): ", timer_trig, sizeof(timer_trig));
    get_user_input("Enter DMA             (.:dmaX): ", dma, sizeof(dma));
    get_user_input("Enter DMA channel (.:channelX): ", channel, sizeof(channel));

    save_user_config(timer_count, timer_trig, dma, channel);

    cJSON_Delete(json);
    return 0;
}
