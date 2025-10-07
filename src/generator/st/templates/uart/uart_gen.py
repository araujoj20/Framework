import json
import sys
import re
import os
from jinja2 import Environment, FileSystemLoader

# Maybe later 
uart_gpio_alternate_map = {
    "STM32F767": "GPIO_AF7_USART3",
    "STM32F407": "GPIO_AF7_USART2",
    "STM32L552": "GPIO_AF8_LPUART1",
    "STM32U575": "GPIO_AF7_USART1"
}

# Convert "PG7" -> ("GPIOG", "GPIO_PIN_7")
def parse_gpio_pin(pin_str):
    match = re.match(r"P([A-Z])(\d+)", pin_str)
    if not match:
        raise ValueError(f"Invalid GPIO pin format: {pin_str}")
    port_letter, pin_number = match.groups()
    gpio_port = f"GPIO{port_letter}"
    gpio_pin = f"GPIO_PIN_{pin_number}"
    return gpio_port, gpio_pin

with open(sys.argv[1]) as f:
    config = json.load(f)

uart_cfg = config["uart"]

# Extract UART parameters
uart_instance = uart_cfg["instance"]
uart_baudrate = uart_cfg["baudrate"]

# Parse UART pins
tx_gpio_port, tx_gpio_pin = parse_gpio_pin(uart_cfg["tx_pin"])
rx_gpio_port, rx_gpio_pin = parse_gpio_pin(uart_cfg["rx_pin"])

# Check if TX and RX are on same GPIO port
if tx_gpio_port != rx_gpio_port:
    print(f"WARNING: TX and RX are on different GPIO ports ({tx_gpio_port} vs {rx_gpio_port})")

board = config["board"]
uart_gpio_alternate = uart_gpio_alternate_map[board]

# Build UART for template
uart = {
    "instance": uart_instance,
    "baudrate": uart_baudrate,
    "tx_gpio_port": tx_gpio_port,
    "rx_gpio_port": rx_gpio_port,
    "tx_gpio_pin": tx_gpio_pin,
    "rx_gpio_pin": rx_gpio_pin,
    "gpio_alternate": uart_gpio_alternate

}

# Render Jinja2 template
script_dir = os.path.dirname(os.path.abspath(__file__))
env = Environment(loader=FileSystemLoader(script_dir))

template_src = env.get_template("uart_src.j2")
with open(f"{sys.argv[2]}/src/uart.c", "w") as f:
    f.write(template_src.render(uart=uart))

template_inc = env.get_template("uart_inc.j2")
with open(f"{sys.argv[2]}/inc/uart.h", "w") as f:
    f.write(template_inc.render(uart=uart))
