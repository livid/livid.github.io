---
layout: post
title: Dark Mode
category: essays
---

大概是由于这两年[新的显示器](https://www.apple.com/pro-display-xdr/)的亮度越来越高，支持 Dark Mode，从操作系统到 App，再到网站，都已经变成一件用户和开发者都有强烈需求去做的事情。

最近花了一些时间，对这个博客的 CSS 进行了一些小小的调整，现在也可以根据操作系统的设置，自动支持 Dark Mode 了。只是这样的支持，相比那些从一开始设计时就考虑到 Dark Mode 的设计，大概并不完美。Dark Mode 并不只是简简单单地把颜色 invert，而是需要考虑对比度及新设备（OLED）特性，全盘考虑的新设计。

最近几年，在 [Can I Use](https://caniuse.com/) 上追踪最新的浏览器标准的进化，对我而言是一件非常有乐趣的事情。能够将这些新特性以恰当的方式在 [V2EX](https://www.v2ex.com/) 上实施，是一件非常有意思的事情。一个网站如果能够在前端和后端的技术上，都时刻保持更新，那么保持更新这个动作本身，无论是对于网站还是做这件事情人，都是有价值的。

说到对新技术的支持，最近在 V2EX 上完成部署的一个新更新，就是现在 V2EX 可以支持通过 [JSON Feed](https://jsonfeed.org/) 将节点的最新内容输出。然后就可以通过支持 JSON Feed 的 RSS 阅读器，比如 [NetNewsWire 5.0](https://ranchero.com/netnewswire/) 或者 [Feedbin](https://feedbin.com/) 来订阅指定节点的最新内容。NetNewsWire 5.0 是新近发布的一款 RSS 阅读器，实现得简直就像是来自 Apple 的作品。

下图是用 NetNewsWire 5.0 订阅 V2EX 的分享创造节点的效果：

![](https://i.v2ex.co/30v518br.png)

分享创造节点的 JSON Feed 地址：

[https://www.v2ex.com/feed/create.json](https://ranchero.com/netnewswire/)

这种阅读 V2EX 内容的方式会和直接访问网站很不一样：所有的内容以创建时间排序，不会受到排序算法的影响。用户可以使用一款自己喜欢的 Native App 来指定订阅自己真正感兴趣的内容，很多杂音会在这个过程中被排除。同时 JSON Feed 的输出中也不会有广告。是的，我想我永远不会去在 JSON Feed 中加广告，我希望就去保持一个尽可能纯粹的内容输出格式。如果有一天有更多的人通过这种方式来阅读 V2EX 上的内容，我会觉得这些选择帮助他们节省了时间，会很有意义。

