---
title: Flock 2016 Notes
comments: true
tags: [flock, conference, fedora]
---

This year during first week of August (2-5.8.2016) I attended [Flock to Fedora](https://flocktofedora.org/) conference at Krakow.
This was my first time at Flock and I must say it was great event.

Big thumbs up to all the organizers for putting it together.
All the talks that I saw were great. And evening activities were even better :wink:.
Every conference night there was some social event prepared for all conference
attendees. Social events were great especially because I had a chance to meet
a talk to a lot of interesting people.


## Day 1

### Presentations I saw

#### [Fedora with Amazon EC2 Container Service by David Duncan](https://flock2016.sched.org/event/76ng/fedora-with-amazon-ec2-container-service)
David works for Amazon Web Services (AWS). He showed and explained how to deploy
Fedora Atomic Host to AWS and how to setup EC2 Container Service (ECS) running on
Fedora Atomic hosts.

#### [Towards an Atomic Workstation by David King](https://flock2016.sched.org/event/76ms/towards-an-atomic-workstation)
David  talked about OSTree. He briefly described what it is and how it can be
useful. Then he talked about Flatpack and both OSTree and Flatpack can be used on
workstations.

#### [How to use personal kanban for better organization by Haikel Guemar](https://flock2016.sched.org/event/76oH/how-to-use-personal-kanban-for-better-organization)
Haikel talked about using Kanban for planing your day to day tasks.
He put special emphasis on how bad and ineffective multitasking is and gave us
some basic tips how to avoid it.

#### [Containers in Production by Dan Walsh](https://flock2016.sched.org/event/6yp1/containers-in-production)
Dan started his talk speaking about COW filesystems and what are disadvantages of
using them in production environment. Then he talked about shared storage and why this is
better fit for production use. Then Dan showed demo of setup using Atomic Registry and
shared storage over NFS. In such setup docker pull is no longed needed. This is
because Atomic Registry has ability to unpack docker images to shared NFS storage,
so images are instantly available on all nodes that are using same NFS storage.

Second part of presentation was about System Containers. Dan talked about one
problem that all Atomic Hosts currently have and that is priority. Currently you
can't say that one docker container should be started before other and before you
can start any container you need start docker daemon. Because of this
Etcd and Flannel can't be start in Docker containers on Atomic Host. If you
configure Docker daemon to use Flannel networking then Flannel and Etcd must be
running when Docker daemon starts. If you have Etcd and Flannel in Docker containers
you can't start them without running Docker daemon.
Dan talked how tools (`runc` and `ocitools`) from
[Open Container Initiative](https://github.com/opencontainers) can solve this problem.
He also mentioned [Skopeo](https://github.com/projectatomic/skopeo). Skopeo is a
commandline tool for retrieving information about container images from registries without
need to download whole image.

#### [Application Containers and System Services by Honza Horak](https://flock2016.sched.org/event/76n0/application-containers-and-system-services)
Honza started by talking about best practices for writing Dockerfiles. He showed
those practices on Dockerfile snippets. Then he talked about building images using
[S2I](https://github.com/openshift/source-to-image) and how it can be used to
build containers images from source code without Dockerfile.

#### [Software Repository Management with Pulp by Ina Panova](https://flock2016.sched.org/event/76oT/software-repository-management-with-pulp)
Ina's presentation started as quick introduction to Pulp. Then she
described how mirroring upstream rpm repositories works in more detail.
She also talked about mirroring Docker registries, and how easy it is to extend
Pulp and support for new content types.


### Evening activity

#### Walking tour
For first conference evening organizers arranged guided walking tour through Krakow
historic center. Tour was really nice and I learned a lot of stuff about city history.
(Some I didn't even forget :smile: )


## Day 2

### Presentations I saw

#### [Bringing Developers into the Flock  by Brian Exelbierd and Dusty Mabe](https://flock2016.sched.org/event/76na/bringing-developers-into-the-flock)
Great talk from Brian and Dusty about Atomic Developer Bundle. They described why
it would be great for Fedora to build its own Atomic Developer Bundle to attract
developer that are using other platforms (Windows or OS X). Those developers
could then easily use Atomic Developer Bundle Vagrant boxes to get
quickly Docker/Kubernetes/Openshift running on Fedora.

#### [Nulecule - Packaging multi container applications by Ratnadeep Debnath](https://flock2016.sched.org/event/76oQ/nulecule-packaging-multi-container-applications)
Ratnadeep talked about Nulecule and AtomicApp. He described current problems with reusing
container images and deploying multicontainer applications and how Nulecule solving those
problems. Then Ratnadeep showed live AtomicApp demo. In this demo he deployed [Wordpress](https://github.com/projectatomic/nulecule-library/tree/master/wordpress-centos7-atomicapp) from
[nulecule-library](https://github.com/projectatomic/nulecule-library/) to different providers (Kubernetes, Marathon, local Docker instance).
He ended his presentation showing new AtomicApp feature `atomicapp index`.


#### [Docker in Production by Tomas Tomecek](https://flock2016.sched.org/event/76n4/docker-in-production)
Tomas talked about various problems when running Docker in production environment.
He talked about changes between different Docker versions and about same of features in
Docker 1.12, and also about old bugs that are still not fixed in current Docker version.
[Slides](https://tomastomecek.github.io/flock2016-talk/)


#### [Continuous security management via OpenScap Daemon by Jan Cerny](https://flock2016.sched.org/event/7GlE/continuous-security-management-via-openscap-daemon)
Jan started his talk by describing different types of vulnerabilities. Than he
talked about OpenScap project especially how OpenScap can help with detecting vulnerabilities.
At the end of his presentation Jan showed OpenScap daemon in action on his laptop, and how to
use OpenScap to scan containers and images using `atomic scan` command.

### Evening activity

#### Cruise Krakow
Dinner and cruise on the Visla River.

## Day 3

#### OpenShift by Maciej Szulik
Great workshop about OpenShift basics also covering some more advanced topics.
You can find full workshop scenario in Maciejs Github [talks repository](https://github.com/soltysh/talks/blob/master/2016/flock/scenario.md)


### Eventing activity

#### Brewery Lubicz
Another great evening with lots of food and great beer :wink:


## Day 4

#### [Fedora Hubs Meetup/Hackfest by Pierre-Yves Chibon](https://flock2016.sched.org/event/7ig9/fedora-hubs-meetuphackfest)
Pierre showed live demo of Fedora Hubs. Then there was interesting discussion about Hub
integrations with other services.

#### [Building Modules Workshop by Langdon White](https://flock2016.sched.org/event/7vKw/building-modules-workshop)
This wasn't originally on schedule, but there was last minute empty slot, so
Langdon and others working on Modularity put this together night before.
Because of conflict with another talk I didn't attended Langdon presentation about modularity,
so at begging I've been little lost. They showed how module definition looks and how to build one.
Then there was quite big discussion about modules and problems they are solving and also about new problems they introduce that aren't solved yet.
Whole concept of modules was really interesting and I have to look into this deeper.
