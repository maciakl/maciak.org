---
layout: simple
title: Security
subtitle: Infosec Tips
image: termn.jpg
order: 8
---

### Infosec Tips

Making your computer secure:

<ul>
{% for pg in site.security %}
    <li><a href="{{pg.url}}">{{pg.title}}</a> - {{pg.description}}</li>
{% endfor %}
</ul>

### Lockpicking

<ul>
{% for pg in site.lock %}
    <li><a href="{{pg.url}}">{{pg.title}}</a> - {{pg.description}}</li>
{% endfor %}
</ul>
