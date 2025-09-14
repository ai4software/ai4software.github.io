# Contribuir al sitio

Edite los YAML de `_data/` y adjunte logos en `assets/img/universidades/` (PNG transparente, máx. 512x512).

## Universidad (ejemplo)
```yaml
- id: US
  nombre: Universidad de Sevilla
  siglas: US
  pais: España
  ciudad: Sevilla
  web: https://www.us.es
  logo: /assets/img/universidades/US.png
  contacto: { nombre: "Nombre Apellido", email: "nombre@us.es" }
  lineas: ["IA", "Ingeniería de Software"]
  github_org: https://github.com/us-lab
```

## Repositorio (ejemplo)
```yaml
- nombre: Analizador-Deuda-Tecnica
  nodo_id: US
  url: https://github.com/us-lab/analizador-deuda
  descripcion: "Herramienta para estimación de deuda técnica con IA."
  tipo: software
  licencia: Apache-2.0
  lenguajes: ["Python"]
  topics: ["ml", "static-analysis"]
  homepage: ""
  docs_url: ""
```
