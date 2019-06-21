---
layout: simple
title: Web
subtitle: Design & Tools
image: web.jpg
order: 8
---

### Web Stuff

Bunch of useful web dev tips, tools and links:

<ul>
{% for pg in site.web %}
    <li><a href="{{pg.url}}">{{pg.title}}</a> - {{pg.description}}</li>
{% endfor %}
</ul>
