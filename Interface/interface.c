#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "cJSON.h"

#define CONFIG_FILE "user_config.json"
// Structs
typedef struct TriggerNode {
    char *name;
    struct TriggerNode *next;
} TriggerNode;

typedef struct TimerNode {
    char *name;
    uint32_t period;
    TriggerNode *triggers;
    struct TimerNode *next;
} TimerNode;

typedef struct ChannelNode {
    char *name;
    struct ChannelNode *next;
} ChannelNode;

typedef struct DmaNode {
    char *name;
    ChannelNode *channels;
    struct DmaNode *next;
} DmaNode;


typedef struct {
    const char *vendor;
    const char *board;
    const char *path_gen;
    //const char *t_path;
    //volatile unsigned char flag_log;
    //volatile unsigned char flag_manual;
} sInputs;


TriggerNode *add_trigger(TriggerNode *head, const char *name){
    TriggerNode *new_node = malloc(sizeof(TriggerNode));
    if (!new_node) return NULL;
    new_node->name = strdup(name);
    new_node->next = head;
    return new_node;
}

TimerNode *add_timer(TimerNode *head, const char *name, uint32_t period, TriggerNode *triggers){
    TimerNode *new_node = malloc(sizeof(TimerNode));
    if (!new_node) return NULL;
    new_node->name = strdup(name);
    new_node->period = period;
    new_node->triggers = triggers;
    new_node->next = head;
    return new_node;
}

void free_triggers(TriggerNode *head){
    while (head) {
        TriggerNode *tmp = head;
        head = head->next;
        free(tmp->name);
        free(tmp);
    }
}

void free_timers(TimerNode *head){
    while (head) {
        TimerNode *tmp = head;
        head = head->next;
        free(tmp->name);
        free_triggers(tmp->triggers);
        free(tmp);
    }
}

void print_timers(TimerNode *head){
    printf("\nTimers configuration:\n");
    printf("---------------------\n");

    while (head) {
        printf("%6s (%s) | ", head->name, (head->period == 0xffff) ? "16-bit" : "32-bit");

        TriggerNode *trig = head->triggers;
        while (trig) {
            printf("%s", trig->name);
            if (trig->next) printf(", ");
            trig = trig->next;
        }
        printf("\n");
        head = head->next;
    }
}

TimerNode *parse_timers(cJSON *root){
    TimerNode *timers = NULL;
    cJSON *timers_obj = cJSON_GetObjectItem(root, "timers");

    if (!cJSON_IsObject(timers_obj)) return NULL;

    cJSON *timer_entry = NULL;
    cJSON_ArrayForEach(timer_entry, timers_obj) {
        const char *timer_name  = timer_entry->string;
        cJSON *period_obj       = cJSON_GetObjectItem(timer_entry, "period");
        cJSON *trigger_array    = cJSON_GetObjectItem(timer_entry, "trigger");

        if (!cJSON_IsNumber(period_obj)) continue;

        uint32_t period = (uint32_t)period_obj->valuedouble;
        TriggerNode *triggers = NULL;

        if (cJSON_IsArray(trigger_array)) {
            cJSON *trigger_item = NULL;
            cJSON_ArrayForEach(trigger_item, trigger_array){
                if (cJSON_IsString(trigger_item)) {
                    triggers = add_trigger(triggers, trigger_item->valuestring);
                }
            }
        }

        timers = add_timer(timers, timer_name, period, triggers);
    }

    return timers;
}

DmaNode *parse_dmas(cJSON *root) {
    DmaNode *head = NULL, *tail = NULL;
    cJSON *dmas = cJSON_GetObjectItem(root, "dmas");
    if (!dmas || !cJSON_IsObject(dmas)) return NULL;

    cJSON *dma;
    cJSON_ArrayForEach(dma, dmas) {
        DmaNode *new_dma = calloc(1, sizeof(DmaNode));
        new_dma->name = strdup(dma->string);
        new_dma->channels = NULL;
        new_dma->next = NULL;

        cJSON *channel_arr = cJSON_GetObjectItem(dma, "channel");
        if (channel_arr && cJSON_IsArray(channel_arr)) {
            ChannelNode *ch_tail = NULL;
            cJSON *ch;
            cJSON_ArrayForEach(ch, channel_arr) {
                if (!cJSON_IsString(ch)) continue;
                ChannelNode *new_ch = calloc(1, sizeof(ChannelNode));
                new_ch->name = strdup(ch->valuestring);
                new_ch->next = NULL;

                if (!new_dma->channels) {
                    new_dma->channels = ch_tail = new_ch;
                } else {
                    ch_tail->next = new_ch;
                    ch_tail = new_ch;
                }
            }
        }

        if (!head) {
            head = tail = new_dma;
        } else {
            tail->next = new_dma;
            tail = new_dma;
        }
    }

    return head;
}


