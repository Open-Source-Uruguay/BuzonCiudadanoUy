# Buzón Ciudadano UY

**⚠️ Atención: Este archivo se encuentra en desarrollo, está sujeto a modificaciones ⚠️**

---

## Objetivo

El objetivo principal es la creación de un sistema para reportar problemas que los ciudadanos encuentren en la vía pública ya sea problemas en las veredas, calles, alumbrado, etc. Actualmente se está teniendo de referencia el [Buzón Ciudadano](https://montevideo.gub.uy/formularios/buzon_ciudadano) de la Intendencia de Montevideo. La idea no es que sea un remplazo al Buzón, sino más bien una alternativa para las localidades que no tienen un sistema similar.

---

## Funciones

Actualmente las funciones principales serían:

* Reporte de problemas
* Sistema de Votos [^1]
* Visualización de problemas

---

## Desarrollo

Todavía no se definió en qué plataforma desarrollarlo.

### Repositorio

Tanto la app y el servidor que se utilizará estarán disponibles en este mismo repositorio, básicamente sería un "monorepo".

Se usará como flujo de trabajo algo similar a Gitflow teniendo una rama *main* para las versiones estables, *develop* para la integración de funciones y las ramas *feature* que tendrán las funciones en desarrollo.

[^1]: *El Sistema de Votos es para intentar evitar reportes duplicados además de prevenir reportes falsos, puede ser remplazado si se encuentra una mejor manera de realizar lo anteriormente mencionado.*
