# jesus-tere-powerups — Documentación

## ⚠️ REFERENCIA CRÍTICA DE ESTRUCTURA

**📌 NOTA: Esta sección NO se cambia salvo que cambie la estructura real del repositorio. No omitirla al actualizar la documentación.**

```
jesus-tere-powerups/
├── DOCUMENTATION.md      ← este archivo (la única documentación del repo)
├── install.sh            ← instalación en un ordenador nuevo: enlaza cada skill en ~/.claude/skills/
├── update.sh             ← desde el ordenador donde se edita (Marc): commit + push a GitHub
├── pull.sh               ← desde los ordenadores de Jesús y Tere: recibir actualizaciones (auto-ejecuta install.sh)
└── skills/               ← todas las habilidades del sistema, en español
    ├── brainstorming/SKILL.md
    ├── destila/SKILL.md
    ├── doc-actualizar/SKILL.md
    ├── doc-nueva/SKILL.md
    ├── planifica/SKILL.md
    └── prepara-investigacion/SKILL.md
```

---

## Propósito

Adaptación al español (de España) del sistema **Tríada de Agentes** de Marc
(`surfvani/marc-jovani-powerups`), preparada para **Jesús y Tere**: habilidades
traducidas, sin jerga de programación, y generalizadas para cualquier tipo de
proyecto (marketing del colegio, SEO de la web, captación de alumnos, plan de
introducción de la IA en el colegio…).

Se construye en el ordenador de Marc y se instala en los ordenadores de Jesús y
Tere clonando este repositorio y ejecutando `./install.sh`. Para las
actualizaciones: Marc edita aquí → `./update.sh` → sus ordenadores ejecutan
`./pull.sh`.

**⚠️ No ejecutar `install.sh` en el ordenador de Marc** — instalaría estos
skills en su Claude Code personal, conviviendo con los originales en inglés y
duplicando funciones.

---

## Regla nº 1 de este repo — adaptación viva

En el repo de Marc la ley es el «porte literal, byte a byte» (verbatim-port).
**Aquí es exactamente lo contrario:** cada skill es una TRADUCCIÓN + ADAPTACIÓN
de su original. Los originales en inglés son solo referencia histórica.

**Nunca "re-sincronizar" un skill desde su original en inglés** — se pisarían
las adaptaciones hechas a propósito.

Principio de adaptación (palabras de Marc): *"usa lo que ya hay, adapta solo lo
obvio"* — es decir: idioma, ejemplos de programación → ejemplos genéricos,
menciones a Marc → Jesús/Tere, y referencias cruzadas apuntando a los nombres
nuevos en español.

---

## La tríada (mapa mental)

| Fase | Agente | Skills |
|---|---|---|
| Fase 1 · Planificar (sesión 1) | Planificador (Claude Code) | `/planifica` + `/brainstorming` + `/prepara-investigacion` |
| Investigación | Satélite (Claude web, Deep Research) | — (recibe los prompts, devuelve informes) |
| Fase 2 · Ejecutar (sesiones 2…N) | Ejecutor (Claude Code, sesión fresca) | lee el build plan; `/doc-nueva`, `/doc-actualizar`, `/continuia` |
| Transversal | cualquiera | `/destila` |

Mapa visual completo: artifact «Tríada de Agentes — Jesús & Tere» (2026-07-13).

---

## Catálogo de skills

### `planifica`

