# Optional CAD parts
These are parts that have been designed as addons and additional parts for the open source rover. Some of these will be eventually included into build doc instructions. 

These 3D printed parts were designed to be printed in PLA on the Raise 3D printer, and as such the tolerances/dimensions are designed to print well on that specific printer. Your indivindual printer may very on how it prints these based on individual settings, however they should be designed such that any modern converntional printer can complete the parts. 


## Folder Structure
Each of the folders in here contains a different file type, which is dependant on the manufacturing process used to create the part. The folders are as follows:

  * DXF - 2 dimensional part files for items to be laser cut out of acrylic
  * STL - 3 dimensional part files for items to be 3D printed. 
  * SolidWorks - Native solidworks CAD files used to create the parts
  * STEP - Generic CAD files to open in programs not solidworks

## Part Overview
Every part has a SolidWorks and STEP file associated with it, in case you wish to make modifications. In general most parts are designed to use heat set inserts from McMaster Carr, which allow you to add metal threads to 3D printed parts.

[https://www.mcmaster.com/heat-set-inserts](https://www.mcmaster.com/heat-set-inserts)

I'll give a breif description of the each of the parts as well as list any items that are necessary for that part.

### 3D printed parts
  * Battery holder - Clamps for the batteries, to be held against the side walls of the body/chassis. 
    * Requires - PCB update probably to free up some space inside your rover.
    * Uses #6 - heat set inserts (short)
  * Bearing block - Blocks to bolt onto the back of the Servocity bearing pillow blocks. I use these instead of hex nuts on the back of the pillow blocks in the Rocker-bogie
    * Uses #6 - heat set inserts (short)
  * cap_base - Motor mount cover for pololu corner steering motors (to be updated to servo city corner steering motor soon)
    * Uses #6 - heat set inserts (short)
  * cap_with_jpl - Motor cap with JPL embossed on the side
  * cap_without_jpl - Motor caps that are pure cylinder
  * div-piv mounting block - Mounting block for the 0.5 in clamping hub to attach the differential pivot on the rocker-bogie arms. This piece will help level out the body of the rover instead of it being slanted
    * Uses #6 - heat set inserts (short)
  * head base - Redesign of the LED screen head mount, printed in one single large piece
    * Uses M2.5 - heat set inserts (short)
    * Requires - PCB Update to run Arduino in LED head
    * Requires - Arduino plate (laser cut file)
  * Sub-d female bottom - Sub-D mounting piece to have a connector between the rover body and head, at the PVC clamping hub at the neck. This allows you to remove the LED screen.
    * Uses #6 - heat set inserts (short)
    * Uses #4 - heat set inserts (short)
    * Requires - sub-d connector, female [https://www.digikey.com/product-detail/en/assmann-wsw-components/A-DF-09-LL-Z/AE11063-ND/5051922](https://www.digikey.com/product-detail/en/assmann-wsw-components/A-DF-09-LL-Z/AE11063-ND/5051922)
    * Requires - Sub-d male top (3D printed piece)
    * Requires - PCB update to reduce number of cables ran to LED screen
  * Sub-d male top - Sub-D mounting piece to have a connector between the rover body and head, at the PVC clamping hub at the neck. This allows you to remove the LED screen.
    * Uses #6 - heat set inserts (short)
    * Uses #4 - heat set inserts (short)
    * Requires - [https://www.digikey.com/product-detail/en/assmann-wsw-components/A-DS-09-LL-Z/AE10972-ND/1241781](https://www.digikey.com/product-detail/en/assmann-wsw-components/A-DS-09-LL-Z/AE10972-ND/1241781)
    * Requires - Sub-d female bottom (3D printed piece)
    * Requires - PCB Update to reduce number of cables ran to LED screen
  * Turn buckle holder - Replaces the 5 hole aluminum beams and drilling process to mount the differential pivot by giving a 3D printed cap (recommended to use adhesive to attach it though)
    * Uses #4 - heat set inserts
  * USB hub 4pos lid - Lid for 4 position powered USB hub for RPi USB to be accessible outside the robot.
    * Uses M1.6 heat set inserts (short)
    * Requires - [https://www.amazon.com/Anker-Ultra-Slim-Portable-Adapter-Notebook/dp/B0192LPK5M/ref=sr_1_7?ie=UTF8&qid=1549577176&sr=8-7&keywords=external+power++usb+hub](https://www.amazon.com/Anker-Ultra-Slim-Portable-Adapter-Notebook/dp/B0192LPK5M/ref=sr_1_7?ie=UTF8&qid=1549577176&sr=8-7&keywords=external+power++usb+hub)
    * Requires - front panel (laser cut part)
  * USB hub 4pos - Base for 4 position powered USB hub for RPi USB to be accessible outside the robot.
    * Uses M1.6 heat set inserts (short)
    * Requires - [https://www.amazon.com/Anker-Ultra-Slim-Portable-Adapter-Notebook/dp/B0192LPK5M/ref=sr_1_7?ie=UTF8&qid=1549577176&sr=8-7&keywords=external+power++usb+hub](https://www.amazon.com/Anker-Ultra-Slim-Portable-Adapter-Notebook/dp/B0192LPK5M/ref=sr_1_7?ie=UTF8&qid=1549577176&sr=8-7&keywords=external+power++usb+hub)
    * Requires - front panel (laser cut part)
  * USB hub 7pos - Powered USB hub to connect Roboclaws debug micro USB line to outside of robot with one single cable
    * Uses #6 - heat set inserts (short)
    * Requires - [https://www.amazon.com/Anker-7-Port-Adapter-Charging-iPhone/dp/B014ZQ07NE/ref=sr_1_15?ie=UTF8&qid=1549577308&sr=8-15&keywords=usb+hub](https://www.amazon.com/Anker-7-Port-Adapter-Charging-iPhone/dp/B014ZQ07NE/ref=sr_1_15?ie=UTF8&qid=1549577308&sr=8-15&keywords=usb+hub)
    * Requires - back panel (laser cut part)

### Laser cut parts
These were all laser cut out of 1/8 inch acrylic

  * Arduino plate - Mounts the Arduino in the Head to the 3D printed head base piece
    * Requires - PCB Update
    * Requires - head base
  * Head back panel - Back panel to the head - base part
    * Requires - head base
  * Front panel - Front panel for main rover chassis, designed to hold the 4 pos USB hub
    * Requires - USB hub 4 pos
  * Back panel - Back panel for main rover chassis, designed to hold the switch, volt meter, 7 pos USB hub, and powerpole connectors for battery charging
    * Requires - USB hub 7 pos
