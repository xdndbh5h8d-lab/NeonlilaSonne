markdown<br>
---
<br>layout: page
<br>title: "Inhalt nach Themen"
<br>permalink: /kategorien/
<br>---
<br><div class="category-grid">
<br>{% assign cat_list = "kunst,musik,rituale,occultes,ownmagic,wissenschaft,journal,blick durch die maske,verschwörungstheorien, paranoides Gedankengut, fakten, storys " | split: "," %}
<br>{% for cat in cat_list %}
<br> {% assign posts = site.categories[cat] %}
<br> {% if posts.size > 0 %}
<br> <h2 id="{{ cat }}">{{ cat | replace: "kunst", "Kunst & Deutschrap" | replace: "rituale", "Rituale & Praxis" | replace: "wissenschaft", "Psychologie & Wissenschaft" | replace: "journal", "Dokumentieren" }}
</h2><br> 
<ul><br> {% for post in posts %}
  <br> <li><a href="{{ post.url }}">{{ post.title }}</a> <small>({{ post.date | date: "%d.%m.%Y" }})</small></li><br> {% endfor %}
  <br> </ul><br> {% endif %}
  <br>{% endfor %}
  <br></div><br>