- **Original:** `plan-build` (marc-jovani-powerups) — ex-snippet "plania"
- **Qué hace:** el corazón de la tríada. Pone al agente en modo planificador: brainstorming (paso 2, vía /brainstorming), investigaciones intercaladas con agentes satélite, y creación incremental del documento de build plan con todo lo que el ejecutor necesita: TODOs con checkpoints 🔬, Protocolo de Continuidad Entre Sesiones, Registro de Sesiones, Protocolo de Documentación, Regla del Multiplicador 10x, y el prompt de arranque SIEMPRE en el chat (nunca enterrado en el documento).
- **Adaptaciones aplicadas:** traducción íntegra; ⚠️ eliminada la carga de `/how-marc-works` (paso 1); ⚠️ corregida la referencia obsoleta al snippet «resss» de TextExpander (ahora apunta a `/prepara-investigacion`, igual que el resto de menciones); «EDITDOC tool» → «herramienta Edit»; ejemplos dev (entrenar modelos, GPUs, frameworks) → genéricos (campaña de captación de familias, plataformas); disparadores y anti-patrones del Protocolo 10x generalizados (herramienta/plataforma/método en vez de framework/training config); ⚠️ ELIMINADO el Protocolo de Estado Activo completo — pregunta obligatoria, tabla 🚨/🟢 y reglas de promoción de hitos (decisión de Marc 2026-07-13: resolvía un problema de la cartera de sistemas vivos monetizados de Marc; para J&T era aparato de más) — queda solo una pregunta suave en el brainstorming sobre cosas ya en marcha; **NOTA para continuia:** al adaptarlo habrá que quitar sus referencias a «Active State» y a filas 🚨; enlazado con el cierre-en-chat del /brainstorming adaptado («el resumen final aprobado es la semilla del build plan»); commit condicionado a «si el proyecto usa git»; añadida una línea al Protocolo de Documentación indicando que el build plan mande al ejecutor usar `/doc-nueva` y `/doc-actualizar`; «Section 11» (resto de un proyecto antiguo) → «el Registro de Sesiones».
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

### `prepara-investigacion`

- **Original:** `research-prompt-instructions` (marc-jovani-powerups) — ex-snippet "resss"
- **Qué hace:** carga las instrucciones para redactar buenos prompts de investigación profunda (deep research) para el agente satélite: cambio de paradigma, nada de tecnología abandonada, contextualización completa (el satélite tiene CERO contexto), división en varios prompts, y validación de resultados al volver.
- **Adaptaciones aplicadas:** traducción íntegra; ejemplos de desarrollo/audio (DDSP, RAVE, JUCE, C++) → ejemplos genéricos (herramienta desde cero, difusión del colegio); «codebase» → «documentos del proyecto». Además, mejoras generalizadas desde un prompt que Marc escribió para un proyecto de Jesús (2026-07-13): marco «no sabes lo que no sabes», bloque APRENDE DE LOS QUE YA LO HAN HECHO (precedentes: tasa de éxito, acogida, polémicas y cómo se arreglaron, pros/contras), temas colaterales, bullet de máxima probabilidad de éxito, y la pregunta «¿hace falta una segunda investigación?» en la validación.
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado; mismo día: añadidos generalizados del prompt de Jesús, retro-portados también al skill inglés original de Marc como v1.2)

### `doc-nueva`

- **Original:** `doc-new-project` (marc-jovani-powerups) — ex parte del snippet "finnn"
- **Qué hace:** crea el DOCUMENTATION.md de un proyecto desde cero: objetivo de tamaño pactado antes de escribir (~500-700 líneas por defecto), sección bloqueada de estructura de archivos al principio, reglas anti-verborrea, y sección de conocimiento duramente ganado que no se borra jamás.
- **Adaptaciones aplicadas:** traducción íntegra; «app / codebase / server» → «proyecto»; filtros del comando `tree` explicados en genérico (carpetas de sistema, multimedia pesado, archivos generados); «tiempo de depuración» → «tiempo invertido en resolver problemas»; NOTA sobre `tree` a petición de Marc (para qué sirve, aplica a apps y a cualquier proyecto con archivos, y plan B si no está instalado: investigar el directorio a mano); renombrado `crea-doc` → `doc-nueva` (el par queda `doc-nueva` / `doc-actualizar`).
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

### `doc-actualizar`

- **Original:** `doc-update-project` (marc-jovani-powerups) — ex parte del snippet "finnn"
- **Qué hace:** actualiza el DOCUMENTATION.md al final de una sesión: lista todo lo hecho, relectura fresca desde disco obligatoria (nunca de memoria), actualizaciones dirigidas (nunca reescribir entero), objetivo ~1% más corto como pasada de optimización, conocimiento duramente ganado intocable, y verificación final punto por punto.
- **Adaptaciones aplicadas:** traducción íntegra; «sesión de código» → «sesión de trabajo»; misma nota de `tree` con plan B (investigar el directorio a mano si no está instalado); referencia cruzada a `/doc-nueva`.
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

