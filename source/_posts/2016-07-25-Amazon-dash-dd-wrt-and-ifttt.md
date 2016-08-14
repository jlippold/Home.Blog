---
title: 'Amazon Dash, DD-WRT and IFTTT'
date: 2016-07-25 07:41:28
tags: 
	- dash
	- dd-wrt
	- home automation
---

I snagged some amazon dash buttons on Prime day for $0.99 a piece. I saw some other hacks that required a full time server, here's a way to do it with only dd-wrt.

<!-- more --> 
<div style="float: left; margin: 12px">
	![dash button](/pub/blog/img/dash.jpg)
<div>
Once my amazon dash arrived in the mail, I went searching online for hacking methods and I found this [gem](https://medium.com/@edwardbenson/how-i-hacked-amazon-s-5-wifi-button-to-track-baby-data-794214b0bdd8). That lazy dad's approach was pretty sweet, but it's written in python, and I'm a lazier dad. Since I'm a javascript guy, I immediately searched and found this [node variation](https://github.com/hortinstein/node-dash-button) of the same python script. 

The main problem is that both the python and node script require libpcap installed on the server to sniff the ARP probes made by the dash. I didn't really want yet another process running on my home server, so I thought I could reuse [DD-WRT](http://www.dd-wrt.com/site/index) to do the lifting for me. 


#### How the Dash works

Each time the dash button is pressed, it turns on, connects to the wifi network, which makes a purchase request to amazon, then turns itself off. Originally, I thought I could re-route the requests to my local server instead. But since the requests are SSL with end to end encryption, it makes them nearly impossible to replay.

So instead, I went with the low tech solution. When the dash joins my network, fire off a request to some other url.


#### Enable Logging

Step one is to enable logging on the router. So under Services, System Log, enable `Syslogd`


#### Grep the logs

> *Disclaimer* - This is how the logs look on _my router_, the logs on your router may be different because you may have a different network configuration, so here's all the steps I took so you can reproduce in your environment.

Now that logging is enabled. SSH or telnet to the router, and tail the logs to look for the dash button.

`root@DD-WRT:~# tail /tmp/var/log/messages -n15 -f`

When you tail this file then press the dash button you should see an output similar to this

<script src="https://gist.github.com/c92db0f7bdf78d799c6f2a28c172655c.js"></script>

It looks like when a new client connects to the wifi, a line is added to the log that contains this:

`SRC=0.0.0.0 DST=255.255.255.255`

So if we grep for that string

`tail /tmp/var/log/messages -n15 -f | grep "SRC=0.0.0.0 DST=255.255.255.255"`

We should only see new connections to your network. 

<script src="https://gist.github.com/5bc93470f99a952458255cbcad8cabc5.js"></script>

You can also test this by toggling wifi on/off from your mobile device

In that string, after the `ff:ff:ff:ff:ff:ff` and before the `:08:00` you will find the mac address of the dash. 

In my example, the mac address of my dash is `d0:03:4b:9e:69:5c`




#### Grep the log and make request

Now that we know what we are looking for, lets create a script to parse the log file, and send a request to a server of our choosing when the button is pressed

<script src="https://gist.github.com/a36b3767e2f5a98defa87277380726c5.js"></script>

So the script is first killing the `tail` process if its running. This is important because the DDWRT docs state that a startup script can be called multiple times, so this insures one instance. Then, for each line in the log, if the line contains our search string of `ff:ff:ff:ff:ff:ff:44:65:0d:b2:a2:c6:08:00` then tell `wget` to make a web request to `http://192.168.1.13:3000/dash/playdoe` which is a bogus url, but it demonstrates the point.

To make this script run on on dd-wrt, go to Administration > Commands, then paste the script into the `Command Shell` text area. Click `Save Startup`, then reboot the router.

Now we should be making requests to our own server when the dash button is pressed :)

I imagine a similar script could be used on OpenWRT or tomato, but I don't have those anymore.


#### Integrate IFTTT

I understand that not everyone has a home server ready to intercept these dash buttons. So, lets wire it up to connect to [ifttt.com](https://ifttt.com) so you can have infinite integrations. To do this, we need to connect to the [maker channel](https://ifttt.com/maker).

Once you connect the maker channel, you should see an auto generated key, save it because you'll need this later.

Now click create a new recipe

1. Trigger channel should be `Maker`
2. Choose trigger should be `Receive a web request`
3. Event Name can be whatever you want, but *remember the name*
4. Action channel can be whatever you want again. This is the creative part on your end. You can log to a google spreadsheet, post to slack, turn off your harmony tv, whatever you want.
5. Follow through to complete the recipe


Now let's modify the start up script we wrote previously to trigger ifttt. In my example below, my key is `123456` and my event name is `lights_on`

<script src="https://gist.github.com/bd3f26a829c5ec26974b6e92a2323b69.js"></script>

That's it, reboot the router and press the dash button to test it out!

#### Block all Internet access

The last step is to disable internet access on the dash. This is an optional step, but I like the idea of stopping amazon from doing a firmware update without approval. To do this go to Access Restrictions > WAN access. Then do the following:

1. Enable the Policy
2. Set Policy Name to `no dash internet`
3. Click `Deny`
4. Then click `Edit List of Clients`
5. Enter the dash's mac address in the box
6. Save then Apply on both pages
