---
title: "Universidades de la Red"
permalink: /universidades/
---

{% assign nodos = site.data.universidades %}

<div class="grid__wrapper">
{% for u in nodos %}
  <div class="grid__item">
    <div class="card">
      <div class="card__image">
        <img src="{{ u.logo | default: '/assets/img/universidades/placeholder.png' }}" alt="{{ u.siglas }} logo" style="max-height:80px;">
      </div>
      <div class="card__content">
        <h3>{{ u.nombre }} ({{ u.siglas }})</h3>
        <p>{{ u.ciudad }}, {{ u.pais }}</p>
        <p><a href="{{ u.web }}" target="_blank" rel="noopener">Sitio web</a> • 
           <a href="{{ u.github_org }}" target="_blank" rel="noopener">GitHub</a></p>
        <p><strong>Líneas:</strong> {{ u.lineas | join: ", " }}</p>
        <p><strong>Contacto:</strong> {{ u.contacto.nombre }} &lt;{{ u.contacto.email }}&gt;</p>
      </div>
    </div>
  </div>
{% endfor %}
</div>