### `brainstorming`

- **Original:** skill `brainstorming` del plugin Superpowers v6.1.1 (fuera del repo de Marc)
- **Qué hace:** la disciplina de diseño antes de construir: preguntas de una en una (mejor con opciones), 2-3 enfoques con recomendación, diseño presentado por secciones con aprobación en cada una, PUERTA-DURA (nada se implementa sin diseño aprobado, por simple que parezca), documento de especificación con auto-revisión, y puerta de revisión final del usuario.
- **Adaptaciones aplicadas:** traducción íntegra; ⚠️ estado final `writing-plans` → **volver a /planifica** (el skill que lo invoca en la tríada) — cambiado en checklist, diagrama de flujo, sección Implementación y nota final; ⚠️ sección «Visual Companion» (dependía del servidor del plugin) → reescrita como **«Apoyo visual para decidir (artifacts)»** usando el skill `artifact-design` + herramienta Artifact nativos de Claude Code (nota de Marc 2026-07-13: infografías para TOMA DE DECISIONES en planificaciones difíciles; conserva la disciplina justo-a-tiempo, ofrecimiento en mensaje propio, y test visual-vs-texto por pregunta); referencia a `elements-of-style` → «escribe claro y conciso»; ⚠️ SIN documento de spec (decisión de Marc 2026-07-13: sobraba — el brainstorming vive dentro de /planifica y el único artefacto del proceso es el build plan): el cierre oficial es en el chat — resumen final del diseño consolidado + auto-revisión sobre ese texto (huecos, contradicciones, alcance, ambigüedad; correcciones a la vista) + OK final del usuario — y el resumen aprobado es la semilla que /planifica transcribe en el build plan; al desaparecer el spec desaparece también su commit (git queda confinado a continuia); ejemplos dev → genéricos de colegio.
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

### `destila`

- **Original:** `distill-general-conversations` (marc-jovani-powerups)
- **Qué hace:** convierte cualquier transcript largo (reunión, clase, estrategia, retro, llamada, sesión con IA) en un documento estructurado y fiel: detecta el registro solo, aplica el paquete de formato que toca (decisiones, tareas, FAQ, notas de voz…), y ejecuta las auditorías obligatorias anti-fabricación, de asunciones y de coherencia interna antes de cerrar.
- **Adaptaciones aplicadas:** traducción íntegra (15 secciones completas); idioma de salida por defecto ENGLISH → ESPAÑOL (y la pregunta de pre-vuelo ofrece ESPAÑOL primero); etiquetas de bloques en español (DECISIÓN, ACCIÓN, OJO, EN LA PRÁCTICA) y marcas en español ([INFERIDO DEL CONTEXTO], [POSIBLEMENTE: X], [SUPERADO], [ASUMIDO EN LA FUENTE — SIN VERIFICAR]); ejemplos de audio → genéricos; en la description se eliminaron las referencias a los skills distill-* que no existen en este sistema; entradas fijas del registro de nombres: Jesús y Tere ⚠️ PENDIENTE de que Marc fije los nombres completos (se mantiene la entrada de Marc Jovani).
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

---

## Plan de trabajo

| Orden | Skill nuevo | Original | Estado |
|---|---|---|---|
| 1 | `prepara-investigacion` | research-prompt-instructions | ✅ aprobado y publicado |
| 2 | `doc-nueva` | doc-new-project | ✅ aprobado y publicado |
| 3 | `doc-actualizar` | doc-update-project | ✅ aprobado y publicado |
| 4 | `destila` | distill-general-conversations | ✅ aprobado y publicado |
| 5 | `brainstorming` | superpowers/brainstorming v6.1.1 | ✅ aprobado y publicado |
| 6 | `planifica` | plan-build | ✅ aprobado y publicado |
| 7 | `continuia` | handoff-continuia | pendiente — al llegar, Marc decide lo de whatdocs/defcode |
| 8 | PERSONA conductora de la tríada | CLAUDEDEV como referencia de formato | pendiente — **último paso del proceso** (Marc la instala en sus ordenadores) |

