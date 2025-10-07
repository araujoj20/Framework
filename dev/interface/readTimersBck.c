#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

typedef struct sTim {
    char *nome;
    unsigned int periodo;
    char **triggers;
    int num_triggers;
    struct sTim *next;
} sTim;


sTim *read_timers(cJSON *root) {
    cJSON *timers = cJSON_GetObjectItem(root, "timers");
    if (!timers) return NULL;

    sTim *head = NULL;
    sTim *last = NULL;

    cJSON *tim;
    cJSON_ArrayForEach(tim, timers) {
        
        sTim *new_node = malloc(sizeof(sTim));
        if (!tim->string) continue;
        new_node->nome = strdup(tim->string);

        cJSON *period = cJSON_GetObjectItem(tim, "period");
        new_node->periodo = cJSON_IsNumber(period) ? period->valuedouble : 0;

        cJSON *trigger_array = cJSON_GetObjectItem(tim, "trigger");
        new_node->num_triggers = cJSON_GetArraySize(trigger_array);
        new_node->triggers = malloc(new_node->num_triggers * sizeof(char*));

        for (int i = 0; i < new_node->num_triggers; i++) {
            cJSON *item = cJSON_GetArrayItem(trigger_array, i);
            new_node->triggers[i] = strdup(item->valuestring);
        }

        new_node->next = NULL;

        if (last)
            last->next = new_node;
        else
            head = new_node;

        last = new_node;
    }

    return head;
}


void print_timers_struct(sTim *head) {
    printf("\n\n%6s | %s\n", "Timer", "Trigger Sources");
    printf("----------------------------------\n");

    for (sTim *curr = head; curr != NULL; curr = curr->next) {
        const char *bit_mode = (curr->periodo == 0xffff) ? "16-bit" : "32-bit";
        printf("%6s (%s) | ", curr->nome, bit_mode);

        for (int i = 0; i < curr->num_triggers; i++) {
            printf("%s", curr->triggers[i]);
            if (i < curr->num_triggers - 1)
                printf(", ");
        }

        printf("\n");
    }

    printf("\n");
}

void free_timers(sTim *head) {
    while (head) {
        sTim *next = head->next;

        free(head->nome);
        for (int i = 0; i < head->num_triggers; i++)
            free(head->triggers[i]);
        free(head->triggers);
        free(head);

        head = next;
    }
}


int main(){

    const char *filename = "Configs/stm32_f767_config.json your_config.json";
    FILE *f = fopen(filename, "r");
    fseek(f, 0, SEEK_END);
    long len = ftell(f);
    fseek(f, 0, SEEK_SET);
    char *data = malloc(len + 1);
    fread(data, 1, len, f);
    data[len] = '\0';
    fclose(f);

    cJSON *json = cJSON_Parse(data);
    sTim *timers = read_timers(json);
    print_timers_struct(timers);
    free_timers(timers);
    cJSON_Delete(json);
    free(data);
    return 0;
}
    