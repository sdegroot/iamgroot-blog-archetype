+++
keywords = ["logging","logback","performance","reference-implementation","debug logging"]
tags = ["logging","performance","logback","java","improvement","tools","techical"]
categories = ["Tips and tricks", "Technology"]
date = "2017-02-24T20:00:00Z"
title = "Logging without compromising on detail or performance"
thumbnailImagePosition = "left"
thumbnailImage = "https://blogs.infosupport.com/wp-content/uploads/2016/08/logbacklogo.jpg"
+++

Application logging. Have you ever had to choose between detailled logging or performance?
Where you on one side wanted to log something on a certain level of detail while
you knew that this would have an enormous impact on the performance of your application?
This is exactly the situation I was in while working on some high-load services at [Twyp](https://www.twyp.com/).


<!--more-->
<h2>Always the dilemma, should I log this on DEBUG or INFO?</h2>
<p><img style="float:right" src="https://blogs.infosupport.com/wp-content/uploads/2016/08/dilemma-300x182.jpeg" alt="dilemma" width="300" height="182" srcset="https://blogs.infosupport.com/wp-content/uploads/2016/08/dilemma-300x182.jpeg 300w, https://blogs.infosupport.com/wp-content/uploads/2016/08/dilemma-493x300.jpeg 493w, https://blogs.infosupport.com/wp-content/uploads/2016/08/dilemma.jpeg 625w" sizes="(max-width: 300px) 100vw, 300px"></p>
<p>When you are working on your application you have to take into account that this code is going to be running somewhere soon. Someone (preferably you yourself) will be maintaining this code.&nbsp;If you have ever had to analyse some incident and&nbsp;you found that the logs were not of use at all, you will know the pain.</p>
<p>Luckily there are some people that wrote&nbsp;tips on <a href="https://www.javacodegeeks.com/2011/01/10-tips-proper-application-logging.html">how you can write proper log statements</a>. But keep in mind that the only thing that counts, is&nbsp;the value of the logs to the person or system reading them. If you ever maintained a production application you will know what I am talking about. Applications are logging errors and warnings but you simply don’t understand what exactly caused this error as you are missing vital parts of the context. So, the answer would be&nbsp;to simply enable debug logging, right? Unfortunately it isn’t that simple.</p>
<p>Enabling debug logging has two major drawbacks</p>
<ul>
<li>Debug logging usually contains more sensitive information about operations. You simply don’t want to be logging&nbsp;that&nbsp;someone specific is making a transaction with some sensitive description… (I leave those up for your imagination)</li>
<li>Developers tend to write&nbsp;<em>a lot</em> of debug statements. Imagine 12 debug statements per service request times 100,000 requests / min. &nbsp;Within the hour you’ll have 72 million log statements.</li>
</ul>
<p>And aside from these issues, you should also ask yourself, is all this&nbsp;information useful? 99% of the time you will not need this kind of detail, especially in the cases where everything is running just fine.</p>
<p>At Twyp we were struggling with&nbsp;this dilemma.&nbsp;Initially we decided to optimise&nbsp;debug logging in the code and then&nbsp;turn it on on production. This was a&nbsp;huge help to our operations people as they finally had all the information about a problem that they needed. But we also&nbsp;noticed that our services started to slow down more and more.</p>
<p>Before you read on, I need to warn you that this blog post is about&nbsp;applicative logging. You should never optimise&nbsp;audit-&nbsp;or&nbsp;security logging to the point that you may lose data!</p>
<h2>Logging using&nbsp;the contextual-logbuffer</h2>
<p>So we need to find a way to achieve the following goal:</p>
<blockquote><p>Only log relevant log statements&nbsp;that can help to resolve&nbsp;problems.</p></blockquote>
<p>This is exactly what the&nbsp;<em>contextual-logbuffer</em>&nbsp;provides. You could best describe the contextual-logbuffer in the following way:</p>
<blockquote><p>A contextual logbuffer is an interceptor running in your log framework that buffers parts of&nbsp;your logs and only flushes this buffer when there is an event that requires previous or future logging to be flushed to disk.</p></blockquote>
<p>The contextual logbuffer works based on a <em>FIFO</em>&nbsp;buffer. It stores all log messages within a certain range (e.g. <em>DEBUG </em>up until<em> INFO</em>). Only whenever a configurable threshold is reached will the buffer flushed to disk. This threshold normally is any log message of a certain log level, usually this would be <em>WARN</em>. This means that all&nbsp;<em>DEBUG</em>&nbsp;and<em>&nbsp;INFO </em>log messages are buffered until a&nbsp;<em>WARN&nbsp;</em>or higher is triggered. If your application is never generating warnings or errors then your application will not log anything anymore, as the buffer is never flushed.</p>
<p>A picture says more than 1,000 words, so to put this into perspective check out the diagram below.</p>
<p><a href="https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1.png"><img class="alignnone size-full wp-image-19336" src="https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1.png" alt="Activity diagram of the contextual logbuffer" width="805" height="480" srcset="https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1.png 805w, https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1-300x179.png 300w, https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1-768x458.png 768w, https://blogs.infosupport.com/wp-content/uploads/2016/08/AD-Context-Logbuffer-1-500x298.png 500w" sizes="(max-width: 805px) 100vw, 805px"></a></p>
<p>This mechanism provides a way to always have&nbsp;logging available on the level you need while it prevents the performance hit of logging&nbsp;<em>all</em> log messages. There is one drawback to note though. Sometimes it can be very useful to have logging available in cases where there was no&nbsp;fault in the system. A typical example could be a customer complaining about a certain issue. If there was no warning or error for that specific scenario, you will not find any logs to help you with the customer complaint. In this case I would recommend you to fall back on your audit logs, which at least should be able to provide you with some evidence.</p>
<p><img style="float: left;" src="https://blogs.infosupport.com/wp-content/uploads/2016/08/logbacklogo.jpg" alt="logback logo" width="170" height="95">I have built a <a href="https://github.com/sdegroot/logback-context-logbuffer">reference implementation</a> of this system using Logback. A closely related&nbsp;implementation is currently being used in production for some of my projects.&nbsp;<img class="alignnone" src="https://maven-badges.herokuapp.com/maven-central/com.github.sdegroot/logback-context-logbuffer/badge.svg" alt="maven central latest version" width="128" height="20"></p>
<h2><strong>How do others handle this problem?</strong></h2>
<p>Every major project at a certain point will face this issue. Especially products like Facebook, Netflix and Ebay will have an enormous amount of logs. To be honest, I can’t even imagine how these guys manage this.</p>
<p>Google however published a paper on this subject. I am mentioning this specifically because Google has a whole different approach. I recommend to spend some time to read the great summary of Adrian Colyer. Paper:&nbsp;<a href="https://blog.acolyer.org/2015/10/06/dapper-a-large-scale-distributed-systems-tracing-infrastructure/">Dapper, A Large Scale Distributed Systems Tracing&nbsp;Infrastructure.</a></p>