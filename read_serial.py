# read_serial.py
import serial
import time

RED = '\033[0;31m'
YELLOW = '\033[1;33m'
RESET = '\033[0m'

INACTIVITY_TIMEOUT = 2  # seconds
PORTS_TO_TRY = ["/dev/ttyUSB0", "/dev/ttyACM0"] # By this order
BAUDRATE = 115200

ser = None
for port in PORTS_TO_TRY:
    try:
        ser = serial.Serial(port, BAUDRATE, timeout=1)
        print(f"{YELLOW}[INFO]{RESET} Connected to {port}")
        break
    except serial.SerialException:
        continue

if not ser:
    print(f"{RED}[ERROR]{RESET} Ports not available (USB0 / ACM0).")
    exit(1)

try:
    with ser, open("uart_output.txt", "wb") as f:
        last_data_time = time.time()

        while True:
            data = ser.read(64)
            if data:
                f.write(data)
                print(data.decode(errors='ignore'), end='')
                last_data_time = time.time()
            elif time.time() - last_data_time > INACTIVITY_TIMEOUT:
                print(f"\n{YELLOW}[INFO]{RESET} Inactive for {INACTIVITY_TIMEOUT} seconds. Closing.")
                break

except serial.SerialException as e:
    print(f"{RED}[ERROR]{RESET} Problem with serial port: {e}")