Proceso pactado: **uno a uno** — Claude adapta → abre el documento en pantalla → Marc revisa → siguiente.

---

## Decisiones registradas (pendientes de aplicar)

1. **`continuia` — whatdocs/defcode:** la plantilla de traspaso original cierra con «LOAD /whatdocs … /defcode» (skills de código en producción). Marc decidirá qué hacer cuando lleguemos a ese skill (nota 2026-07-13).
2. **`artifact-design` como herramienta de decisión visual (nota de Marc, 2026-07-13):** en `brainstorming` y/o `planifica`, integrar el skill `artifact-design` (viene de serie con Claude Code) para que, en planificaciones difíciles, el agente cree un artifact tipo infografía QUE AYUDE A TOMAR DECISIONES dentro de la planificación inicial. Contexto: Tere es más de leer, Jesús es más visual — el apoyo visual le ayuda en el brainstorming. Esto además **sustituye** al «Visual Companion» de Superpowers (que dependía de infraestructura del plugin y se quita).
3. **Nombres completos de Jesús y Tere** para el registro anti-errores de transcripción de `/destila` — pendiente de que Marc los pase.
4. **PERSONA conductora de la tríada (nota de Marc, 2026-07-13) — SE CREA AL FINAL DEL PROCESO:** redactar un documento de persona para los ordenadores de Jesús y Tere — será la 4.ª de su sistema de personas (su Claude Code, igual que el de Marc, pregunta al inicio de sesión qué persona cargar). Debe saber **conducir la tríada de agentes de principio a fin**: cuándo activar `/planifica`, cómo llevar los prompts al satélite y traer los resultados, cómo arrancar sesiones ejecutoras frescas, cuándo cerrar con `/continuia`. Claude redacta el documento (propuesta: guardarlo en `personas/` dentro de este repo — `install.sh` no toca esa carpeta); Marc lo instala localmente en su sistema de personas. Esto resuelve también la línea «PERSONA: CLAUDEDEV» de la plantilla de traspaso de `continuia` → apuntará a esta persona nueva.
   **Segunda dimensión — igual de importante (brief de Marc, 2026-07-13, capturar la esencia SIN transcribir literalmente):** Jesús y Tere son muy capaces pero nuevos en este sistema. A veces aparecen creencias limitantes («esto es demasiado grande para mí», «yo nunca podría construir algo así») y pueden sentirse intimidados — cuando la realidad es que han construido cosas enormes: un colegio grande (dos edificios), una empresa durante ~40 años, y llevan con la IA desde el primer día. Tienen 70 años; sus creencias limitantes son distintas de las de Marc (él no duda de poder construir cualquier cosa con IA; ellos jamás dudarían de poder construir un colegio — cada uno tiene las suyas). La persona debe, por tanto: (1) **dominar la operación de la tríada** de principio a fin; y (2) **guiarlos, animarlos y ponérselo fácil** — no solo animar: guiar activamente, explicar con calma qué se está haciendo y por qué, celebrar los avances, y recordarles (cuando toque, sin ser pesada) que construir cosas grandes es exactamente lo que llevan haciendo toda la vida. Para Marc el sistema es casi un sexto sentido — una extensión de sí mismo porque lo construyó; para ellos es territorio nuevo. La persona es el puente.
5. **Remoto GitHub:** `surfvani/jesus-tere-powerups`, **privado** — se crea y se hace el primer push cuando Marc apruebe el primer skill.

---

## Conocimiento duramente ganado

- **(2026-07-13)** Hallazgos de la lectura íntegra de los originales que la adaptación debe corregir: (a) `plan-build` línea 176 aún referencia el snippet antiguo «resss» de TextExpander; (b) el `brainstorming` de Superpowers termina invocando `writing-plans` (no existirá aquí — debe volver a `/planifica`); (c) la regla dura nº 7 de `handoff-continuia` exige inglés US para todo lo escrito (invertir a español); (d) `distill-general-conversations` saca los documentos en INGLÉS por defecto y su registro de nombres solo conoce «Marc Jovani».