void print_dmas(DmaNode *head) {
    printf("\n%-10s | Channels\n", "DMA");
    printf("-------------------------------\n");

    for (DmaNode *curr = head; curr != NULL; curr = curr->next) {
        printf("%-10s | ", curr->name);
        for (ChannelNode *ch = curr->channels; ch != NULL; ch = ch->next) {
            printf("%s ", ch->name);
        }
        printf("\n");
    }
}

void free_dmas(DmaNode *head) {
    while (head) {
        DmaNode *tmp = head;
        head = head->next;

        free(tmp->name);

        ChannelNode *ch = tmp->channels;
        while (ch) {
            ChannelNode *tmp_ch = ch;
            ch = ch->next;
            free(tmp_ch->name);
            free(tmp_ch);
        }

        free(tmp);
    }
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

// Main

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

cJSON *combine_json(cJSON *base_json, cJSON *board_json){
    if (!base_json || !board_json)
        return NULL;

    // Duplica o base_json para não modificá-lo diretamente
    cJSON *combined_json = cJSON_Duplicate(base_json, 1);
    merge_json_objects(combined_json, board_json);
    return combined_json;
}

void get_user_input(const char *prompt, char *buffer, size_t size) {
    printf("%s", prompt);
    fgets(buffer, size, stdin);
    buffer[strcspn(buffer, "\n")] = '\0'; // Remove newline
}

void save_user_config(cJSON *board, cJSON *family, const char *count, const char *trig, 
    const char *dma, const char *channel, cJSON *uart_config, const char *path_gen){
        
    cJSON *user_config = cJSON_CreateObject();
    
    if (board) {
        cJSON_AddItemToObject(user_config, "board", cJSON_Duplicate(board, 1));
    }
    if (family) {
        cJSON_AddItemToObject(user_config, "family", cJSON_Duplicate(family, 1));
    }

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

    // char filename[256];
    // snprintf(filename, sizeof(filename), "%s_config.json", path_gen);
    unsigned int len = strlen(path_gen) + strlen(CONFIG_FILE) + 2;  // +2 para '\0' e "/"
    char filename[len];
    snprintf(filename, len, "%s/"CONFIG_FILE, path_gen);

    char *json_str = cJSON_Print(user_config);
    FILE *file = fopen(filename, "w");
    if (file) {
        fprintf(file, "%s", json_str);
        fclose(file);
    }

    cJSON_free(json_str);
    cJSON_Delete(user_config);

    printf("\nConfiguration saved in '%s'\n", filename);
}

int main(int argc, char *argv[]) {
    
    if (argc < 2) {
        printf("Usage: %s  <board_config_path> <vendor_config_path> \n", argv[0]);
        printf(" -manual : choose peripherals\n -log : print logs during execution\n");
        return 1;
    }

    sInputs input = {argv[1], argv[2], argv[3]};

    // for (int i = 4; i < argc; i++) {
    //     if (strcasecmp(argv[i], "-log") == 0) {
    //         input.flag_log = 1;
    //     } 
    //     else if (strcasecmp(argv[i], "-manual") == 0) {
    //         input.flag_manual = 1;
    //     } 
    //     else {
    //         printf("Warning: Unknown flag %s ignored.\n", argv[i]);
    //     }
    // }
    
    cJSON *vendor_json = load_json(input.vendor);
    if (!vendor_json) {
        printf("Error loading board %s\n", input.vendor);
        cJSON_Delete(vendor_json);
        return 1;
    }

    // Carregar a configuração específica da placa
    cJSON *board_json = load_json(input.board);
    if (!board_json) {
        printf("Error loading board %s\n", input.board);
        cJSON_Delete(board_json);
        return 1;
    }

    // Combines 2 json files
    cJSON *combined_json = combine_json(vendor_json, board_json);

    char timer_trig[20], timer_count[20], dma[10], channel[10];

    TimerNode *timers = parse_timers(combined_json);
    print_timers(timers);

    get_user_input("Timer count     (.:timX): ", timer_count, sizeof(timer_count));
    get_user_input("Timer trigger   (.:timX): ", timer_trig, sizeof(timer_trig));

    DmaNode *dmas = parse_dmas(combined_json);
    print_dmas(dmas);
    
    get_user_input("DMA             (.:dmaX): ", dma, sizeof(dma));
    get_user_input("DMA channel (.:channelX): ", channel, sizeof(channel));
    
    cJSON *uart = cJSON_GetObjectItem(combined_json, "uart");
    
    cJSON *board  = cJSON_GetObjectItem(combined_json, "board");
    cJSON *family = cJSON_GetObjectItem(combined_json, "family");

    save_user_config(board, family, timer_count, timer_trig, dma, channel, uart, input.path_gen);

    
    // Clean memory
    free_timers(timers);
    free_dmas(dmas);
    cJSON_Delete(combined_json);
    cJSON_Delete(vendor_json);
    cJSON_Delete(board_json);
    return 0;
}
