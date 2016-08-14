---
title: Coco for DirecTV
date: 2016-08-13 23:02:28
layout: content
---

Coco was my first Objective-C application. I've previously written a bunch of web applications in javascript with Cordova/PhoneGap but I really pushed the limitations of that platform, so I wanted to go native.

The goal was to make an app that would make it easier to manage DirecTV, and use some of those awesome blurs and transparencies that iOS9 offers. DirecTV has a [unpublished API](https://github.com/whitlockjc/directv-remote-api) that enabled simple functions like changing channels, but I really wanted to make something that had a full TV guide with imagery. I noticed that the DirecTV website uses an internal API to populate it's guide. That api is written with Node/Express. After some reverse engineering, I was able to pull live channel data, a feat that no other DTV app in the store does.

Lastly, I made a notification center widget for fast channel changing, and a Watch OS app. 

<br />

[![image](/pub/blog/img/IMG_2621.png)](/pub/blog/img/IMG_2621.png) [![image](/pub/blog/img/IMG_2622.png)](/pub/blog/img/IMG_2622.png) [![image](/pub/blog/img/IMG_2624.png)](/pub/blog/img/IMG_2624.png) [![image](/pub/blog/img/IMG_2623.png)](/pub/blog/img/IMG_2623.png)

<br />

<div class="row"><div class="col-lg-2 col-md-4 col-sm-6 col-xs-6"><a href="https://itunes.apple.com/us/app/id998404338?mt=8" target="_blank"><img src="/pub/blog/img/app_store.svg"></a></div><div class="col-lg-2 col-md-4 col-sm-6 col-xs-6"><a title="source code on github" target="_blank" href="https://github.com/jlippold/Coco"><i class="icon icon-github-circled" style="font-size: 42px;"></i></a></div><div class="col-lg-8 col-md-4"></div></div>

<a href="https://github.com/jlippold/Coc"><img style="position: fixed; top: 0; left: 0; border: 0; z-index: 9000" src="https://camo.githubusercontent.com/567c3a48d796e2fc06ea80409cc9dd82bf714434/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f6c6566745f6461726b626c75655f3132313632312e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_left_red_aa0000.png"></a>