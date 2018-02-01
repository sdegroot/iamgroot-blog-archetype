---
title: "Organizing the first Netherlands Camunda User Group Meetup"
date: 2018-01-31T07:56:13+01:00
categories:
- technology
tags:
- technology
- meetup
- organizing
keywords:
- technology
- meetup
- organizing
coverImage: /images/camunda-meetup/startup-village.jpg
thumbnailImage: images/camunda-meetup/startup-village-thumbnail.jpeg
thumbnailImagePosition: left
---

Finally it happened. On 30 januari 2018 I have organized [my first meetup](https://www.meetup.com/Netherlands-Camunda-User-Group/events/245891545/) for the [Netherlands Camunda User Group](https://www.meetup.com/Netherlands-Camunda-User-Group/). What an experience was this. So much has happened to make this event come to live and using this blog post I want to share my experiences in the hopes to inspire others!

<!--more-->

## Learning about Camunda

A couple of months ago I attended the Camunda BPMN Training in Woerden. Chances are you have never heard of Camunda before. Camunda can best be viewed as a workflow engine capable of executing BPMN diagrams. Now, I can hear you thinking: 'BPMN? Workflow Engine? ... does this guy also develop using Cobol or what?'. This is such a typical response that I nowadays prefer to say it before someone else says it. The thing is though, this is a complete stereotype/bias and frankly it's completely untrue. 

![Camunda Logo](/images/camunda-meetup/camunda-logo.png#floatright)
I've only learned about Camunda in the past year because I was working as a lead developer at a FinTech called [Caple](https://caple.eu). As I was designing as solution architecture for their loan origination platform I came to realize that they have many and a diverse set of long running processes. Each of those processes involve lots of people with all kinds of tasks. In other words, this product was simply screaming for workflow management. And while I love building everything myself, I am a strong advocate of the Use-Buy-Make rule. If you can use an existing product, use it. If you can buy it, do so. But only when those two options are unavailable, build it yourself. 

So after a proper amount of research I concluded that there are a couple of products that could solve the immediate demand for workflow. Without going into detail, Camunda was *the* best solution for our problem domain. From that moment on, Camunda became one of the core components of Caple's platform.

## The idea for a community

With having made the decision to go with Camunda, there is also responsibility. During my research I realized that even though Camunda is open-source and has enterprise support available, there is almost no community for it in the Netherlands. There are a couple of communities in Vienna, Berlin and ... but nothing in the Netherlands. This felt a bit strange as I knew Camunda was actually being used by many companies in the Netherlands. 

As luck would have it, I had the perfect oppertunity to test my hypothesis when Camunda organized their first BPMN Training in Woerden, The Netherlands. Together with nine other participants we had a great in-depth training about BPMN, with as lecturer no-one less than Felix Mueller from Camunda. But let's not get off track too much here. During the training I checked with the other participants if they thought starting a Dutch community would be something they'd be interested in. Fortunately they all thought it was a great idea and Jeroen even volunteered to help me organize all of this.

## Planning the first meetup
We immediately started brainstorming about subjects we would like to discuss during our first meetup. We were especially happy when we got the news from Camunda that they would help us out with this first meetup by flying Bernd Rucker over! The fact that Bernd was coming already made our chance of success higher with about 80%. I mean, Bernd is the co-founder of Camunda and in his daily life he is their technology evangelist so I knew he would be the main attraction for our meetup group. Besides, I had seen one of his talks before and was very impressed with his knowledge and speaking-skills.

![Meetup.com announcement](/images/camunda-meetup/meetup.com-announcement.png#floatright)
So we've got a top-notch speaker, great. But now there is the matter of the subject. Bernd explained to us that he is very open to any kind of subject related to Camunda. Chances are, anything we come up with, Bernd already had a talk about anyway. So we got free roaming here. After a couple of good debates between Jeroen and myself, we decided to go with a popular subject: DDD and Micro services. I myself have been struggling a bit to combine (mostly) DDD with Camunda. 
I had questions like where does Camunda fit in, is Camunda only for the Saga, is Camunda part of the domain or infrastructure, can it be used over multiple bounded contexts, should you create multiple workflow engines or just one, etc. All of these questions were on my mind, so why not choose this as subject?

During our debates on the subject, Jeroen and I both agreed that we wanted to involve the audience as much as possible. Personally I really like it when in meetups or conferences the speaker is confident enough to let the audience guide the session. In other words: interactive sessions are much more interesting than presentations (one-way communication). So we decided to add the following to the meetup invite:

```
There are many unanswered questions and edge-cases that you would like to have a good 
solution for. This meetup is the perfect moment to ask these questions. Better yet, 
we are counting on all of you to come in with ideas and questions. The more challenging 
the question, the better. So, do you have interesting use cases or challenges around 
workflow, micro service orchestration or long running processes? 
Please come and challenge us.
```

The idea with this kind of text was to incentivise people to join the meeting just that little bit more. Now we had all the ingredients for a good meetup programme: top-notch speaker, a hot subject and the oppertunity for particpants to get answers to their questions. Oh and of course we had to set a date. We picked the 30th of January 2018 because we had some more time to arrange for a venue and all the other practical details. But maybe the fact that Bernd was only available on that date (on the short term) made the final call ;-).

After all preparations were made (about a week before d-day), we sent an email to everyone that RSVP'd. In this e-mail we included all practical details about this meetup. To make it clear and simple, we included [an affiche](/images/camunda-meetup/2018-01-30_meetup_affice.pdf) that included all necessary information. 

## Sponsors

Organizing meetups is not only something that takes a lot of time and effort, it also requires some financial funds. You have to take into account (assuming a meetup of about 40-60 people)

- Meetup.com charges about 100 USD / year
- Renting a venue; between 400-800 euro for a night
- Catering; between 200 - 750 euro depending on the quality of food
- Gifts to the speakers, merchandise, etc.

So organizing a meetup for 50 people very quickly costs between 700 and 1700 euro depending on many factors. Now, I really like organizing meetups, but I think you will understand if I don't pay this kind of money out my own pocket.

But if the organizers aren't paying for it, who is? Probably Camunda, right? Because after all, we are a Camunda User Group... Yes, we are a Camunda User Group, but the name is *not* referring to the company. The name `Camunda` is in this case referencing the product. We are all about the product (remember that it is open-source). We are **not** a sales channel for the company Camunda. And even though Camunda has a lot to gain from user groups like ours, we like to keep our independence. To be fair to Camunda (the company), they themselves are really pushing for independence as well. They even provide [guidelines on organizing meetups](https://camunda.com/events/meetups/)! 

The funny thing is, no-one is actually paying us anything. As a meetup group, we ensure that all of our costs are covered in one way or the other. This either means that we are paid-in-kind, for example the venue *or* the companies allow us to declare the costs, for example the catering. For our meetup, we found quite a lot of sponsors willing to help us out

- [Info Support](https://www.infosupport.com) - paid-in-kind by providing us with the venue for the night
- [SynTouch](https://www.syntouch.nl) - paid for the catering 
- [Verne](http://verne.eu) - provided guidedance and access to their network and contacts 
- [Camunda](https://camunda.com) - provided us with Bernd and provided lots of merchandise

I am very thankful to all of our sponsors as the event would definitely not have happend without them! You don't need to be a genius to realize that these companies are getting something out of this event. Not a single company I know wants to spend money on something that doesn't benefit them in any way. Most of these companies want to either sell their product *or* attract new (tech) talent. I think this is a completely harmless goal, as long as they don't take it too far. We have a couple of rules for our meetup group to prevent it from becoming a sales pipeline for any of the sponsors. But as this blog is already twice as long as I originally intended, I will leave that for another time.

One last thing I want to warn other future meetup organizers about: finding sponsors is *very* time consuming. I think I must have contacted about twenty different companies. Of two twenty companies, only about _five_ **replied**! The others just didn't care, not even after multiple reminders or phone calls. Yes, yes, I realize I am asking for money but the fact that most companies do not even have the curtosy to tell me 'no' is really frustrating. During this endeavour I again realized how important network is. I realized this because the companies that *did* respond, I already had ties with somehow (and thus knew who to talk to).

## How did the meetup go?
After all the organizing, planning and coordination, on 30 January 2018 the event finally happened. Being the first meetup of our community, we outdid ourselves on the details (if I may say so myself). The venue just looked stunning, the catering was taken care of and everything was set way before the first participant arrived.

{{< image src="/images/camunda-meetup/meetup-location.jpg" thumbnailWidth="300px" classes="fancybox" title="VentureStudio StartupVillage">}}

In the programme we calculated that it would be good to have about an hour (18:00 - 19:00) of socializing over dinner. It really depends when people arrive and if the participants like to socialize. But for this meetup, the balance was just about perfect. Everyone started mingle and talk about the product (amongst other things). And just before 19:00 it became clear that people had enough and wanted to start. And who am I to keep our guests waiting?

{{< image src="/images/camunda-meetup/first-meetup-diner.jpg" thumbnailWidth="300px" classes="fancybox" title="Partipants having dinner">}}

We had a pretty full programme. With a short introduction by myself, followed by an introduction into Camunda by Jeroen and Bernd having his Q&A, time was tight. We decided not to plan any break in between the sessions as we felt there wasn't a natural moment to do such a thing. Besides, if you take a break, you can be sure you'll lose about 15 minutes before everyone is back and ready to continue.

Even though people had to sit for two hours straight on a Tuesday night, everyone was surprisingly engaged during the presentations. I have had other meetups where the audience simply did not interact with the speaker at all, no matter the effort put into it. It may have been related to Bernd's skills but nevertheless, I was very happy with the amount of questions being asked by the audience. Now I get to think about it, the vibe during the whole meetup was actually really great. Honestly, I don't really know what caused this kind of ambiance. What I do know, is that I'd like to see this again in the next meetup!

Aftwards more than half of the participants (about 20 out of 40) stayed to talk with the others over a couple of drinks. At 21:20 I really had to ask everyone to leave as I had agreed with the venue that they could close off at 21:15... This was also given to me as feedback by the participants, the next time we should reserve some more time for drinks afterwards. Pretty cool, right?

All with all, it was a great meetup, especially if you take into account that it was the first one for a product living in a very niche market!

## Lessons learned

This was the first meetup I have ever organized. Looking back I think almost everything went pretty well, or at least as well as you can imagine for the first time. There are a couple of things that I learned while organizing this meetup.


1. It's very difficult to estimate how many people will show up. We had about 50 people that RSVP'd the day before the meetup. In the end about 40 showed up. This is a pretty good rate, or so I've heard. 
2. Getting new companies to sponsor you is difficult. It's very time consuming and you need to be prepared to hear `no` (or worse: nothing).
3. Listening and interacting for two hours straight on a Tuesday night isn't very comfortable. Make sure to have a break.
4. Do not do it by yourself. Organizing a meetup is a lot more work than you'd imagine. You simply cannot and should not do it by yourself. Even if you have the time, it is best to have someone to bounce stuff off.
5. Cherish your sponsors. Keep them in the loop and make sure to properly name & thank them before, during and after the meetup.
6. Make sure you stay independent. Even though you want to cherish your sponsors, you can not have conflicting interests.
7. Always ask your audience for feedback. This is one of the few ways you can actually improve your meetups.
8. Use the meetup to interact with the attendees. They are your community; without engaging them there is no community.
9. Too much food is better than not enough. People are hungry after a long day of work. Quality (healthy) food is better but a lot more expensive.
10. Make pictures of your event and share them! You can always use this kind of material for many things later on.

And there are probably more that I can't think of at the moment.

## How will we proceed from here?

Now we've had our first meetup, we can't sit down and relax. This is the time to follow through and continue to grow your community. For us it means that we've set the date for the next meetup: 26 April 2018. This is in line with our goal to have a meetup every three months.

The subject for the [next meetup](https://www.meetup.com/Netherlands-Camunda-User-Group/events/247340421/) is not known yet. And so the search for a venue, content and other sponsors starts again. Luckily for us we've now got a much better network!

There's just one more thing. Even though I have personally been closely involved in organizing this meetup, I won't be there for at least the next two meetups. This may sound a bit strange, as we've had such a great start. There is a good reason though. The thing is, a couple of months ago I decided to quit my job to start travelling the world for about six months... More on that in another blog post...

For now, I am just happy to know that this meetup group will continue to thrive as we've found another co-organizer that will help Jeroen in the coming months! (to be announced who)

Thanks for reading! 

