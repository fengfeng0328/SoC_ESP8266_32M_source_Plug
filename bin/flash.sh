#!/bin/bash

esptool.py --chip esp8266 --port /dev/ttyUSB0 --baud 921600 erase_flash

esptool.py --chip esp8266 --port /dev/ttyUSB0 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size 4MB-c1 \
0x3fc000 esp_init_data_default.bin \
0x3fe000 blank.bin                 \
0x00000  boot_v1.6.bin             \
0x01000  upgrade/user1.4096.new.6.bin       
