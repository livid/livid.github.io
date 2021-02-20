---
layout: post
title: DOSBox Pure
category: guides
---

[DOSBox Pure](https://github.com/schellingb/dosbox-pure) 是一个可以用于在 RetroArch 里模拟 DOS 游戏的插件。关于 RetroArch 的配置，可以看之前的这篇文章：

* [RetroArch 配置使用](https://livid.v2ex.com/guides/2021/01/08/retroarch.html)

相比之前的其他 DOSBox 的 fork，DOSBox Pure 除了可以支持 RetroArch 的状态保存及 Shader 功能外，还可以支持：

* 直接从 zip 文件包中加载游戏
* 自动挂载 zip 文件包里的 CD Image，考虑到之前的很多老 DOS 游戏使用 CD 作为音乐源
* 加载一个外部的 SF2 文件，来提供更好的 MIDI 音乐效果

用来体验老游戏真的是非常不错的体验。比如这是 DOS 下的经典游戏《仙剑奇侠传》在 DOSBox Pure 里运行的截图（加上了 CRT Caligari Shader 的效果）：

![](/images/dos-pal.png)

KOEI 的大航海时代 II：

![](/images/dos-uncharted-waters-ii.png)

Maxis 的 SimCity 2000：

![](/images/dos-sc2k.png)

甚至当年 id Software 的 3D 大作 Quake：

![](/images/dos-quake.png)

## 性能

在摩尔定律尚还非常有效的 1990 年代，不同的 DOS 游戏对于性能的需求非常不一样。Bullfrog 的 Theme Park 需要 DOSBox 模拟一台 386 电脑，否则就会因为一切动画过快而造成游戏根本没法玩。而 Quake 这样的游戏则需要 DOSBox 尽可能快地运行。

因此，你可能需要在游戏开始运行之后，根据具体的游戏选择需要的性能级别：

![](/images/dos-cycles.png)

目前 DOSBox Pure 还不能支持读取 zip 包中的 dosbox.conf 配置文件。如果将来能够支持的话，那么就可以通过 dosbox.conf 来为不同的游戏提供不同的定制选项了。

## 获取 DOS 游戏

现在是 2021 年了，但是合法地获取 DOS 游戏文件依然是可能的。比如你可以通过以下渠道买到 DOS 游戏：

* [GOG](https://www.gog.com/) - 可以找到大部分在欧美发行过的 DOS 游戏
* [Origin](https://www.origin.com/) - EA Origin 上提供的 SimCity 2000 SE 其实就是基于 DOSBox 模拟的，可以在安装目录里找到 DOS 游戏的文件