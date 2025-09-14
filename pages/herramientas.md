---
title: "Herramientas y Repositorios"
permalink: /herramientas/
classes: full-bleed
---

<p>Listado generado desde <code>_data/repositorios.yml</code>.</p>

{% assign nodos = site.data.universidades | indexify: "id" %}
{% assign items = site.data.repositorios %}

<ul class="taxonomy__index">
{% for r in items %}
  {% assign uni = nodos[r.nodo_id] %}
  <li>
    <h3><a href="{{ r.url }}" target="_blank" rel="noopener">{{ r.nombre }}</a></h3>
    <p>{{ r.descripcion }}</p>
    <p><strong>Nodo:</strong> {{ uni.nombre }} ({{ r.nodo_id }}) · <strong>Tipo:</strong> {{ r.tipo | capitalize }} · <strong>Licencia:</strong> {{ r.licencia }}</p>
    {% if r.topics %}<p><em>Topics:</em> {{ r.topics | join: ", " }}</p>{% endif %}
    {% if r.homepage %}<p><a href="{{ r.homepage }}" target="_blank" rel="noopener">Página</a></p>{% endif %}
    {% if r.docs_url %}<p><a href="{{ r.docs_url }}" target="_blank" rel="noopener">Documentación</a></p>{% endif %}
  </li>
{% endfor %}
</ul>
