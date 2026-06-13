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
 <h2 id="{{ cat }}">{{ cat | replace: "kunst", "Kunst & Deutschrap" | replace: "rituale", "Rituale & Praxis" | replace: "wissenschaft", "Psychologie & Wissenschaft" | replace: "journal", "Doku & Journal" | replace: "blick durch die maske", "Blick durch die Maske" | replace: "persönliche-heilung", "🌱 Persönliche Heilung & Überleben" }}
 </h2>
 <ul>
 {% for post in posts %}
   <li><a href="{{ post.url }}">{{ post.title }}</a> <small>({{ post.date | date: "%d.%m.%Y" }})</small></li>
 {% endfor %}
 </ul>
 {% endif %}
{% endfor %}

</div>

<style>
  .category-grid {
    max-width: 1200px;
    margin: 40px auto;
    padding: 20px;
  }

  .category-grid h2 {
    margin-top: 40px;
    margin-bottom: 20px;
    padding-bottom: 10px;
    border-bottom: 2px solid #e0e0e0;
    color: #333;
  }

  .category-grid h2:first-child {
    margin-top: 0;
  }

  .category-grid ul {
    list-style: none;
    padding: 0;
  }

  .category-grid li {
    padding: 10px 0;
    border-bottom: 1px solid #f0f0f0;
  }

  .category-grid li:last-child {
    border-bottom: none;
  }

  .category-grid a {
    color: #1f5fa3;
    text-decoration: none;
    font-weight: 500;
  }

  .category-grid a:hover {
    text-decoration: underline;
  }

  .category-grid small {
    color: #999;
    margin-left: 10px;
  }
</style>
