# Builders' gallery

OSRs in the wild and under construction! Please [add your rover](#Instructions-for-adding-your-build) and add updates and pictures here as it evolves.

# <ins>V2 Rovers</ins>

## TMUMechE ([TMUMechE](https://github.com/TMUMechE/open-source-rover))
| <image src="images/TMUMechE/RoverPic1.png" height="175"> <image src="images/TMUMechE/RoverPic2.png" height="175"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>

* Project began in January 2024 with a team of 3 seniors studying mechanical engineering at The Master's University, and the help of a senior in computer science
* Intended to be a platform for future classes at The Master's University to build on the work we have started

### modifications
* Check back here for modifications coming soon!

</details>

## Bobert ([Adriel](https://github.com/abust005/open-source-rover))
| <image src="images/bobert/bobert_front.jpg" height="175"> <image src="images/bobert/bobert_side.jpg" height="175"> <image src="images/bobert/bobert_back.jpg" height="175"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>

* Construction started in October 2023 as a first personal dive into robotics 
* Intended as a learning experience, and as a general robotics platform for exploring computer vision and navigation algorithms

### modifications
* **OAK-D + mount**: Bobert has an original run OAK-D from the first Kickstarter for his eyes, plus a custom pan-tilt mount I designed and had printed in nylon with multi-jet fusion (MJF). The mount uses two pancake stepper motors driven my a SPI-controlled stepper driver board
* **Tool rack**: For field maintenance and repair, I've added a small rack using some wooden dowels and some 3D-printed brackets to hold my Wera ratchet in place on Bobert
* **On/off switch mount**: To prevent the on/off switch just flopping around, I've added a small 3D-printed switch mount

</details>

## Raf the Rover ([Achille](https://github.com/Achllle))

| <image src="images/raf/raf_roof_rack.jpg" height="150"> <image src="images/raf/osr_outside.jpg" height="150"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>
  
### background

* This is my second rover! I built the first one [Robert the Rover](#robert-the-rover-achille) in 2019. This version is the original v2 of the OSR, which I lead the mechanical design of.
* It was featured on [Hackaday](https://hackaday.com/2023/09/16/open-source-rover-gets-an-update-for-easier-building/)

### modifications

* I built a roof rack for it so that it could carry stuff around. As you can see from my first rover's mods, I switched to a roof payload holder instead of a trailer cart since that makes doing autonomy easier and lowers the chance of slipping.

</details>

## Samwise ([Eric](https://github.com/ericjunkins))

| <image src="images/samwise/samwise_front.jpg" height="150"> <image src="images/samwise/samwise_side.jpg" height="150"> <image src="images/samwise/ring_bearing.jpg" height="150">|
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>
  
### Background

* This is a custom spin-off of the OSR V2 design, utilizing mostly the same electronics and software stack, but made out of a combination of laser cut aluminum and 3D printing technologies such as MJF, SLA, and SLS. It was inspired by my partner who asked for a ring bearer robot at our wedding, and this project was particularly special to us as I was working on designing the very first Open Source Rover at JPL when we met. 

### Modifications

<table>
  <tr>
    <td width="50%">
      Custom channels, creating the structure and allowing cables to be routed through the interior of the robot, sealing from elements, and keeping cables well protected. 
    </td>
    <td>
      <image src="images/samwise/rocker_bogie_inside.PNG" >
    </td>
  </tr>
  <tr>
    <td width="50%">
      Added a servo and servo mounting block + gears in order to give the head an articulated axis, making it so I could make the head rotate around. Hollow tube supports mounts the head to run cables, and mounts an LCD screen at the top. 
    </td>
    <td>
      <image src="images/samwise/head_pivot_mechanism.PNG">
    </td>
  </tr>
  <tr>
    <td width="50%">
      Wrote a ROS backend + FastAPI, and React frontend to display either a cute face, or diagnostic information about what's happening on the robot. Gui shows things like wheel speeds, servo positions, battery voltage level, and a few error/faults.
    </td>
    <td>
      <image src="images/samwise/gui.PNG">
    </td>
  </tr>
  <tr>
    <td width="50%">
      Added corner latches that swing up/down and attach via magnets, allowing me to lock out the corners so they can't move for transportation. 
    </td>
    <td>
      <image src="images/samwise/corner_stops.jpg">
    </td>
  </tr>
</table>

</details>

# <ins>V1 Rovers</ins>

## JPL Rover

| <image src="images/jpl_rover/rover_at_open_house_1.jpg" height="350"> <image src="images/jpl_rover/rover_at_open_house_2.jpg" height="350"> |
|:-:|
| <image src="images/jpl_rover/jpl_rover_1.jpg" height="350"> <image src="images/jpl_rover/dsub.jpg" height="350"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>
  
* Constructed in 2017, upgraded many times since!
* JPL has used this rover for many different events, from JPL/Mars outreach events, taking it to schools, local robotics clubs, and even a few robotic conferences!
* Maintained by a few different JPL employees over the years
  
### modifications

* Annodization! Before assembly of this version we got the metal pieces annodized a mix of red/black
* Micro D-Sub connectors at each of the rocker-bogies, so that both can be taken off easily and rover can be transported much easier!
  * [micro d-sub male](https://www.digikey.com/en/products/detail/itt-cannon-llc/M83513-03-D04N/2432917)
  * [micro d-sub female](https://www.digikey.com/en/products/detail/itt-cannon-llc/MDM-25SH006B/10491746)
* JPL Beanie! :)
  
</details>

## Robert the Rover ([Achille](https://github.com/Achllle))

| <image src="images/robert/robert1.png" height="150"> <image src="images/robert/robert2.jpg" height="150"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>
  
### background

* I started construction in December 2019. Robert took his first steps about 3 months later.
* I use the rover for fun,
* I help maintain the two repositories. I'm a robotics engineer by training and happy to help with anyone stuck or with ideas. The best way to reach me is via Slack.

### modifications

* **bigger battery**: Robert runs off of [this 9Ah LiPo battery](https://www.amazon.com/gp/product/B07YP73LMX/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
* **RC**: For outdoor roving, I use a long-range [transmitter](https://www.amazon.com/gp/product/B08CKWZWPR/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1) and [receiver](https://www.amazon.com/gp/product/B07ZK1R32H/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1) from Spektrum.
* **sensor stack**: I mounted a lidar on top of my rover to allow for 2D mapping, localization, and navigation. I also have mounted (variations of) two monocular cameras, an IMU, and depth cameras to it. Details in [my blog post](https://www.freedomrobotics.ai/blog/how-to-pick-navigation-sensors-for-autonomous-mobile-robot).
* **toy trailer**: I bought this [toy trailer](https://www.amazon.com/gp/product/B0002HZQGO/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1) so that Robert can carry a payload. I attached it to Robert using a repurposed wrench and a collar clamp. It's not very robust but [it does the trick](https://youtu.be/caqx-S-_gv8)!
* **handle**: I used a strong piece of rope and a small piece of PCV tubing (handle) to lift the rover off the ground so I could carry it up and down stairs.
  
### blogs

  1. [Deploying on Mars: NASA-JPL Open Source Rover](https://www.freedomrobotics.ai/blog/building-the-nasa-jpl-open-source-rover)
  2. [Deploying on Mars: How to Pick Sensors to Enable Navigation for Your Autonomous Mobile Robot (AMR)
](https://www.freedomrobotics.ai/blog/how-to-pick-navigation-sensors-for-autonomous-mobile-robot)
  3. [Deploying on Mars: Rock solid Odometry for Wheeled Robots
](https://www.freedomrobotics.ai/blog/tuning-odometry-for-wheeled-robots)
  4. [Deploying on Mars: Rock solid Odometry for Wheeled Robots](https://www.freedomrobotics.ai/blog/deploying-on-mars-mapping-localization)

</details>

## Paddy-Rover ([Kit](github.com/apollokit))

| <image src="images/paddy/paddy1.jpg" height="150"> <image src="images/paddy/paddy2.png" height="150"> |
|:-:|

<details>
  <summary>Expand to learn more about this build!</summary>

  * I built Paddy through the winter of 2019-2020. She was (kinda) a covid baby!
  * It's been a great learning experience building and maintaining Paddy.
  * I help maintain the two repositories!
  
</details>
  
## Sinuhe's rover

| <image src="images/sinuhe/sinuhe1.png" height="250"> [<image src="images/sinuhe/video_icon.png" height="250">](https://youtu.be/jEhQtxJgvEM) |
|:-:|
  
<details>
  <summary>Expand to learn more about this build!</summary>

  This project help us get through covid year 2020!
  
  | <image src="images/sinuhe/electrical1.png" height="250"> <image src="images/sinuhe/electrical2.png" height="250"> |
  |:-:|
  
</details>
  
## Alex' rover
  
https://user-images.githubusercontent.com/14060847/160306700-88ff7ab6-efe0-483a-8637-53a57874fb1f.mp4
  
## Roverto ([toebes](github.com/toebes))

| <image src="images/roverto/roverto.jpg" height="150"> <image src="images/roverto/roverto_climbing_wheel.jpg" height="150"> |
|:-:|
<details>
 <summary>Expand to learn more about this build!</summary>

Built by the [Cardinal Gibbons Robotics](https://www.cghsnc.org/campuslife/co-curricular/robotics) team for use at outreach events.  Roverto has been to a few places, but is most at home on our [Mars Map courtesy of the Aldrin Foundation](https://aldrinfoundation.org/giant-mars-map/).  With it Roverto has been to:

* Astronomy days at the [North Carolina Museum of Natural Sciences](https://naturalsciences.org/) Three times.  One time Roverto had the opportunity to try and drive over a full size Curiosity wheel.  The last time we rand that event, there were over 14,000 attendees.
* [Galaxycon](https://galaxycon.com/pages/raleigh) Twice!
* The [North Carolina Transportation Museum](https://www.nctransportationmuseum.org/)
* Many events at [Cardinal Gibbons High School](https://www.cghsnc.org/).

### Enhancements

* The drive motors have been replaced by [Rev Robotics Core Hex Motors](https://www.revrobotics.com/rev-41-1300/) to give better torque
* The LED display has been updated with a [10" HDMI Touchscreen](https://www.sunfounder.com/products/10inch-touchscreen-for-raspberrypi).  We have a custom HTML web page which shows Roverto's face.
* Roverto has a custom development stand that lifts all the wheels off the ground for easy testing.

### Media
* [@robotics_cghsnc](https://twitter.com/robotics_cghsnc)

</details>

## USAi Labs AUDACITY ([JHPHELAN](github.com/JHPHELAN))

| <image src="images/AUDACITY/Houston-Robotics-Fidelity cropped.jpg" height="150"> <image src="images/AUDACITY/IMG_4751.JPG" height="150"> <image src="images/AUDACITY/IMG_3927.JPG" height="150"> <image src="images/AUDACITY/IMG_3931.JPG" height="150"> |
|:-:|
| [![AUDACITY 01 video](https://img.youtube.com/vi/n0Rx8EbABIY/0.jpg)](https://www.youtube.com/watch?v=n0Rx8EbABIY) |

<details>
  <summary>Expand to learn more about this build!</summary>
  
  ### Background
  * Started August 2019 as soon as we heard about the release of the NASA-JPL Open Source Rover
  * Named first version "Fidelity" to be as close to the NASA-JPL version as possible
  * Once initial parts had arrived, had a "part picking party" 
  * - with instructions from the manual for various sub-assemblies passed out, ziplock bagged & labeled
  * Sub-assemblies then assembled in groups
  * Had first roll-out almost exactly 1 year later after multiple delays, modifications, and frustrations as seen in .mp4 above
  
  ### Modifications
  * New version of rover named "AUDACITY" to be as boldly upgraded as possible to ultimately be autonomous
  * Raspberry Pi 3 >> Raspberry Pi 4b 4GB.  Perhaps later >> Jetson NANO to permit onboard AI "on the edge"
  * Raspbian >> Ubuntu 20.04
  * hand-coded Python >> ROS >> ROS2 Foxy
  * Upgraded PCB.  Looking forward to Rev F!
  * Upgraded drive & steering motors
  * Custom front/back acrylic panels
  * Emergency "Bop to Stop" switch.  Abandoned to free up room
  * Key fob remote power "Kill Switch" for range safety.  
  * - to substitue RoboClaw e-stop pins in future to stop motors but not CPU
  * Arduino driven LED "head" >> onboard LCD monitor - work in progress
  * Addition of cameras: Picamera, USB camera, Intel RealSense D450 Depthcamera, OAK-D Depthcamera |
  * - all works in progress and fraught with frustrations
  * Front bright LED "headlights" wired in parallel with drive motors.  Since polarity matters, only on when driving forward
  * Plan steering motors >> servos at some point

  ### External links
  1. [USAi Labs and Houston Community College  First rollout of rover](https://www.youtube.com/watch?v=2Wdgss0q63s)

</details>

## Instructions for adding your build

1. We'll be needing a little bit of git skills here. Although not strictly necessary, it helps to take a look at some tutorials on contributing using git & GitHub. Here are the basic steps.
   1. install git on your computer. On Linux, that means `sudo apt-get install git`
   2. Fork this repository by clicking the `Fork` button in the top right corner of the GitHub page.
   3. 'Clone' your fork to your computer by clicking the green `Code` button and copying the link. Type in `git clone` into your terminal and paste the link you just copied.
   4. Create a new branch and switch to it. `git checkout -b ourrovername_gallery`
   5. You're ready to start making changes! You can use any text editor of your liking, like [VS code](https://code.visualstudio.com/).
2. copy over someone else's section and adjust it to include your build's information. Add your entry to the top of the relevant section (V1 or V2). To keep this compact, add any text and details to the collapsible section (within the `<details> </details>` tags).
3. Create a new folder within [the images folder](./images) and add your rover's pictures to it.
4. Change the image links to point to your images. The format for that is `image src="images/your_folder_name/your_picture.jpg"`.
5. Commit your changes with git.
   1. in the terminal, navigate to this folder. `git status` should show that there are changes and new files.
   2. use `git add folder_name/file_name` for each change you want to include to stage those files.
   3. Commit these changes: `git commit -m "Adding my rover to the OSR gallery!"`
   4. Upload them using `git push origin ourrovername_gallery`, replacing `ourrovername_gallery` with the branch name you created earlier.
6. Create a Pull Request (PR) to suggest merging your code into the main branch.
   1. Navigate to the repository's [pull request page](https://github.com/nasa-jpl/open-source-rover/pulls) on GitHub. Click 'New pull request'.
   2. click 'compare across forks'.
   3. Select your fork from the head repository dropdown and pick your branch.
   4. click 'create pull request'. GitHub will take you to a page where you can create a title of your suggested changes and a description.
7. Wait for a maintainer to review your changes. They might ask you to make changes if something doesn't look right. Once the PR has been greenlighted, your changes will be added to the main branch!
