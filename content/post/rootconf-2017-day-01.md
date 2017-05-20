---
author: "hashfyre"
date: 2017-05-20
linktitle: Rootconf 2017 Retrospective - Day 01
menu:
  main:
    parent: conferences
title: Rootconf 2017 Retrospective
categories:
  - conference
tags:
  - conference
  - rootconf
  - devops
  - aws
  - mysql
  - mariadb
weight: 10
---

## A short intro of the scribblenaut

This blog and the post is either a year or a week too late, depending on how you're looking at it. I was supposed to boot this up last Rootconf, when it was still 2016 and celebs were dying left, right and center. Only it's 2017 now, another Rootconf is already past us and democracy is dying.


But where are my manners, let me introduce you to [Rootconf](https://rootconf.in/2017/) the annual Devops and Cloud Infrastructure conference organized by them geeks at [Hasgeek](https://hasgeek.com).

Last year, I was a freshly minted techie who had uprooted himself from Pune to the Bangalore tech-scene by virtue of a job he got himself over a reddit thread (yes, you read that right).

The scene here at Bangalore was fancy, upbeat and teeming with geeks; which only added to my euphoria. Thankfully, that reddit guy turned out to be [Captn3m0](https://captnemo.in/) who was very much key'ed into almost all the nicer tech (and otherwise) communities in this city.

Soon, I was attending [Rootconf'16](https://rootconf.in/2016/) and getting to meet wonderful devs and infra-geeks from all over the world. My glass was half-empty and I had my tinted-spectacles on. Nothing could deter my enthusiasm.

Then, a year went by...

My glass is now three-quarters full, I've sobered up from the initial trippy-tour of the scene and more importantly, the community has absorbed me. Now, I'm somewhat key'ed in.

I'm more skeptical, with better information filters installed over the past year. And with those upgrades, comes this blog and the Rootconf Retro post.

Read on...


## Rootconf 2017
This time I was attending with four of my teammates:

  - [@rmenn](https://twitter.com/rmenn), my team-lead,
  - VV, our Technical Architect,
  - [@sreeramb93](https://twitter.com/sreeramb93), resident monitoring nerd,
  - and [@dforce](https://twitter.com/_dforce) our backend bear.

Also,

  [@akshay_bhalotia](https://twitter.com/akshay_bhalotia), our iOS dev was volunteering for the conference.

The running gag was that my company [Razorpay](https://razorpay.com) was fielding a full-stack team for Rootconf. It did help we were also the Payment Partners.

After the usual meet and greet with hasgeek employees, volunteers (who were now friends) and the attendees I had met during last rootconf and other conferences, we were seated in the MLR Convention Center Auditorium, primed for the first talk.

### [D01T01: State of the Open Source Monitoring Landscape](https://rootconf.talkfunnel.com/2017/63-state-of-the-open-source-monitoring-landscape) by [@gethash](https://twitter.com/gethash)
Bernd is the co-fo of Icinga, that much [hyped and heated fork](https://news.ycombinator.com/item?id=9452013) of Nagios. So if he's talking about monitoring, you're supposed to listen.

I kind of reacted prematurely when I didn't see [Prometheus](https://prometheus.io/) in his list of monitoring tools. However that doubt was soon rested, and he did talk about it in the metrics section of talk.
  {{<tweet 862523143742570496>}}

 The talk offered a broad coverage of:

  - Monitoring tools:
    - [Nagios](https://www.nagios.org/)
    - [Icinga 2](https://www.icinga.com/)
    - [Sensu](https://sensuapp.org/)
    - [Zabbix](http://www.zabbix.com/)
  - Metric Gathering tools:
    - [Riemann](http://riemann.io/)
    - [OpenNMS](https://www.opennms.org/en)
    - [Prometheus](https://prometheus.io/)
    - [TICK Stack](https://www.influxdata.com/products/open-source/)
    - [Graphite](http://graphiteapp.org/)
  - Logging tools:
    - [ELK/Elastic Stack](https://www.elastic.co/products)
    - [Fluentd](http://www.fluentd.org/)
  - Dashboard:
    - [Graphana](https://grafana.com/)

The one thing I found missing from the list was [sentry](https://sentry.io/welcome/).

P.S. mark my words, fluentd is the log forwarder of the near-future. Do EFK, not ELK.

### [D01T02: Deployment Strategies with Kubernetes](https://rootconf.talkfunnel.com/2017/17-deployment-strategies-with-kubernetes) by [@adityapatwari](https://twitter.com/adityapatwari)

Given that I have been fiddling with Kubernetes, Kompose etc. as part of my current workload and working with [@rmenn](https://twitter.com/rmenn) who is a big-time k8s-nerd, I was very hyped for this talk.

Well, I did feel a bit let down when it turned out to be a basic 101 session of k8s. Blue-greening and canary using labels and selectors. My opinionated verdict was, there was enough material in the talk for a short webinar, but not a full conference talk.

The thing with k8s is, if you know the basic jargon, you feel like you want to consume better material. But, if you are just starting out, the jargon itself is daunting enough to warrant multiple 101 sessions.

For interested people, some resources:

 - Jankiram MSV's k8s webinar series

   {{<youtube _vHTaIJm9uY>}}


 - [k8s stuff at katacoda](https://www.katacoda.com/)
  - shoutout to [madhuakula](https://twitter.com/madhuakula) for sharing these tutes

### [D01T03: A little bot for a big cause](https://rootconf.talkfunnel.com/2017/7-a-little-bot-for-big-cause) by [@techgirlpooja](https://twitter.com/techgirlpooja)
This. Was. A. Talk. About. Alice.

I think I should stop here before I launch into a rant about why managing git branches, commits and PRs with a bot is a terrible idea.
  {{<tweet 862554376103120897>}}
Now, with that out of the way, Alice is a [Hubot](https://hubot.github.com/), the messiah of ChatOps that does github PR management for you based on a configurable rule-set. Only, if you ever want to manage a repo you don't want a bot auto-reverting your merge that you need to revert again.

Additionally, the brand of humor in this talk did not agree with me. I shall stop now.

### [D01T04: The OTTO Monitoring talk](https://rootconf.talkfunnel.com/2017/18-necessary-tooling-and-monitoring-for-performance-c) by [@mananbharara](https://twitter.com/mananbharara)
Before I say anything about the content, this was the best delivery of the day. Manan's precision in every point he made was beyond a practiced excellence. This was a zero fluff talk you'd get latched onto easily.
{{<tweet 862564182851371008>}}

The content though was very specific to monitoring as applied to the contexts of:

 - OTTO, the EU e-commerce giant
 - Clojure, the language
   - [metrics](http://metrics-clojure.readthedocs.io/en/latest/), a clojure library

That said, the product, [oscillator](https://github.com/otto-de/oscillator) was a dream to watch. If you're using clojure, try this. It's built on d3js.

The only caveat was that, oscillator relied upon a lot of code-instrumentation to provide metrics. So, you'll end up needing another tool to measure instrumentation-coverage for your codebase, just like you measure test-coverage. For any module a dev writes, he'll have to write:

 - The code
 - The tests
 - The instrumentation

I'm neither for or against this. I just don't see it practically plausible in smaller companies, where a dev's time is better spent on delivering features to get more customers, and not on instrumentation. The applicability of this sterategy is thus proportional to the scale of the company. If you have got a decently sized backend army that can now focus on reliability more than feature-creep, go ahead and ask them to write instrumentation.

### D01: Lunch and Networking
Lunch breaks are always about networking. For me this time it was about catching up with people I have virtually met through the [Devs and Hackers Slack Group](http://slack.devup.in/).

While there have been numerous meetups within Bangalore, where I have had the privilege to meet and befreind [@SathyaBhat](https://twitter.com/SathyaBhat), this time [@hacktohell](https://twitter.com/hacktohell) and [@data__wizard](https://twitter.com/data__wizard) had come down from Mumbai to rootconf. And, I spent most time hanging with them.

This was also the customary swag collection time, you know what you need to do when you're doing this.

### [D01T05: Autonomous Application Delivery](https://rootconf.talkfunnel.com/2017/37-autonomous-application-delivery-faster-more-reliab) by [@thegdot](https://twitter.com/thegdot)
This talk veeered away from the cloud centricism we are so used to and focussed on old-school packaging tools, such as:

 - pkgsrc
 - nix
 - OpenPkg

Since this talk was more targeted to the non-cloud ecosystem and for people using FreeBSD, Solaris etc. I kind of drifted away after a initial attentive phase. The lunch helped.

We mostly do not do CI/CD this way anymore, so there's that.

### [D01T06: What should be PID 1 in a container](https://rootconf.talkfunnel.com/2017/51-what-should-be-pid-1-in-a-container) by R. Rajaram
Wow! There was so much `#TIL` in this talk. I was glad I decided to wake up and focus on the content.

Turns out that in older versions of Docker, it didn't reparent child processes to the PID 1 correctly, resulting in a bunch of zombies in your system, eating up memory.

Every time a request is made to the app hosted by the container, it fork()s a new child() and after cleanup this hangs around without getting attached to the top level process and thus never gets reaped.

One workaround was to set the entrypoint to a `bash` script that in turn runs your server:

```
CMD ["/bin/bash", "-c", "set -e && /path-to-your-app"]
```
as opposed to directly running:
```
CMD ["/path-to-your-app"]
```

But this was only the tip of the ice-berg. Alternatives were:

 - [dumb-init](https://github.com/Yelp/dumb-init)
 - Docker-1.13, has introduced the flag, [--init](https://docs.docker.com/engine/reference/run/#specify-an-init-process).

I just found a very nice blog-post on this:

[Docker and the PID 1 Zombie reaping problem](https://blog.phusion.nl/2015/01/20/docker-and-the-pid-1-zombie-reaping-problem/)

Using `dumb-init` has a caveat that it's non-trivial to build a layered docker image using `FROM` directive on top of an image that uses it.
I have faced this problem while dealing with the [hashicorp vault docker image](https://hub.docker.com/_/vault/)

This merits a fresh article, so I'm not going to talk about this more in this post. I loved this talk.

## D01: End

I spent some time with my friends [@lochan](https://twitter.com/lochan) and Sapna, the amazing travelling-india-on-bicycles-while-hoola-hooping-and-singing duo. They were conducting the fitness oriented [Kilter Track](https://blog.kilter.in/kilter-at-rootconf-f79893f96547). They had setup Slack lines, hoola hoops on the venue for the fitness inclined.
While slack-lining or hoola-hooping weren't my things, I spent quiet some time singing Knocking on Heaven's Door etc with Lochan on the guitar. His rendition of Parvaaz's songs are always amazing. Oh! Did I forget to tell you that he had recently acted in one of Parvaaz's music videos.
{{<youtube auZ3HeKB0-o>}}

The day ended with my team heading to the post-conf party organized by Gojek at Big Brewsky. Food and drinks were on them.

Post intoxication, [@_TheDarkRider](https://twitter.com/_TheDarkRider) dropped by to say hi which resulted in:
{{<tweet 862715007972147200>}}
