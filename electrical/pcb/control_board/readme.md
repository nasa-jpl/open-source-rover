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

### Inter-board connectors

- Male
    - PEC10DAAN
    - [Digikey](https://www.digikey.com/en/products/detail/PEC10DAAN/S2012E-10-ND/860601?utm_campaign=buynow&utm_medium=aggregator&curr=usd&utm_source=octopart)
    - [Summary drawing](https://drawings-pdf.s3.amazonaws.com/C10419.pdf)
- Female
    - PPTC102LFBN-RC
    - [Digikey](https://www.digikey.com/en/products/detail/PPTC102LFBN-RC/S7078-ND/810216?utm_campaign=buynow&utm_medium=aggregator&curr=usd&utm_source=octopart)
    - [Summary drawing](https://drawings-pdf.s3.amazonaws.com/10492.pdf)

### Secondary E-stop (e_stop 2) header

- PPTC021LFBN-RC
- [Digikey](https://www.digikey.com/en/products/detail/PPTC021LFBN-RC/S7000-ND/810142?utm_campaign=buynow&utm_medium=aggregator&curr=usd&utm_source=octopart)
- [Summary drawing](https://drawings-pdf.s3.amazonaws.com/10492.pdf)


## Notes on the schematic (Control Board.sch)
    
- for library part ED2989-ND-USB, made VCC and GND passive because these are _alternative_ ways to power the +5V bus, and the electrical rules check-in kicad doesn't allow multiple power output sources for the same bus. Normally this bus is powered by the battery and voltage regulators.
- have to use a PWR_FLAG on the +BATT bus because this power net is not output from the battery directly, it's only available after a series of passive components (diode, fuse)
- also, doesn't really make sense to mark the battery connector ground pin as a "power output", so use PWR_FLAG for GND bus as well
- the 3.3v bus is not actaully powered; RPi's get power on the 5v bus
- We need separate power buses on the two boards, thus we created different power port symbols (e.g. the little triangle that says "GND")
    - the ports on the motor board are post-fixed "\_motor"
    - the ports on the brain board are post-fixed "\_brain"
    - We need different power ports because they function as a "global label" that can be seen across all sheets in a single schematic. So it's important to have different names. 
    - Note it's different for "net labels" - those are local in scope, to the given sheet
    - see https://forum.kicad.info/t/understanding-power-port-components/8945/14 for more background

## Important things to keep in mind when updating schematics

- make sure you're being cleanly about updating symbols in the schematic
    - you should update them in the JPL_Robotics_Lib.lib file, then pull those changes into the local schematic file in kicad
- if kicad creates "cache" or "rescue" libarary files, think before committing those to git. 
    - cache files _should_ be okay, but that's unclear. Ask someone before adding those to git versioning.
    - rescue files _should not_ be commited - but that's also unclear. Ask someone before adding those to git versioning.
- Reference Designators
    - it's important to retain the same reference designators (e.g. J12, U1, C3, etc) when revving the PCB - a lot of the discussion in the open source rover forums have referenced components by the reference designator, so that's a useful well-known name.
    - whenever annotating reference designators in kicad (with `Annotate Schematic...` ), make sure to check `keep existing annotations`
    - of course, if new components are added to the PCB schematic, these will need new completely designators. It's fine to use auto numbering for these.
    - in the worst case, you can always go into the .sch file and fix things by hand in a text editor

