---
title: Ring doorbell Kodi add-on
date: 2017-06-24 16:54:18
tags: 
	- kodi
	- home automation
---

Kodi integration of Ring.com video.

<!-- more --> 

### Ring

I recently purchased a ring doorbell, and a ring floodlight. I've had geovision cameras for over 10 years now, but Ring really wraps it up into neat package with a very high Wife Approval Factor.

Since I've had the Ring, I've been looking for ways to hack it since there's no public API. Luckily, a few devs have started work to reverse engineer the web services, specifically [python-ring-doorbell](https://github.com/tchellomello/python-ring-doorbell) and [doorbot in node.js](https://github.com/davglass/doorbot).

With either of these libraries, we can pull recorded videos from ring's aws-hosted s3 bucket. Of course, this requires a ring.com subscription and personally, I don't mind paying 30$/year for offsite recordings.

I've spent a weekend trying to get a live video and audio feed from the doorbell. Ring uses SIP to communicate with its cameras, along with some kind of self expiring SIP address. If interested, quite a few devs (including myself) are trying to find a SIP library to extract feeds. You can follow and contribute on the [github issue](https://github.com/tchellomello/python-ring-doorbell/issues/23).

#### Kodi

Live video would be so awesome in Kodi, but impossible until someone reverse engineers the SIP format. Playback of recorded videos is very possible, and really easy to build thanks to [tchellomello's](https://github.com/tchellomello/) python library.

I wrapped up the library into the Ring Video Doorbell kodi add-on. The addon will merge all doorbell's, stickup cams and floodlights into one list view, with all motion, live view, and ding events. Then you just click the event, and it plays the video. 

[Kodi forum thread](https://forum.kodi.tv/showthread.php?tid=317192)

### Download

I setup a [kodi repository](https://github.com/jlippold/repository.jlippold), you can download a zip of the repo [here](https://github.com/jlippold/repository.jlippold/releases/download/Repo/repository.jlippold-1.0.0.zip). Once you install the repo, then you can install the add-on and get updates. The source code of the add-on is [here](https://github.com/jlippold/repository.jlippold/tree/master/plugin.video.ring_doorbell).


### Screenshots

[Ring 1](/pub/blog/img/ring-0.jpg)
![image](/pub/blog/img/ring-0.jpg)

[Ring 2](/pub/blog/img/ring-1.jpg)
![image](/pub/blog/img/ring-1.jpg)

[Ring 3](/pub/blog/img/ring-2.jpg)
![image](/pub/blog/img/ring-2.jpg)




