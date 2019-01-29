---
title: "Revolut for Business: not living up to expectations"
date: 2019-01-28T20:35:44+01:00
categories:
- technology
tags:
- revolut
- banking
- review
- digital nomad
keywords:
- review
- banking
- payments
- transactinos
- international
- currencies
coverImage: /images/technology/mastercard.jpg
thumbnailImage: /images/technology/revolut.png
thumbnailImagePosition: left
---

Revolut, it's one of the best banks for people who travel the world. With their free plan, you can pay in almost any currency without paying transaction fees or exchange surcharges. Their premium plan provides even more amazing features. When I'm abroad, my primary financial resource is this very service. So, when I started freelancing, I decided to give Revolut for Business a chance as well.

<!--more-->

As a freelancer with aspirations to work as a digital nomad, you need to be able to handle multiple currencies. Unfortunately, all of the major Dutch banks charge high fees for exchanging between currencies. That is, if they even support multiple currency for small business accounts at all. Revolut for Business aims to disrupt the business banking in the same way as their [consumer banking platform did](https://www.trustpilot.com/review/www.revolut.com).

```
Revolut for Business is the ultimate business account fit for the 21st century: accounts in 24 currencies, free international payments, and seamless corporate cards. We even have an Open API for those looking to automate their business banking.
```

Well, with such bold statements as "the ultimate business account", why not give it a try? I'll give you a little teaser... 

<p style="text-align: center; font-weight: bold;">
They're <i>not (yet)</i> what they're claiming to be.<br />
 I'll share my experience over the last five months, just continue reading...
</p>


## Onboarding

The onboarding about five months ago went quite smoothly. I could do everything within my browser and the process took me just a few minutes and was easy to understand. After completing the onboarding, I had to wait for a couple of weeks before I could actually start using the service.

This is probably because of the due diligence that's required for business banking. The time I had to wait in the queue, was for me quite acceptable. However, running a quick search online results into many people complaining about [the long queues](https://community.revolut.com/t/skipping-the-queue/45527) or back in 2018 even having to [wait for 4 months](https://community.revolut.com/t/on-waiting-list-for-4-months/14556). I'm sure it has become better by now, but be aware, it's not the [five minutes](https://www.revolut.com/a-radically-better-account) for Revolut Personal! 


## Initial impression

I was really quite excited to see what Revolut Business would look like. Especially after my amazing experiences with Revolut Personal. So when I got the message that my onboarding was completed, I was ecstatic. This enthusiasm however, very quickly turned into something that is best described as disappointment. 

The web interface looks sleek. The interface quite literally couldn't be simpler. Normally, I would say that this is a good thing. And usually, it is. But in the case of Revolut Business, it almost feels like they just didn't have the time or didn't want to put the effort into it. A good example of this, is the profile picture. I am not sure if it's aligned like this on purpose or if it is a bug. It's completely opposite to my experience with Revolut Personal, where I was constantly "awed" by their experience. 

![Revolut Business User Interface](/images/technology/revolut/revolut-user-interface.png)

Maybe the difference comes from the fact that there is no mobile interface. Revolut Personal does not have a web-interface (only mobile); the opposite is true for Revolut Business. I don't really miss the web interface for Revolut Personal, but I do really miss the mobile interface for Business. Recently, I did receive an email that has given me some hope:

```
Coming up next, we’re working on releasing our business mobile app so you can monitor your card spend on the move, a payment approval feature to limit who can do what and a Developer Platform which will let third-parties build and publish integrations for Revolut Connect. We’re also working hard to expand payment options and infrastructure...so watch this space.
```

I hope it will arrive soon. I want to check my transactions with FaceID, not by opening my computer, having to fill in my username and password and finally entering a One-Time-Password sent via, yes, e-mail.


## Features

Let me start with the Personal Edition of Revolut. This service really shines when it comes to features. You have an app, advanced security options, limits, multiple currency accounts, cryptocurrencies, push notifications and [so many more](https://www.revolut.com/en-NL/revolut-premium). 

Revolut Business at the time of writing provides the following features 

- Virtual and physical MasterCards (Debit-only)
- Card limits
- Multiple accounts in many different currencies
- Integrations with Slack, Xero, Zapier and FreeAgent
- SEPA and SWIFT support
- Bulk payment
- Scheduled payments (more on this later)
- [Open API](https://www.revolut.com/open-api)

And that is it. It feels a bit silly when I realize that they do not even support a search option to find a specific transaction. Even worse is that the CSV export doesn't allow me to export all transactions. Leaving me with no other option, then to use my browsers Ctrl+F option.

![Transactions per month](/images/technology/revolut/revolut-transactions-per-month.png)

I have to say, the core features are all there. I am still missing some other features that I think would be really good to add rather sooner than later:

- Multi factor authentication using a mobile phone
- High priority/express transactions
- Credit cards rather than Debit
- Payment requests (allowing my customers to pay me online via credit card)
- Reporting
- Security alerting

## Problems

Revolut is a relatively new player in the market. I can imagine that it is difficult to produce so many features in a short timeframe. Revolut Business was afterall only [launched in June 2018](https://www.finextra.com/newsarticle/30683/revolut-launches-new-business-service-across-uk-and-europe). So, I will cut them some slack. However, there is only one capital error for a bank, and that is to have customers lose faith in their service. In the last five months I have encountered several problems that have seriously made me worry.

### Service outage

Every bank faces them every once in a while: service outages. They've complex software systems and there are many things that can go wrong. Unfortunately, I have no data to back up my claims but it happened a few times too often that I couldn't login, couldn't see my transactions or got errors that caused navigational failure. 

![Outage 1](/images/technology/revolut/revolut-something-went-wrong.png)
![Outage 2](/images/technology/revolut/revolut-something-went-wrong2.png)

All of these issues are more of an annoyance than a dealbreaker, but it just doesn't feel very professional. On more than one occasion it resulted in me having to wait for a day in order to get the information or transfer the money I needed. 

My advice to Revolut is to catch these things early on and inform your customers about them immediately. I do not appreciate errors like "Something went wrong" or "Cannot login". If you know something is wrong, please inform your customers. Or, simply make your platform more [resillient](https://www.reactivemanifesto.org/).

### Slack issues

Since Revolut Business doesn't have push or e-mail notifications about new transactions, I am using the Slack integration to get notified. Slack was supported quite early on. The installation is easy and it seems to work fairly well. Unfortunately, I did experience several issues with the Slack integration that are somewhat odd and make it an unreliable service. 

It started when the notifications of the latest transactions started appearing twice. I have no idea how this started, but in the end I resolved it by removing the Slack integration in the webapp and then recreating it. 

![Slack Stopped Working](/images/technology/revolut/revolut-slack.png)

Quite recently, and the reason why I decided to write this blog post, something strange happened. I was waiting for a certain transaction to come in, but I never received any notification about it. I was purely relying on my Slack notification but that never came. When, a couple of days later, I went in the webapp to check, I saw the transaction had happened a few days ago. But alas, still no message in Slack. The Slack integration has ceased to work, so I will probably have to reconfigure it again.

### Faulty planned transaction

The most serious issue that I encountered was when I tried to schedule a payment for another day. Because, when I clicked "Schedule payment", instead of scheduling it, Revolut executed the payment immediately. Most likely, there was some kind of bug in the user interface that called the wrong API.

![Scheduled Payment Not Working](/images/technology/revolut/revolut-scheduled-payment-error.png)

My initial instinct was to contact customer support immediately. They are maybe able to cancel the transaction right? Unfortunately, the customer support is not available at 10 PM. Long story short, the customer support was unable to cancel my transaction in time due to their limited availability. They did fix the bug itself within a day. So kudo's for the quick fix. Now, let's [prevent them from happening in the first place](https://www.agilealliance.org/glossary/acceptance/). 

### Customer support

This brings my to the customer support experience itself. While writing this blog I am trying to figure out what exactly the business hours are. I cannot seem to find this anywhere. I do recall that you get messages about the working hours when you try to contact them via chat. As far as I know, the working hours for Business Revolut are the regular UK working hours. I experienced this several times while facing outages or even when the faulty transaction happened. Never have I been able to research customer support immediately. Funnily enough, Revolut recently announced 24/7 support for [retail banking](https://blog.revolut.com/announcing-24-7-support/).

There are two channels to contact support. First and foremost the "live" chat. This is available from the business webapp. Unfortunately, this chat does not have the same [intelligent bot](https://blog.revolut.com/hey-im-rita/) as the Revolut in-app support chat. When querying for something, I have no idea when I will be receiving an answer. Most of the times, it is fine if it takes a while for them to reply, but if that will be the case, I expect to be informed properly. Another issue I faced, was that up until recently, you could only start a "live" chat in the webapp __after__ login. Kind of an issue when the problem is that you _cannot login_, right? 

![Slack Stopped Working](/images/technology/revolut/revolut-will-reply-soon.png)

The secondary means of contacting Revolut's support is their community board. This is basically a public forum where anyone can ask questions. I encourage this kind of support, because questions and answers are public. This way it becomes easier to resolve common problems. It also helps Revolut by reducing the amount of questions to their support agents. On the other hand, we are talking about a banking product. I prefer not to post anything particular about my financials on the public internet. It is important to be careful with what you post when it comes to sensitive information like financials.

So, in terms of customer support I am not very enthusiastic. With limited channels, slow response time, lack of communication and limited opening hours; I think Revolut has a lot to improve upon. 

## My verdict

All in all, Revolut Business is a nice, clean and simple business banking interface that mostly does what it should do. However, when you start comparing Revolut Business to Revolut Personal, then suddenly Revolut Business feels like an unfinished product that doesn't get the attention it should.

The recent mailing that promises a business banking app has given me some hope. But, since I became a member in 2018, I haven't seen any major improvement in terms of features or stability. And even though I really would like to give Revolut Business a chance, at the moment they simply do not  give me the confidence that I need when handling business transactions.

Let's see what the future holds for Revolut Business.