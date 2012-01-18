---
layout: page
title: Livid
header: Thoughts, Writings and Dreams
---

这是 Livid 的个人网站的最新版本，使用 [Jekyll](https://github.com/mojombo/jekyll) 搭建。

#### 最近发布的文章

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>