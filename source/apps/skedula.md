---
title: Skedula
date: 2016-07-06 23:02:28
layout: content
---

> This post is largely for historical purposes to document what Skedula was before it became Skedula.com

Skedula was a project I started in 2002. The software had about 6 rewrites over the years, and continually morphed into a more mature and stable project. 

I was hired by Robert Leder to assist my sister, Tanya, in the program office. This was not the first time I worked in a program office. I helped my brother Wayne in the program office of George Westinghouse High School in my senior year.  At the time, UAPC and ATS were the student information systems used in NYC. 

The biggest problem we faced in the Program Office were the large amount of program changes that occurred. There was no proper student management system. Guidance counselors would fill out a paper form requesting a change and we would try our best to fulfill the change. Classes would quickly become over-sized. By the time we processed the change request, there were no more seats in the requested class so, we had to reject it. As you can imagine, some students would have to sit in the wrong classes for days waiting for a program change.

Robert Leder the principal, Tanya Lippold the program chair, and Sony Grandoit the Assistant Principal of Guidance, tasked me to make a system to manage these changes. They placed a lot of trust in me and in my abilities, and for that I will forever be grateful. A great friend and colleague, Eileen Metkiff, came up with the name Skedula, which phonetically sounds like a mix of _Dracula_ and _Scheduler_. The name was perfect, since we were scheduling students for classes. 


--------

### The Pilot

The first iteration was simplistic and crude, but it solved a number of problems. It was only a couple of forms, which updated a few tables. Here's some stuff I found from my files

>[![image](/public/blog/img/TN_IMG_2543.JPG)](/public/blog/img/IMG_2543.JPG) [![image](/public/blog/img/TN_IMG_2544.JPG)](/public/blog/img/IMG_2544.JPG) 
> _Design Plans_

>[![image](/public/blog/img/TN_IMG_2548.JPG)](/public/blog/img/IMG_2548.JPG) [![image](/public/blog/img/TN_IMG_2549.JPG)](/public/blog/img/IMG_2549.JPG) [![image](/public/blog/img/TN_IMG_2547.JPG)](/public/blog/img/IMG_2547.JPG)
> _Pilot handouts_ 

>[![image](/public/blog/img/TN_IMG_2545.JPG)](/public/blog/img/IMG_2545.JPG) [![image](/public/blog/img/TN_IMG_2546.JPG)](/public/blog/img/IMG_2546.JPG) [![image](/public/blog/img/TN_IMG_2550.JPG)](/public/blog/img/IMG_2550.JPG) [![image](/public/blog/img/TN_IMG_2551.JPG)](/public/blog/img/IMG_2551.JPG) 
> _Misc. Documentation_

The server architecture was a MSAccess 97 database, accessible via a windows UNC path. The application code was written in VBA. We had about 10 users, who accessed the linked tables via an MSAccess front end. 

The system kept track of students, class sizes, and course offerings. At the end of each day, we would generate an audit of the changes and upload them via floppy disk into a AS400 machine running UAPC. The counselors were now able to change classes for students in real time, and print out a student schedule. 

### Skedula in Lehman

I re-wrote Skedula over the summer of 2004 on my personal time. By the end of 2009, Skedula evolved to be much more than just a scheduling tool. It touched all facets and it was deeply entrenched into the culture of the school. 

Here's just some of the features:

 - Report Card generation
 - Add / Drops
 - Testing and Proctors
 - Anecdotal Logs
 - Outreach Events
 - Attendance
 - Student Touch screen Kiosk
 - AP Exams
 - Course Selections
 - Messaging
 - Reporting
 - Transcripts

 >[![image](/public/blog/img/TN_skd_00003.png)](/public/blog/img/skd_00003.png) [![image](/public/blog/img/TN_skd_00006.png)](/public/blog/img/skd_00006.png) [![image](/public/blog/img/TN_skd_00010.png)](/public/blog/img/skd_00010.png) [![image](/public/blog/img/TN_skd_00012.png)](/public/blog/img/skd_00012.png) [![image](/public/blog/img/TN_skd_00014.png)](/public/blog/img/skd_00014.png) [![image](/public/blog/img/TN_skd_00015.png)](/public/blog/img/skd_00015.png) [![image](/public/blog/img/TN_skd_00016.png)](/public/blog/img/skd_00016.png) [![image](/public/blog/img/TN_skd_00017.png)](/public/blog/img/skd_00017.png) [![image](/public/blog/img/TN_skd_00018.png)](/public/blog/img/skd_00018.png) [![image](/public/blog/img/TN_skd_00019.png)](/public/blog/img/skd_00019.png) 
> _Screenshots_

There were also some experimental features that I loved to build. For example, the touch screen kiosk. Students were able to print their schedules, report cards and transcripts from a touch screen. This was awesome for me, because students frequently came to my office for new printouts. 

I also wrote an automated phone system that tied into a 56k modem on my work machine. Parents could call "Skedula" and were greeted with a a Siri-like assistant say, press 0 for attendance, press 1 for grades etc. That was really fun to write.

Skedula ran at Lehman High School for 7 years, from 2002-2009. By 2009, Skedula was also running at Stevenson High School, and I was in talks with at least 2 other schools. Robert Leder retired in 2008 and it was time for me to leave. I had plenty more software to write, and Skedula was ready to be reborn.
