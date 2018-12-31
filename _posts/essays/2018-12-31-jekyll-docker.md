---
layout: post
title: 用 Docker 运行 Jekyll
category: essays
---

很喜欢 Jekyll 这个静态网站生成框架，这个站就是用 Jekyll 做的。但是总感觉 Jekyll 的安装是一件很麻烦的事情。直接安装到 Host OS 上是一种污染环境的方法，而我又不想去花时间研究到底怎样才是管理 Ruby 依赖包的最科学的方式。所以用 Docker 来让这个网站可以在本地跑起来，是最好的方式了。而且 Docker 这样的方式也通吃 macOS 和 Windows。

首先是获取 Jekyll 的最新 Docker 镜像：

```bash
docker pull jekyll/jekyll
```

然后切换到你的 Jekyll 网站所在目录，执行这条命令启动 Jekyll：

```bash
docker run --volume="$PWD:/srv/jekyll" \
-p 4000:4000 --name blog -it jekyll/jekyll \
jekyll serve
```

然后就可以通过 localhost:4000 访问到这个 Jekyll 的动态生成结果了。

因为我们给这个 Container 赋予了名字 blog，所以之后如果再次需要这个 Container 的话，只需要这样就可以启动：

```bash
docker start blog
```