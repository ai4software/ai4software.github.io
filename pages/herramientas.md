---
title: "Herramientas y Repositorios"
permalink: /herramientas/
classes: full
toc: false
---

<p>Listado generado desde <code>_data/repositorios.yml</code>.</p>

{% assign nodos = site.data.universidades | indexify: "id" %}
{% assign items = site.data.repositorios %}

<div class="entries-grid tools-grid">
  <div class="grid__wrapper">
    {% for r in items %}
      {% assign uni = nodos[r.nodo_id] %}
      <article class="grid__item">
        <div class="archive__item tool-card">
          <div class="tool-card__media">
            {% if r.logo %}
              <img src="{{ r.logo | relative_url }}" alt="Logo de {{ r.nombre }}" loading="lazy">
            {% elsif r.homepage %}
              <img src="https://www.google.com/s2/favicons?domain={{ r.homepage | uri_escape }}&sz=128"
                   alt="Favicon de {{ r.nombre }}" loading="lazy">
            {% else %}
              <img src="{{ '/assets/images/herramientas/default.png' | relative_url }}"
                   alt="Logo no disponible" loading="lazy">
            {% endif %}
          </div>

          <h3 class="archive__item-title" style="margin-top:.25rem">
            <a href="{{ r.url }}" target="_blank" rel="noopener">{{ r.nombre }}</a>
          </h3>

          {% if r.descripcion %}
          <p class="archive__item-excerpt">{{ r.descripcion }}</p>
          {% endif %}

          <p class="page__meta">
            <strong>Nodo:</strong> {{ uni.nombre }} ({{ r.nodo_id }}) ·
            <strong>Tipo:</strong> {{ r.tipo | capitalize }} ·
            <strong>Licencia:</strong> {{ r.licencia }}
          </p>

          {% if r.topics %}
            <p class="page__meta"><em>Topics:</em> {{ r.topics | join: ", " }}</p>
          {% endif %}

          <div class="tool-card__links">
            {% if r.homepage %}<a class="btn btn--primary" href="{{ r.homepage }}" target="_blank" rel="noopener">Página</a>{% endif %}
            {% if r.docs_url %}<a class="btn" href="{{ r.docs_url }}" target="_blank" rel="noopener">Documentación</a>{% endif %}
          </div>
        </div>
      </article>
    {% endfor %}
  </div>
</div>
