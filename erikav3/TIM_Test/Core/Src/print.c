/*
 * print.c
 *
 *  Created on: Jun 26, 2025
 *      Author: araujoj20
 */

#include "../../Core/Inc/main.h"
#include <stdio.h>


static void my_utoa_dec(unsigned int value, char *buf)
{
    char temp[10];
    unsigned int i = 0;

    if (value == 0) {
        buf[0] = '0';
        buf[1] = '\0';
        return;
    }

    while (value && i < sizeof(temp)) {
        temp[i++] = '0' + (value % 10);
        value /= 10;
    }

    for (unsigned int j = 0; j < i; ++j) {
        buf[j] = temp[i - j - 1];
    }

    buf[i] = '\0';
}

static void my_utoa_hex(unsigned int value, char *buf)
{
    static const char hex_chars[] = "0123456789ABCDEF";
    char temp[8];
    unsigned int i = 0;

    if (value == 0) {
        buf[0] = '0';
        buf[1] = '\0';
        return;
    }

    while (value && i < sizeof(temp)) {
        temp[i++] = hex_chars[value & 0xF];
        value >>= 4;
    }

    for (unsigned int j = 0; j < i; ++j) {
        buf[j] = temp[i - j - 1];
    }

    buf[i] = '\0';
}
static int my_format(char *out_buf, size_t max_len, const char *fmt, __builtin_va_list args)
{
    const char *p = fmt;
    char *out = out_buf;
    char num_buf[16];

    while (*p && (size_t)(out - out_buf) < max_len - 1) {
        if (*p == '%') {
            p++;

            int width = 0;
            while (*p >= '0' && *p <= '9') {
            	width = width * 10 + (*p - '0');
            	p++;
            }

            switch (*p) {
            case 'd': {
            	int val = __builtin_va_arg(args, int);
            	int is_negative = val < 0;
            	if (is_negative) val = -val;

            	my_utoa_dec((unsigned int)val, num_buf);
            	size_t len = strlen(num_buf) + (is_negative ? 1 : 0);

				while ((int)len < width && (size_t)(out - out_buf) < max_len - 1) {
					*out++ = ' ';
					len++;
				}

				if (is_negative && (size_t)(out - out_buf) < max_len - 1) {
					*out++ = '-';
				}

				for (char *n = num_buf; *n && (size_t)(out - out_buf) < max_len - 1; ++n)
					*out++ = *n;

				break;
            }
                case 'x': {
                    unsigned int val = __builtin_va_arg(args, unsigned int);
                    my_utoa_hex(val, num_buf);
                    for (char *n = num_buf; *n && (size_t)(out - out_buf) < max_len - 1; ++n)
                        *out++ = *n;
                    break;
                }
                case 's': {
                    char *str = __builtin_va_arg(args, char*);
                    while (*str && (size_t)(out - out_buf) < max_len - 1)
                        *out++ = *str++;
                    break;
                }
                case 'c': {
                    char ch = (char)__builtin_va_arg(args, int);
                    *out++ = ch;
                    break;
                }
                default:
                    *out++ = '%';
                    *out++ = *p;
            }
        } else {
            *out++ = *p;
        }
        p++;
    }

    *out = '\0';
    return (int)(out - out_buf);
}



void serial_print(char const * msg)
{

	// Uart interrupt
//	SuspendAllInterrupts();
//	HAL_UART_Transmit_IT(&husart2, (uint8_t *)msg, strlen(msg));
//	ResumeAllInterrupts();

	// Uart polling
	HAL_UART_Transmit(&husart2, (uint8_t *)msg, strlen(msg), HAL_MAX_DELAY);
}


void my_printf(const char *fmt, ...)
{
    char buf[128];

    __builtin_va_list args;
    __builtin_va_start(args, fmt);
    my_format(buf, sizeof(buf), fmt, args);
    __builtin_va_end(args);

    serial_print(buf);
}

