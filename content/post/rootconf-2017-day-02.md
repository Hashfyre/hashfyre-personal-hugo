---
author: "hashfyre"
date: 2017-05-20
linktitle: Rootconf 2017 Retrospective - Day 02
menu:
  main:
    parent: conferences
title: Rootconf 2017 Retrospective - Day 02
categories:
  - conference
tags:
  - conference
  - rootconf
  - devops
  - aws
  - mysql
  - mariadb
  - microservices
weight: 10
---

## Rootconf 2017
Day 02 of rootconf started off upbeat with some good networking accomplished during the breakfast. I had the opportunity to talk to one of BookMyShow's principal architects, Sivagurunathan S. We chatted about RDS vs NewSQL scalability on the payments domain.

Some promising talks were scheduled for this day.

### [D02T01: Failure Resilient Architecture with Microservices](https://rootconf.talkfunnel.com/2017/29-failure-resilient-architecture-with-microservice-d) by [@kunalgrover05](https://twitter.com/kunalgrover05)
This talk focussed on implementing circuit-breakers for Amazon's microservices clusters. The idea is if one of your microservice fails the entire overarching service shouldn't fail, only degrade by a fraction. It's also important that every dependant service would have circuit breakers with sane defaults take over in case of a failure of upstream service.

An example circuit-breaker using `iptables` was shown, along side discussions of monitoring and tracing to deptect faiures.

The video of the talk is up now on Hasgeek's YouTube channel:

{{<youtube OFVgEtOHV4Y>}}

Overall a nice talk, however it'd fall on a more theoretical side of discourses.

