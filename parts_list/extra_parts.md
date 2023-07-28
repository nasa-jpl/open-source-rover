## Extra Parts

These parts you may either already have, depend on where you're located for a good deal, depend on personal preference, or are optional. As a result they are not accounted for in the total price.

**Note**: Make sure to go through the list below to make sure you have everything you need.

### A gamepad or remote controller

This is technically not a requirement, especially if you're planning on making the rover autonomous, but is highly recommended. Any USB based option should work here.

Some options are getting an XBox controller with a usb dongle or for longer range; the pricier [Spektrum WS2000](https://www.spektrumrc.com/product/ws2000-wireless-simulator-usb-dongle/SPMWS2000.html) with [Spektrum DXs](https://www.spektrumrc.com/product/dxs-transmitter-only/SPMR1010.html) transmitter. Many alternatives exist and will work ok.

## Standoff kit for the boards

You'll want these to mount the PCBs to the rover body. Many options exist here, for example [this kit](https://www.amazon.com/HELIFOUNER-Spacers-Standoffs-Assortment-Tweezers/dp/B0B25BKNKK/ref=sr_1_8?crid=368EQQU16L7YW&keywords=m2.5+spacer+standoff+kit&qid=1679272746&sprefix=m2.5+spacer+standoff+kit%2Caps%2C159&sr=8-8).

## Wiring

We recommend getting spools of 18AWG (red and black), 20AWG (white, red, black) and 22AWG wire (4 colors). The wire has to be stranded and not solid core as it will bend during operation. For each wire type, if possible, get ribbon cable where each wire is attached to another one which will help with keeping wiring clean and manageable.

To protect the cables from chafing against the sharp aluminum parts, we recommend [cable sleeves](https://www.amazon.com/Best-Sellers-Cable-Sleeves/zgbs/electronics/6577542011).
You can also use [grommets](https://www.gobilda.com/plastic-grommet-14-1-12-pack/), filing down the sharp edges or burs, applying tape to the edges, or using expandable wire sleeving.

Heat shrink is a must have for keeping cables nice and snug.

Take a look at the [wiring overview](../electrical/wiring/README.md#overview) to get an idea of what you will be building. You'll need crimps and connectors for DuPont, Bullet, XT30, and JST styles. Crimping doesn't have a 100% success rate, so we recommend getting extras or buying a kit if you're planning on using them for other projects as well. Here are some options for each set you need:

* A Raspberry Pi ribbon cable, e.g. from [Adafruit](https://www.adafruit.com/product/1988) but available in many places. While you could use header pins for this connection, the cable is the cleanest solution
* XT30 connectors for the power connections on the motor PCB.
  * DIY options, either:
    * [5 pairs M/F from Gobilda](https://www.gobilda.com/xt30-connector-pack-fh-mc-x-5-mh-fc-x-5/)
    * [20 pairs M/F from Amazon](https://www.amazon.com/gp/product/B0875MBLNH/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
    * [1 pair M/F from Digikey](https://www.digikey.com/en/products/detail/dfrobot/FIT0586/9559255)
  * premade from GoBilda: 2x [male leads](https://www.gobilda.com/xt30-lead-fh-mc-300mm-length/), 2x [female leads](https://www.gobilda.com/xt30-lead-mh-fc-300mm-length/)
* 6 4-pin JST connections:
  * 6x [premade JST to jumper wires from GoBilda](https://www.gobilda.com/encoder-breakout-cable-4-pos-jst-xh-mh-fc-to-4-x-1-pos-tjc8-mh-fc-300mm-length/)
  * [JST connector kit](https://www.amazon.com/460PCS-XH2-54-Connector-Terminal-Connectors/dp/B09DBGVX5C/ref=sr_1_1_sspa?crid=2NX4ZXCFZGOCK&keywords=jst+connector+kit+4+pin&qid=1690482910&sprefix=jst+connector+kit+4+pin%2Caps%2C140&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)
* 4 3pin DuPont and 8 4pin DuPont connectors
  * [DuPont connector kit](https://www.amazon.com/Twidec-Connector-Terminals-Crimping-Connectors/dp/B0B152WRSW/ref=sr_1_1_sspa?keywords=dupont+connector+kit&qid=1690482984&sprefix=DUPont%2Caps%2C190&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1)
  * Buy precrimped wires+connectors from various sources
* 12 female 3.5mm Bullet connectors. Make sure you're getting the right size connectors and ones that come insulated.
  * GoBilda has [various combinations](https://www.gobilda.com/connector-style-3-5mm-bullet/) available that you can cut/solder/crimp. They use 16AWG wire which is on the thicker side. Make sure you're getting the Female connector type.
  * Buy a DIY kit
    * The GoBilda [connector pack](https://www.gobilda.com/3-5mm-bullet-connector-pack-mh-fc-x-5-fh-mc-x-5/) is good quality but only has 5 female connectors so you would need 3 of them.
    * [from Amazon](https://www.amazon.com/Davitu-Electrical-Equipments-Supplies-Transparent/dp/B089W96QW1/ref=sr_1_6?keywords=3.5mm+bullet+connector+kit&qid=1690483474&sprefix=bullet+connector+kit%2Caps%2C152&sr=8-6) (insulators are flimsy but ok)

## Threadlocker

You will want threadlocker for several screws so that they don't unscrew themselves while driving. You can find this everywhere, for example at [Gobilda](https://www.gobilda.com/loctite-threadlocker-blue-242-6ml/). Make sure you get blue as opposed to red so it's not permanent.

## Tools

* A [combination nut driver](https://www.gobilda.com/7mm-combination-nut-driver/) will save you time screwing and unscrewing (lock)nuts inside the body.
* You'll need 2.5mm and 3mm hex keys for the button and socket M4 screws respectively. For example [Gobilda 2.5](https://www.gobilda.com/wera-tools-2-5mm-ball-end-hex-plus-l-key/) and [Gobilda 3](https://www.gobilda.com/wera-tools-3mm-ball-end-hex-plus-l-key/).
* A crimping tool for Molex, JST, DuPont connectors. A regular crimping tool should be able to handle all of these without issue. While you can technically complete a crimp without a crimping tool, it often won't be as consistent or strong as with a proper crimper. Various connector sets come with a decent crimper.

## Electrical

___
(Some of these items below can be put into a separate spreadsheet of misc electronics)

* Voltage Regulators:

  - **1 X** 5V Regulator: [Pololu]https://www.pololu.com/product/2855 (In Limited Supply)
  - **1 X** 12V Regulator: [Pololu](https://www.pololu.com/product/2858)

* **1 X** PCA9685 corner: [Mouser](https://www.mouser.com/ProductDetail/Adafruit/815?qs=GURawfaeGuCGKbWyy9179Q%3D%3D)

* **3 X** Roboclaw 2x7A Motor Controller [Basic Micro](https://www.basicmicro.com/Roboclaw-2x7A-Motor-Controller_p_55.html)

* **1 X** Power Measurement Unit INA260: Sold out on DigiKey, possible replacements are on [Adafruit](https://www.adafruit.com/product/4226?gclid=CjwKCAjw5dqgBhBNEiwA7PryaLOm_zC9GhlzRH1NwN4bSRwDg84sIhSh3LEqTOrIvQ3j_kRBscTAYhoCBOQQAvD_BwE)

* **1 X** PCA9685 corner motor driver [Mouser](https://www.mouser.com/ProductDetail/Adafruit/815?qs=GURawfaeGuCGKbWyy9179Q%3D%3D)



___



* DC power meter: [Amazon](https://www.amazon.com/gp/product/B017FSED9I/). This LCD display reads out current, voltage, power, and energy, and can be put on the back where the rectangular hole is in the laser cut cover. 

* batteries: many options available here. We recommend getting LiPo batteries. You'll need a battery that can provide over 12V, so a 4s battery works well. You can get batteries with various mAh ratings (how many milliAmperes the battery can output for 1 hour). We recommend any option over 4000mAh. Higher capacity comes at a higher cost. You can also get more than one battery and swap them out. The rover can carry them as well.
  * Zeee sells many options [on Amazon](https://www.amazon.com/stores/page/25B7018D-26CC-4E43-BC6D-EFAF737D8F5E?ingress=2&visitId=1b4115fa-2240-424d-a0e6-a466830819ce&ref_=ast_bln) 
  * You'll also need a charger for the battery. Make sure it can support the battery you bought. For the Zeee options, [this model from Amazon](https://www.amazon.com/Hobby-Fans-Professional-Balance-Discharger/dp/B09XC91BWJ/ref=sr_1_6?keywords=LiPo+charger&qid=1690484744&sr=8-6) will work.
  * Consider getting a fireproof battery bag. LiPo batteries are extremely flammable/explosive and a fire caused by a battery is extremely difficult to put out.
  * You'll also need a way to connect your battery to the PCB via a XT30 connector (MH-FC) which depends on the battery you get. Often these come with the charger for the battery
* A Raspberry Pi 3 or 4. Other options may work as well, but we recommend starting here.



# Maintaining the Parts List

Parts can become out of stock or discontinued in the future. In this case, the part list can be modified by editing `parts_list.csv`, which covers all the mechanical parts, `digikey_bom.csv`, which covers most of the electrical part, and `extra_parts.md` to cover the rest. After doing so, you can compile to update the `README.md` file using `csv_to_md.py` (The compilation will also happen automatically with a merge). **Do not** edit `README.md` directly, as it will be overwritten by the compilation process. 