## Components

### LM358

- Why do we use these?
    - for buffering the raw encoder signals
    - [voltage follower layout](https://www.allaboutcircuits.com/video-tutorials/op-amp-applications-voltage-follower)
- [datasheet](https://www.ti.com/lit/ds/symlink/lm358.pdf?ts=1619014149430&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FLM358)
    - see table 6-1 for pin functions

### Roboclaw

- [Datasheet](https://downloads.basicmicro.com/docs/roboclaw_datasheet_2x30A.pdf](https://downloads.basicmicro.com/docs/roboclaw_datasheet_2x30A.pdf)
    - see page 5 and 6
- Pins
    - We don't use the encoder power (+/-, "PWR1/2" in the jpl robotics library) connections on the roboclaw pin header because we supply this via the screw terminals
    
### Raspberry Pi

- [Datasheet](https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf)
- For EEPROM ID SD and SC
    - See page 9 of the datasheet
    - SD is i2c clock (so this pin is set to output)
    - SD is i2c data (so this pin is set to bi-directional)

### Voltage regulators

- 12V
    - [Datasheet](https://www.pololu.com/product/2855)
- 5V
    - [Datasheet](https://www.pololu.com/product/2851)

## Notes on the schematic (Control Board.sch)
    
- for library part ED2989-ND-USB, made VCC and GND passive because these are _alternative_ ways to power the +5V bus, and the electrical rules check-in kicad doesn't allow multiple power output sources for the same bus. Normally this bus is powered by the battery and voltage regulators.
- have to use a PWR_FLAG on the +BATT bus because this power net is not output from the battery directly, it's only available after a series of passive components (diode, fuse)
- also, doesn't really make sense to mark the battery connector ground pin as a "power output", so use PWR_FLAG for GND bus as well
- the 3.3v bus is not actaully powered; RPi's get power on the 5v bus