### [D02T02: "Asynchronous" integration tests for microservices](https://rootconf.talkfunnel.com/2017/64-asynchronous-integration-tests-for-microservices) by [@atramya](https://twitter.com/atramya)
I learnt a bunch of things from this talk, especially [Consumer Driven Contracts](https://martinfowler.com/articles/consumerDrivenContracts.html) by Martin Fowler, the concept this talk's tools implements. In CDC a provider needs to conform to a contract defined by it's consumers whenever it's talking to one. Once implemented it ensures that the consumer can run an integration test for the provider by only being concerned about the honored contract and not any upstream code change in the provider. The provider can test that any change in it's code base doesn't dishonor exisiting contracts and voila! The two tests and now be run asynchronously and independently of each other.

One key takeaway from the opening of the talk was:
{{<tweet 863102273752322048>}}

Amazon and Netflix can afford DeathStar clusters, not all of us can, operationally and otherwise.

Current implementations with CDC were:
 - [Pact](https://docs.pact.io/documentation/usage_ruby.html)
 - [Janus](https://github.com/gga/janus) - Project inactive
 - [Spring CLoud Contracts](http://cloud.spring.io/spring-cloud-contract/spring-cloud-contract.html)
 - [Pacto](https://github.com/thoughtworks/pacto) - Project inactive

The talked about tool here was, of course Pact. Pact defines the CDC cotract using Pactfiles which takes care of mocking integration tests and replaying them against the Pactfile to ensure that the contract is honored.

{{<youtube Ib97tX8P1o4>}}


### [D02T03: DevConf Track: Build, test, deliver latest and safest container images effortlessly](https://rootconf.talkfunnel.com/devconf-2017/86-build-test-deliver-latest-and-safest-container-ima) by [@rtnpro](https://twitter.com/rtnpro)
I joined in pretty late on this talk, the only info I could garner was that CentOS has built a [Container Delivery pipeline](https://github.com/CentOS/container-pipeline-service) with built-in security checks and OSS'ed it. At my work, we already have something similar with wercker as the CI pipeline and Dockhub as both registry and vulnerability assessment.

{{<tweet 862901857894649857>}}

### [D02T04: Capacity planning for your data stores](https://rootconf.talkfunnel.com/2017/65-capacity-planning-for-your-data-stores) by [@bytebot](https://twitter.com/bytebot)
Colin's talks are almost always one of the more informative ones by any measure. This one did not disappoint too. He talked at length about MySQL Percona clusters and the [new monitoring tool](https://pmmdemo.percona.com/) they had come up with.

It dealt in depth about MySQL/MariaDB shard management, and dabbled in how [ProxySQL](http://www.proxysql.com/blog/releasing-proxysql-140) can help one in boosting MySQL performance for orgs.

The most amazing part was using [Facebook Incubator | Prophet](https://github.com/facebookincubator/prophet) to forecast MySQL performance using the time-series metrics stored by your metrics stack.

{{<youtube sjDXJ9RF480>}}

### Thanks and Feedback
The flow was punctuated with a short session by the organizers thanking all the volunteers and passing the mic for general feedback. One point that I had to bring up was better classification of talks into 101,102 and so on so that on a multi-track conference like Rootconf people can prioritize what they wanted to attend depending on their personal skill level and wihotu either getting overwhelmed or underwhelmed by the content. This I felt was necessary for optimal matching of content to expectation.


### [D02T05: Auto-spotting with SpotSwap](https://rootconf.talkfunnel.com/2017/72-spotswap-running-production-apis-on-spot-instances) by [@arunasank](https://twitter.com/bytebot)
I have been interested in AWS Budgeting with either the Spot Instance Market or Reserved Instances for some time now. Though, tools like [autospotting](https://github.com/cristim/autospotting) have already piqued my curiosity, I haven't yet been able to play around with it in production since my organization's workload has not yet stabilized.

The tool that Aruna demoed, called [spotswap](https://github.com/mapbox/spotswap) was unknown to me and I was hooked on to how this works. Spotswap essentially monitors instance requirements of a static ASG and based on scaling rules bids and provisions spot instances in another ASG whenever needed and does this in a continous manner.

{{< youtube XQJ7YhVoSWI>}}

### [D02T06: MySQL Troubleshooting: TL;DR](https://rootconf.talkfunnel.com/2017/60-mysql-troubleshooting-tldr) by [@lig](https://twitter.com/lig)
This was a fairly 101 Level talk about MySQL error-logs, performance schema, innodb metadata, debugging running processes and the likes. Having run a MariaDB + Galera master-master clsuter for a year and a half, most of these essential lessons were now burnt into my skin. You only know enough DBA if you have screwed up production clusters at runtime. I have been through that crucible before. In all this talk was both relatable and informative.

{{<youtube tOSnLqcZ_Po>}}

### Stretch Break
This time [@lochan](https://twitter.com/lochan) had taken over from Todd to provide us, the sedentary dev and devops people some insight into healthy living. We did some Yoga right in the auditorium like last time, accompanies by sporadic bursts of hilarity when people understood how cramped up and inflexible their bodies have become.

### [D02T07: Adventures in Postgres management](https://rootconf.talkfunnel.com/2017/1-adventures-in-postgres-management) by[@ramananb](https://twittre.com/ramananb)
This talk kind of went over my head having never administered a Postgres cluster beyond RDS (which doesn't need much care). I'd just leave the video for your consumption.

{{<youtube -s0qfDz5rr0>}}

### [D02T08: Working with Secrets](https://rootconf.talkfunnel.com/2017/58-working-with-secrets) by Shrey Agarwal
While I had expectations of this talk, this was mostly a primer on [Hashicorp/vault]():

- Vault Architecture
  - Multi-part master key for sealing and unsealing, based on [Shamir's Secret Sharing](https://en.wikipedia.org/wiki/Shamir%27s_Secret_Sharing)
  - Encryption Key that only Vault knows
- Vault CLI usage
  - vault init
  - unsealing
  - sealing
- Automated secret management:
  - Always Sealed Approach
  - Always Unsealed Approach

As always the debatable point of why "always unsealed" approach is recommended came up. I left the talk with a feeling that I really need to read more on Vault to understand it's implications.

### Tea Break and Bahubali Scale
Had the chance to network with a DevOps person from BookMyShow, Radhe; who was also a friend of my colleague. The talk inadvertently turned to how they handled major movie releases. Then, someone innocnently commented about having gone and seen Bahbali 2, to this the person reacted with considerable pain saying, "We were all hands in during the Bahubali 2 release." It suddenly dawned on us how different it must be for people at BookMyShow when a movie is pre-expected to be a major hit and the scale will hit them on BoxOffice opening day. For a few seconds all of us were dumbstruck as we digested the implications on their workload.

{{<tweet 865072127094816769>}}

Thus, the second (for me) Rootconf ended. I don't know if I was any wiser for it, but as always I met new people from the DevOps circles around India and had a lot of interesting discussions. I'll probably start a workshop at my workplace for Kubernets and hashicorp tools, since I was now pretty comfortable with them, and may be that'd be my way to give back to the community that had assimilated me.
