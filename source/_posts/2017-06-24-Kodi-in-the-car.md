---
title: Kodi in the car
date: 2017-06-24 19:16:11
tags:
	- kodi
	- raspberry pi
---

I setup a raspberry pi running kodi: librelec in my car, this is how I did it.

<!-- more --> 

I live in the sticks, so I do a lot of driving with the kids. I've been burning DVD's for the kids, but it's such a pain in the ass to author DVDs and they get scratched constantly. So, I decided to make a mobile video player from a raspberry pi.

Requirements to my build
 - Easy to add new movies
 - Easy to control from the car
 - Automatic playback, and resuming

Here's a pic of my final output: 

### Parts

A lot of these items, you may already own so just get creative here
    - [Vilros Raspberry Pi 3 Basic Starter Kit, Black Case](https://www.amazon.com/gp/product/B01DMFQZXK/ref=oh_aui_detailpage_o07_s01?ie=UTF8&psc=1) 
        - This is the one I bought, but it doesnt matter which one. Just make sure you use a raspberry pi 3, anything earlier is too slow.
        - This kit comes with a case, charger and heat sinks
    - [3.5mm Plug (4 Pole) To 3 RCA](https://www.amazon.com/gp/product/B0007V6JCK/ref=oh_aui_detailpage_o09_s00?ie=UTF8&psc=1)
        - I used one I came with my camcorder, so I didnt buy this 
    - [2.5 inch HDD](https://www.amazon.com/gp/product/B01LYNQXCP/ref=oh_aui_detailpage_o07_s00?ie=UTF8&psc=1)
        - If you have an old laptop around, you can pull out the hard disk and use it for this. I chose a laptop HDD because of the small physical size and high capacity
    - [microSDHC drive](https://www.amazon.com/gp/product/B010Q57T02/ref=oh_aui_detailpage_o07_s00?ie=UTF8&psc=1)
        - Libreelec says a 8gb minimum, but a 16GB disk is safer.
    - [SATA to USB Cable](https://www.amazon.com/MMNNE-Drive-Adapter-Cable-Supply/dp/B01M03148F/ref=sr_1_45)
        - You want to be sure that this adapter can pass enough power to the Pi. Either buy an externally powered adapter or use one like above that draws power from 2 usb ports.

Miscellaneous hardware purchased at my local hardware store
    - Wooden Craft board
    - Wire
    - rocker switch
    - extension cord
    - machine screws

### Libreelec

It's super easy to install libreelec, so I won't go over that. You basically install it on the SD card, then plug the SD card into the Pi, and boot it up. Here are the [installation instructions](https://libreelec.tv/downloads/)

At this point you should have LibreElec installed on the Pi, with a virgin kodi installation running. You want to plug your pi into your TV at home until you get everything configured. THe last step will be to bring it into the car.

THe first thing we have to do is configure the Pi to use composite output instead of HDMI. In my honda Pilot, I have AV ports.


### Build


install libre
configure composite out
setup external hdd
metadata
remote control
boot scripts
portability (the physical build)

