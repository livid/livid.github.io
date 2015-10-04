---
layout: page
title: Livid
header: Thoughts, Writings and Dreams
---

这是 Livid 的个人网站的最新版本，使用 [Jekyll](https://github.com/mojombo/jekyll) 搭建。

创作是一件开心的事情，沉浸只是因为纯粹的灵感。我希望自己的生命能够时常充满灵感，而文字就是这些愉快时光曾经存在过的证明。

#### Recent Published

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>