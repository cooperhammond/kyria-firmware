#!/bin/sh
# This file automates flashing the kyria keyboard from a WSL terminal

COMMANDS=$(cat <<-END
    cd C:\Users\C23Cooper.Hammond\AppData\Local\QMK\QMK Toolbox\0.0.21 &&
    avrdude.exe avrdude.exe -p atmega32u4 -c avr109 -U flash:w:C:\Users\C23Cooper.Hammond\qmk_firmware\kyria_rev1_cooperhammond.hex:i -P COM6

END
)

cmd.exe /c $COMMANDS