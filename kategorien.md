---
layout: page
title: "Inhalt nach Themen"
permalink: /kategorien/
---

<div class="category-grid">
{% assign cat_list = "kunst,musik,rituale,occultes,ownmagic,wissenschaft,journal,blick durch die maske,verschwörungstheorien,paranoides Gedankengut,fakten,storys,persönliche-heilung" | split: "," %}
{% for cat in cat_list %}
  {% assign posts = site.categories[cat] %}
  {% if posts.size > 0 %}
    <h2 id="{{ cat }}">{{ cat | replace: "kunst", "Kunst & Deutschrap" | replace: "rituale", "Rituale & Praxis" | replace: "wissenschaft", "Psychologie & Wissenschaft" | replace: "journal", "Doku & Journal" | replace: "blick durch die maske", "Blick durch die Maske" | replace: "verschwörungstheorien", "Verschwörungstheorien" | replace: "paranoides Gedankengut", "Paranoides Gedankengut" | replace: "fakten", "Fakten" | replace: "storys", "Storys" | replace: "persönliche-heilung", "Persönliche Heilung" }}</h2>
    <ul>
      {% for post in posts %}
        <li><a href="{{ post.url }}">{{ post.title }}</a> <small>({{ post.date | date: "%d.%m.%Y" }})</small></li>
      {% endfor %}
    </ul>
  {% endif %}
{% endfor %}
</div>
