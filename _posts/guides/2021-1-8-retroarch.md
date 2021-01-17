---
layout: post
title: RetroArch
category: guides
---

[RetroArch](https://www.retroarch.com) 是一个功能强大的模拟器前端。它的核心是一个叫做 [libretro](https://www.libretro.com) 的开源软件项目，基于 libretro 开发的 RetroArch 提供了一套管理多个不同模拟器系统的界面。这篇文章是关于 RetroArch 的配置和使用，并且会根据 RetroArch 的发展持续更新。

## Menu 菜单

RetroArch 提供了多种不同的使用界面方案。其中一个类似 PlayStation 的 XMB 界面方案，非常方便用手柄导航。如果你安装的 RetroArch 没有默认使用这个界面的话，你可以在这个位置打开：

```
Settings -> Drivers -> Menu -> xmb
```

![](/images/retroarch-menu-xmb.png)

## Core 核心

配置 RetroArch 的第一步，就是为你打算模拟的平台下载 Core。RetroArch 本身是一个启动器，对具体游戏平台的模拟，是通过不同的 Core 来实现。比如打算模拟 NES 的话，你可能会需要下载 FCEUmm 这个 Core。

作为一个已经发展了多年的成熟项目，RetroArch 包括了几乎所有游戏平台的模拟器 Core。甚至包括了一些非常专用的 Core，比如 [OpenLara](https://docs.libretro.com/library/openlara/) 和 [PrBoom](https://docs.libretro.com/library/prboom/) 这样专用于特定 PC 游戏的 Core。

下载新的 Core 的菜单位置：

```
Main Menu -> Load Core -> Download a Core
```

## Scan 扫描内容

在 Core 安装完成之后，接下来需要做的就是把内容添加到 RetroArch。

建议把不同平台的 ROM 文件分别放到不同的文件夹里，比如分别为 NES 和 SNES 建立不同的文件夹。然后在 RetroArch 菜单中选择：

```
Import Content -> Scan Directory -> 选择你存放 ROM 的目录
```

通常，这样就可以找到你组织好的内容。扫描完成后，RetroArch 界面里就会多出来刚刚找到的新游戏的 Playlist。RetroArch 会为每个平台的所有游戏建立一个 Playlist。

但是，在某些情况下，如果上面的方法没有找到新内容，那么你还可以试试：

```
Import Content -> Manual Scan
```

在 Manual Scan 模式下，你需要指定用哪个 Core 来扫描内容。Manual Scan 每次会用一个指定的 Core 扫描指定的一个文件夹，所以可以用这样的方式来一次性为一个平台生成 Playlist。

## Shader 画面特效

针对 CRT 显示器设计的老游戏，分辨率相比现代 PC，是很低的：

|Platform 平台|Resolution 分辨率|
|---|---|
|<img src="https://www.v2ex.com/static/gamedb/32/fc.gif" style="width: 16px; image-rendering: pixelated; vertical-align: text-bottom;" /> &nbsp;NES/Famicom|256&times;224|
|<img src="https://www.v2ex.com/static/gamedb/32/sfc.gif" style="width: 16px; image-rendering: pixelated; vertical-align: text-bottom;" /> &nbsp;Super NES/Super Famicom|256&times;224|
|<img src="https://www.v2ex.com/static/gamedb/32/genesis.gif" style="width: 16px; image-rendering: pixelated; vertical-align: text-bottom;" /> &nbsp;Geneis/Mega Drive|320&times;224|

因此，如果要在现代的高分辨率 LCD 屏幕上模拟老旧 CRT 电视机的效果，你可以使用 RetroArch 的 Shader 功能。在运行游戏的过程中呼出快捷菜单，然后在 Shader 菜单中选择一款 CRT Shader（适用于主机平台）或者 Handheld Shader（适用于手持平台）即可。

比如这是在 4K 分辨率下，没有使用 Shader 时的效果：

[![](/images/retroarch-contra-without-shader-4k.png)](/images/retroarch-contra-without-shader-4k.png)

作为对比，这是使用了 CRT Caligari 之后的效果：

[![](/images/retroarch-contra-with-shader-4k.png)](/images/retroarch-contra-with-shader-4k.png)

RetroArch 内置了几十款不同的 Shader。

## Rewind 回退

以前的很多老游戏的难度非常具有挑战性。比如在 [Konami](https://www.v2ex.com/gamedb/developers/konami/nes) 的经典游戏 [Contra 魂斗罗](https://www.v2ex.com/gamedb/nes/contra) 和 [Life Force 沙罗曼蛇](https://www.v2ex.com/gamedb/nes/life-force-salamander) 里，无论你积攒了多少火力，只要吃一颗子弹就全部重来。并且游戏里只有三条命。

RetroArch 提供了一种让你可以一命通关的方法——当你在游戏里出现失误的时候，只要按住 <kbd>R</kbd> 就可以回退。直到退回到失误出现之前。借助这种方式，一命通关很多很难的老游戏，或者在彩蛋区域进行反复探索，就只是时间问题了。

可以在 Quick Menu 的这个位置设置 Rewind 的速度，默认是 1 帧：

```
Quick Menu -> Rewind -> Rewind Frames
```

## Auto Save Load 自动保存和加载

以前的游戏大部分都没有提供存盘功能，尤其是 8 位机时代的游戏。其中一些游戏提供的解决方案是通关密码 Password，即你在打通了每一关之后会获得一个通关密码，之后只要输入这个通关密码就可以从这一关开始游戏。

而另外一种更简单的方式就是用 RetroArch 来自动记录和恢复游戏状态。你可以在设置菜单中的这个位置找到相关设置：

```
Settings -> Saving
```

![](/images/retroarch-auto-save.png)

推荐把下面的这两个选项都打开：

* Auto Save State
* Load State Automatically

这样在你每次关闭游戏时，状态会被自动保存。下次打开游戏时，状态会被自动加载。如果你的整个 RetroArch 文件夹是放在一个云同步的目录中的话，那么这些游戏状态就可以在你的电脑之间同步。然后就可以在任何一台电脑上继续你的任何游戏的进度。

## Screenshot 截图

按下 <kbd>F8</kbd> 就可以保存当前游戏的截图。RetroArch 提供了一个设置，让你可以保存 8-bit/16-bit 的原始像素的 PNG 格式，而不是应用了 Shader 之后的效果。

可以从菜单的这个位置打开或者关闭这个设置：

```
Settings -> Video -> GPU Screenshot
```

或者直接编辑 `retroarch.cfg` 中的这个属性：

```
video_gpu_screenshot = "false"
```

当 GPU Screenshot 设置打开时，截图保存的是带有 Shader 的效果及分辨率。当 GPU Screenshot 设置关闭时，截图保存的是游戏的原始分辨率，比如 NES 的 256&times;224。

部分 NES 模拟器 Core 支持剪裁掉横向或者竖向的 overscan 内容区域，因为某些游戏比如 [Super Mario Bros. 3](https://www.v2ex.com/gamedb/nes/super-mario-bros-3) 的 overscan 区域会有一些垃圾渲染（这些区域在真实硬件及 CRT 显示上不可见）。如果所有 overscan 内容区域都被保留，那么 NES 游戏的截图分辨率会是 256&times;240，如果都被剪裁，那么会是 240&times;224。

|No Crop|Crop Horizontal|Crop Vertical|Crop Both|
|---|---|---|---|
|![](/images/smb3-256x240.png)|![](/images/smb3-240x240.png)|![](/images/smb3-256x224.png)|![](/images/smb3-240x224.png)|
|256&times;240|240&times;240|256&times;224|240&times;224|

FCEUmm 的默认设置是：

* Crop Horizontal -> Off
* Crop Vertical -> On

这样出来的截图的分辨率是 256&times;224

你可以在 RetroArch 的 screenshots 目录找到截图的 .png 文件。

## Recording 视频录制

虽然用 OBS 或者 GeForce Experience 也可以录下游戏过程，但是 RetroArch 内置的游戏录制功能的特殊之处在于可以用一种无损（lossless）的方式以游戏的原始分辨率保存为一个 .mkv 文件。如果使用 RetroArch 本身来播放这个 .mkv 文件，那么还可以在上面应用 Shader 效果。

按下一次 <kbd>O</kbd> 即可开始录制，再按下一次 <kbd>O</kbd> 即可停止录制。你可以在 RetroArch 的 recordings 目录找到录制的 .mkv 文件。