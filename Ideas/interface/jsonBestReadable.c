#ifndef JSON_UTILS_H
#define JSON_UTILS_H

#include <cJSON.h>

const char *json_get_string(cJSON *root, const char *path);
int json_get_int(cJSON *root, const char *path, int default_val);
double json_get_double(cJSON *root, const char *path, double default_val);
int json_get_bool(cJSON *root, const char *path, int default_val);

// Interno (podes esconder no .c se preferires)
cJSON *json_get_node(cJSON *root, const char *path);

#endif


#include "json_utils.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

static int is_digit_str(const char *s) {
    while (*s) {
        if (!isdigit(*s)) return 0;
        s++;
    }
    return 1;
}

cJSON *json_get_node(cJSON *root, const char *path) {
    char *copy = strdup(path);
    char *token = strtok(copy, ".");
    cJSON *node = root;

    while (token && node) {
        char *bracket = strchr(token, '[');
        if (bracket) {
            *bracket = '\0';
            int idx = atoi(bracket + 1);
            node = cJSON_GetObjectItem(node, token);
            if (node && cJSON_IsArray(node)) {
                node = cJSON_GetArrayItem(node, idx);
            } else {
                node = NULL;
                break;
            }
        } else {
            node = cJSON_GetObjectItem(node, token);
        }
        token = strtok(NULL, ".");
    }

    free(copy);
    return node;
}

const char *json_get_string(cJSON *root, const char *path) {
    cJSON *node = json_get_node(root, path);
    return (node && cJSON_IsString(node)) ? node->valuestring : NULL;
}

int json_get_int(cJSON *root, const char *path, int default_val) {
    cJSON *node = json_get_node(root, path);
    return (node && cJSON_IsNumber(node)) ? node->valueint : default_val;
}

double json_get_double(cJSON *root, const char *path, double default_val) {
    cJSON *node = json_get_node(root, path);
    return (node && cJSON_IsNumber(node)) ? node->valuedouble : default_val;
}

int json_get_bool(cJSON *root, const char *path, int default_val) {
    cJSON *node = json_get_node(root, path);
    return (node && cJSON_IsBool(node)) ? cJSON_IsTrue(node) : default_val;
}


cJSON *root = cJSON_Parse(json_text);

const char *tx_pin = json_get_string(root, "uart.tx_pin");
int baud = json_get_int(root, "uart.baudrate", 9600);
const char *priority = json_get_string(root, "dma.channels[0].priority");