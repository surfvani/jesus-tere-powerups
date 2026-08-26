# jesus-tere-powerups — Documentación

## ⚠️ REFERENCIA CRÍTICA DE ESTRUCTURA

**📌 NOTA: Esta sección NO se cambia salvo que cambie la estructura real del repositorio. No omitirla al actualizar la documentación.**

```
jesus-tere-powerups/
├── DOCUMENTATION.md      ← este archivo (la única documentación del repo)
├── install.sh            ← instalación en un ordenador nuevo: enlaza cada skill en ~/.claude/skills/
├── update.sh             ← desde el ordenador donde se edita (Marc): commit + push a GitHub
├── pull.sh               ← desde los ordenadores de Jesús y Tere: recibir actualizaciones (auto-ejecuta install.sh)
├── global/               ← contenido para ~/.claude/CLAUDE.md (reglas globales: se cargan en TODAS las sesiones)
│   └── REGISTRO.md       ← el Registro por defecto; install.sh lo mantiene entre marcadores
├── personas/             ← personas para su selector (install.sh las enlaza automáticamente en ~/.claude/personas/)
│   ├── CLAUDEDEV.md      ← la persona para trabajar en la web y en cosas técnicas (impone el flujo obligatorio)
│   ├── GENERICO.md       ← persona genérica: sin instrucciones específicas + Registro por defecto
│   └── TRIADAAGENTES.md  ← la persona conductora de la tríada (planificar / investigar / ejecutar)
└── skills/               ← todas las habilidades del sistema, en español
    ├── brainstorming/SKILL.md
    ├── continuia/SKILL.md
    ├── deacuerdo/SKILL.md
    ├── defcode/SKILL.md          ← disciplina de ejecución en un sitio vivo (copias, ediciones dirigidas, idiomas, caché, comprobación segura)
    ├── destila/SKILL.md
    ├── doc-actualizar/SKILL.md
    ├── doc-nueva/SKILL.md
    ├── planifica/SKILL.md
    ├── prepara-investigacion/SKILL.md
    ├── simplll/SKILL.md
    └── whatdocs/SKILL.md         ← entender el sistema entero ANTES de tocar nada; termina en la puerta (/simplll + /deacuerdo)
```

**Dos familias de trabajo, un mismo sistema:**

| Familia | Persona | Para qué |
|---|---|---|
| Proyectos e iniciativas | `TRIADAAGENTES` | Planificar algo nuevo, investigar, ejecutarlo por sesiones |
| Web y cosas técnicas | `CLAUDEDEV` | Cambiar, arreglar o montar cosas en la web del colegio |

---

## Propósito

Adaptación al español (de España) del sistema **Tríada de Agentes** de Marc
(`surfvani/marc-jovani-powerups`), preparada para **Jesús y Tere**: habilidades
traducidas, sin jerga de programación, y generalizadas para cualquier tipo de
proyecto (marketing del colegio, SEO de la web, captación de alumnos, plan de
introducción de la IA en el colegio…).

Desde 2026-07-16, el sistema lo comparte también **Ali** (cofundadora de
Cinematic Composing junto a Marc; perfil más avanzado, sin relación con el
colegio) — por eso las descriptions de los skills hablan de «el usuario» en vez
de nombres concretos. La persona TRIADAAGENTES sigue siendo específica de Jesús
y Tere: Ali no la carga (si hace falta, se creará una variante para ella).

Se construye en el ordenador de Marc y se instala en los ordenadores de Jesús y
Tere (y de Ali) clonando este repositorio y ejecutando `./install.sh`. Para las
actualizaciones: Marc edita aquí → `./update.sh` → sus ordenadores ejecutan
`./pull.sh`.

**⚠️ No ejecutar `install.sh` en el ordenador de Marc** — instalaría estos
skills en su Claude Code personal, conviviendo con los originales en inglés y
duplicando funciones.

---

## Instalación en los ordenadores de Jesús y Tere

Requisitos del ordenador: **solo Claude Code**. Todo lo demás lo hace el agente con el prompt de abajo.

1. **El repo es PÚBLICO** (decisión de Marc, 2026-07-13) → no hace falta ningún token ni cuenta de GitHub. El clone y las actualizaciones futuras (`pull.sh`) funcionan directamente.
2. En su Claude Code, **pegar el prompt de instalación** (abajo) tal cual. Si el selector de personas pregunta al abrir la sesión: responder `none` (es una sesión de instalación).
3. Al terminar: **cerrar la sesión y abrir una nueva** — las 11 habilidades quedan disponibles, y el selector de personas debería ofrecer TRIADAAGENTES, CLAUDEDEV y GENERICO (si el selector tiene la lista fija dentro del hook, Marc la añade a mano al hook).
4. Actualizaciones futuras: `cd ~/jesus-tere-powerups && ./pull.sh` (trae lo nuevo y re-ejecuta el instalador solo).

### Prompt de instalación (copiar y pegar en su Claude Code)

```
Hola. Vamos a instalar el sistema de la Tríada de Agentes en este ordenador. Hazlo todo tú, paso a paso, explicando en una frase qué hace cada paso. Este ordenador solo tiene Claude Code — no des nada por instalado.

1. Comprueba que git funciona: git --version
   Si macOS abre una ventana pidiendo instalar las «herramientas de línea de comandos», dile al usuario que pulse Instalar, espera a que termine, y vuelve a comprobar.

2. Clona el repositorio del sistema en la carpeta de usuario:
   git clone https://github.com/surfvani/jesus-tere-powerups.git ~/jesus-tere-powerups

3. Ejecuta el instalador:
   cd ~/jesus-tere-powerups && ./install.sh
   (Conecta las 11 habilidades en ~/.claude/skills/, las 3 personas en ~/.claude/personas/, el bloque de reglas globales en ~/.claude/CLAUDE.md y el ajuste de las listas de tareas en ~/.claude/settings.json. Es seguro re-ejecutarlo.)

4. Verifica y enséñame el resultado:
   ls ~/.claude/skills/
   ls -la ~/.claude/personas/
   Deben aparecer las 11 habilidades (brainstorming, continuia, deacuerdo, defcode, destila, doc-actualizar, doc-nueva, planifica, prepara-investigacion, simplll, whatdocs) y las 3 personas (CLAUDEDEV.md, GENERICO.md, TRIADAAGENTES.md).
   Comprueba también que el instalador terminó diciendo «OK verificado en ~/.claude/settings.json». Si dijo FALLO, cuéntamelo en vez de seguir.

5. Para terminar, dime en 3 líneas y en lenguaje llano: qué ha quedado instalado, y que el usuario debe cerrar esta sesión y abrir una nueva — en la nueva, las habilidades ya estarán activas y podrá elegir persona al arrancar (TRIADAAGENTES para proyectos, CLAUDEDEV para la web).
```

---

## Qué sustituye el repo y qué no

Principio: **el repo manda sobre lo suyo y no toca nada más.** Se aplica en tres sitios.

### 1. Personas (`personas/` → `~/.claude/personas/`)

`install.sh` recorre **solo** los archivos de `personas/` de este repo.

| Persona en su ordenador | Qué le pasa al instalar / actualizar |
|---|---|
| Está en el repo (`GENERICO`, `TRIADAAGENTES`) | **La manda el repo.** Si allí había un archivo real, se guarda una copia de seguridad (`NOMBRE.md.copia_AAAA-MM-DD`) y se sustituye por un enlace al repo. A partir de ahí cada `./pull.sh` la actualiza sola. |
| NO está en el repo (p. ej. `ADMISIONESISP`, `PROTESISTERE`) | **Intacta.** Ni se lee, ni se mueve, ni se borra. Son suyas. |

**Selector de personas:** si el hook del selector de su ordenador tiene la lista
escrita a mano, una persona nueva del repo hay que añadirla también al hook.

### 2. Reglas globales (`global/REGISTRO.md` → `~/.claude/CLAUDE.md`)

`~/.claude/CLAUDE.md` se carga en **todas** las sesiones, se elija la persona que
se elija — o ninguna. Por eso el Registro por defecto vive también aquí: si
alguien trabaja con `ADMISIONESISP` o salta el selector, el registro sigue puesto.

El repo mantiene ahí **un bloque delimitado**:

```
<!-- BEGIN jesus-tere-powerups — no editar a mano -->
   …el Registro por defecto…
<!-- END jesus-tere-powerups -->
```

| Situación | Qué hace `install.sh` |
|---|---|
| No existe `~/.claude/CLAUDE.md` | Lo crea con el bloque. |
| Existe y ya tiene los marcadores | Sustituye **solo** lo de dentro. |
| Existe y no tiene marcadores | Añade el bloque al final. |
| No hay nada que cambiar | No toca el archivo ni hace copia. |

**Todo lo que el usuario escriba fuera de los marcadores — antes o después — se
conserva tal cual.** Para editar el bloque: se cambia `global/REGISTRO.md` en el
repo, y el siguiente `./pull.sh` lo actualiza en sus ordenadores.

### 3. Skills (`skills/` → `~/.claude/skills/`)

Enlazados, como siempre. Sin cambios.

### 4. El ajuste de las listas de tareas (`~/.claude/settings.json`)

Casi todos los skills de este repo empiezan diciendo «crea una lista de tareas».
En las versiones nuevas de Claude Code esas herramientas vienen **apagadas por
defecto** con los modelos nuevos — así que el skill pedía una herramienta que no
existía y la lista no se creaba nunca, **en silencio**. Es el mismo problema que
Marc encontró y arregló en su repo el 2026-08-25.

`install.sh` añade esta clave, y solo esta:

```json
"env": { "CLAUDE_CODE_ENABLE_TODO_TOOLS": "1" }
```

| Situación | Qué hace `install.sh` |
|---|---|
| No existe `settings.json` | Lo crea con esa única clave. |
| Existe | Añade la clave y **conserva todo lo demás** (modelo, tema, permisos, plugins, otras variables). Copia previa: `settings.json.copia_AAAA-MM-DD`. |
| La clave ya está puesta | No toca el archivo ni hace copia. |
| El archivo está corrupto (no es JSON válido) | **No lo toca.** Avisa y sigue. |

Al terminar, el instalador **relee el archivo ya instalado** y dice `OK verificado`
o `FALLO`. Esa verificación existe porque un fallo silencioso aquí dejaría las
listas de tareas muertas sin que nadie se enterase durante semanas.

---

Todo es idempotente: en la segunda ejecución ya está todo en su sitio, así que no
se crean copias nuevas. Las copias de seguridad no se borran nunca
automáticamente — si sobran, se borran a mano.

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

## Trabajo en la web del colegio

La segunda familia de trabajo del sistema (2026-08-26). La web es
**www.colegiosisp.com** — WordPress, alojada en OVH.

### Dónde vive el agente — y por qué

**Claude Code se ejecuta en el ordenador de ellos y llega al alojamiento por SSH.**
Se probó contra la alternativa (arrancar Claude Code dentro del propio
alojamiento) y esta gana en todo:

| | Agente en su Mac (elegido) | Agente dentro del alojamiento (descartado) |
|---|---|---|
| Skills y personas en español | ✅ están donde ya están — **un solo sitio que mantener** | ❌ habría que instalarlos y mantenerlos también allí |
| Arrastrar fotos al chat | ✅ | ❌ |
| ¿Arranca siquiera? | ✅ probado y funcionando | ❓ el alojamiento tiene un Node de 2021; Claude Code pide uno mucho más nuevo |
| Trabajo sobre la web (archivos, WordPress, base de datos) | ✅ por SSH | ✅ |

Todo lo que el agente haría sentado dentro del alojamiento, lo hace igual desde el
Mac: SSH manda los comandos y devuelve el resultado. No se pierde nada.

### Cómo funciona la conexión sin contraseña

Una «llave SSH» son dos archivos: uno **privado**, que se queda para siempre en su
ordenador, y uno **público**, que se instala en el alojamiento. Al conectar, el
ordenador enseña su llave, el servidor la reconoce y entra. Sin escribir contraseñas.

**La llave privada nunca viaja.** Por eso no se les envía nada: la llave nace en su
Mac. Lo único que viaja es la mitad pública, que no es secreta.

### Los datos del alojamiento

| Dato | Valor |
|---|---|
| Servidor SSH | `ssh.cluster120.hosting.ovh.net` (puerto 22) |
| Usuario | `elpeixetjv` |
| Atajo que se configura | `colegio-ovh` |
| Dónde vive la web | `~/www` |
| Herramienta de WordPress | `~/bin/wp` (wp-cli, ya instalada) |
| PHP | 8.3 |

⚠️ **La contraseña SSH del usuario `elpeixetjv` es también la del FTP.** Si se
cambia, cualquiera que la tenga guardada en un programa de FTP deja de entrar
hasta que la actualice. Tenerlo en cuenta antes de tocarla.

### Puesta en marcha de cada Mac (operación de una sola vez)

Cada ordenador se prepara **una única vez con un prompt que Marc envía** (se pega
en su Claude Code; al selector de personas se responde `none`). El prompt es
autosuficiente y no se repite aquí: pone al día el repo (o lo instala si falta),
crea la llave de ese ordenador, configura el atajo `colegio-ovh`, crea la carpeta
`~/WebColegio`, y guía al usuario para dar de alta su llave dentro del servidor
— ese último paso es a mano porque `ssh-copy-id` no funciona en este alojamiento
(ver «Conocimiento duramente ganado») — y termina comprobando que la conexión ya
entra sin contraseña.

Lo único que conviene recordar aquí, porque es permanente:

- **Cada Mac tiene su propia llave.** La mitad privada nunca sale del ordenador
  donde nace — no se copia de un Mac a otro. El servidor admite varias llaves a
  la vez, así que cada ordenador se da de alta por su cuenta.
- **La puesta en marcha necesita la contraseña SSH del usuario `elpeixetjv`**
  (una vez, y nunca más). Ver el aviso de arriba: no es la del panel de OVH, y es
  también la del FTP. Esa contraseña es la llave maestra del alojamiento — la
  guardan ellos.

### El día a día

Se abre Claude Code, se elige la persona `CLAUDEDEV`, y se pide lo que haga falta
en lenguaje normal: «cambia estas tres fotos de la página de infantil» (arrastrando
las fotos al chat), «mejora el SEO de la página de admisiones», «¿por qué no llega
el formulario de contacto?».

El agente lleva el flujo solo: entiende primero, lo explica en llano, hace las
preguntas que hagan falta, espera el **OK explícito**, y solo entonces toca algo —
con copia de seguridad delante y comprobación detrás. Consultar cosas («enséñame
las últimas fotos que se subieron») no pasa por ningún proceso: se responde y ya.

### Las redes de seguridad que ya tiene la web

1. **UpdraftPlus** — copias de seguridad automáticas del sitio.
2. **WP Staging** — permite probar en una copia antes de tocar lo que ve la gente.
3. **El botón «Restore backup» del panel de OVH** — la última red, por debajo de todo.

Además, `/defcode` obliga a hacer copia de cada archivo **antes** de editarlo, en el
servidor y en el ordenador.

### Proyectos grandes de web

Un sistema de matrícula online, rehacer una sección entera o una campaña **no son
un cambio: son un proyecto**. Eso arranca con `/planifica` (la tríada), se investiga
lo que haga falta con el satélite, y se ejecuta después con `CLAUDEDEV`. Los dos
sistemas se complementan.

---

## Catálogo de personas

Las tres viajan en el repo y `install.sh` las enlaza en `~/.claude/personas/`.

### `TRIADAAGENTES`

- **Qué es:** la persona conductora del sistema de proyectos. Sabe cuándo activar `/planifica`, cómo llevar los prompts al satélite y traer los resultados, cómo arrancar sesiones ejecutoras y cuándo cerrar con `/continuia`. Además guía y anima: Jesús y Tere son muy capaces pero este sistema es nuevo para ellos.
- **Cuándo se elige:** proyectos e iniciativas (campañas, planes, cursos, cualquier cosa que haya que pensar antes de hacer).
- **Última actualización:** 2026-08-26 (regla de tuteo: siempre de tú, en singular, nunca «vosotros»). Prior: 2026-07-31 (bloque del Registro por defecto). Prior: 2026-07-13 (creada)

### `CLAUDEDEV`

- **Original:** `CLAUDEDEV` (marc-jovani-powerups) — nombre conservado en inglés a petición de Marc, igual que `whatdocs` y `defcode`
- **Qué es:** la persona para trabajar en la web del colegio y en cosas técnicas. Entiende primero, toca después.
- **Diferencia clave con el original de Marc — IMPONE el flujo, no lo sugiere.** Marc escribe `/whatdocs` de memoria; Jesús y Tere no tienen por qué acordarse de nada. Así que la persona lleva el flujo por ellos: para **modificar** cualquier cosa (un archivo, una foto, un texto, un ajuste, un plugin, la base de datos) es obligatorio `/whatdocs` → `/simplll` → `/deacuerdo` → **GO explícito** → `/defcode` → `/doc-actualizar`. **Leer, mirar, buscar y comprobar es libre** y sin ceremonia — consultar no cambia nada, y una pregunta no debe convertirse en un proyecto. Si el usuario ordena saltarse el flujo, se obedece tras decir en UNA frase el mayor riesgo sin examinar (misma salida de emergencia que ya tiene `/deacuerdo`).
- **Otras adaptaciones frente al original:** framing de «no programador» en vez del perfil de Marc (compositor con plugins y apps comerciales); tuteo en singular; ejemplos de programación → ejemplos de la web del colegio; `pm2 restart` → vaciar la caché; **sin git** (regla del repo); copias de seguridad con el nombre descriptivo del repo (`archivo.copia_antes_de_<qué>_AAAA-MM-DD`); apartado propio con las cuatro trampas de esta web (está viva, hay varios idiomas, hay caché, hay copias y sitio de pruebas); enlace con la tríada (los proyectos grandes van a `/planifica`, las sesiones se cierran con `/continuia`); modos por usuario (Jesús visual / Tere lectora / Ali directa); Registro por defecto incluido, igual que las otras dos personas.
- **Cuándo se elige:** cambios en la web — fotos, textos, SEO, arreglos, cosas nuevas.
- **Última actualización:** 2026-08-26 (creada)

### `GENERICO`

- **Original:** `CLAUDEREG` (la persona «sin preferencias» de Marc)
- **Qué es:** modo genérico, sin instrucciones específicas más allá del Registro por defecto. No anuncia su contenido al cargarse.
- **Cuándo se elige:** cualquier cosa que no encaje en las otras dos.
- **Última actualización:** 2026-07-31 (creada)

---

## Catálogo de skills

### `whatdocs`

- **Original:** `whatdocs` (marc-jovani-powerups) — nombre conservado en inglés a petición de Marc
- **Qué hace:** el protocolo de «entender antes de tocar». Prohíbe aplicar nada: primero repetir lo que se ha entendido, mirar la estructura por carpetas concretas, listar TODOS los documentos necesarios, leer cada uno ENTERO (saltarse archivos o partes está PROHIBIDO), reevaluar y leer más si hace falta, y proponer entonces una solución genérica, limpia, duradera, coherente con lo que ya existe y que NO duplique nada ya montado. Termina obligatoriamente en la puerta.
- **Adaptaciones aplicadas:** ⚠️ la puerta final se conecta a los skills que YA existen aquí — `/simplll` + `/deacuerdo` — en vez de a `samepage-brainstorming`, que en este sistema no existe; ⚠️ **eliminado el bloque «RUNNING INSIDE /plan-build»** del original (`/planifica` no tiene la Puerta de Descubrimiento del paso 0 que lo motivaba, así que aquí sería una instrucción huérfana); tipos de archivo traducidos al mundo WordPress (páginas, plantillas, tema, plugins, **otros idiomas**, formularios, fotos, ajustes) en vez de modelos/rutas/JS; comprobaciones del entorno → comprobaciones de la web (versión, tema, plugins, idiomas, caché, copias); la regla de «nada de preguntas perezosas» conservada íntegra — es la más importante del skill; bloque de propuesta traducido con dos campos nuevos propios de esta web (**otros idiomas afectados** y **comprobaciones que haré al terminar**); ⚠️ conservada tal cual la REGLA DE ENTREGA (las tres piezas en un único mensaje final) — nació de un fallo real y sigue aplicando aquí; tuteo; herramientas de tareas nombradas.
- **Última actualización:** 2026-08-26 (creado)

### `defcode`

- **Original:** `defcode` (marc-jovani-powerups) — nombre conservado en inglés a petición de Marc
- **Qué hace:** la disciplina de ejecución cuando el cambio se aplica de verdad en un sitio vivo. Última comprobación de contexto, prohibido tocar archivos no leídos enteros, copia de seguridad con nombre descriptivo antes de cada edición, nada de trucos de terminal, nada de archivos con nombre duplicado, sin salirse del alcance, sin suposiciones — y al terminar, vaciar la caché y hacer una comprobación SEGURA que demuestre que aquello funciona.
- **Adaptaciones aplicadas:** ⚠️ el «app en producción con pagos» del original → **la web del colegio, que están viendo familias ahora mismo** (mismo peso, ejemplo real: un formulario que deja de llegar, una sección que desaparece); ⚠️ la puerta de continuidad exige el GO de `/deacuerdo` en vez del de `samepage-brainstorming`; ⚠️ **«route matching» → repaso de idiomas**: el fallo clásico aquí no son las rutas de una API sino cambiar el castellano y olvidar el valenciano — con el agravante de que quien lo hizo no lo ve, porque navega en el idioma que sí cambió; también menús, enlaces internos, tamaños de foto y formularios; ⚠️ `pm2 restart` → **vaciar la caché** (con el aviso de que casi todos los «no ha funcionado» son en realidad «estoy mirando la copia vieja»); migraciones de base de datos → cambios en la base de datos **con copia previa obligatoria**; ⚠️ **doble copia de seguridad** en servidor remoto (una en el servidor para deshacer rápido, otra descargada por si el servidor se estropea); ejemplos de comprobación insegura reescritos con los riesgos reales de esta web — **enviar un correo de prueba a toda la lista de familias** (hay sistema de envíos masivos instalado), disparar un formulario que avise a secretaría, desactivar un plugin en vivo «a ver qué pasa», borrar fotos «que parecían no usarse»; añadida la comprobación en móvil; ⚠️ **REGLA 8 nueva: nada de git** (regla del repo); informe de ejecución traducido con filas propias de idiomas y caché; tuteo; herramientas de tareas nombradas.
- **Última actualización:** 2026-08-26 (creado)

### `planifica`

- **Original:** `plan-build` (marc-jovani-powerups) — ex-snippet "plania"
- **Qué hace:** el corazón de la tríada. Pone al agente en modo planificador: brainstorming (paso 2, vía /brainstorming), investigaciones intercaladas con agentes satélite, y creación incremental del documento de build plan con todo lo que el ejecutor necesita: TODOs con checkpoints 🔬, Protocolo de Continuidad Entre Sesiones, Registro de Sesiones, Protocolo de Documentación, Regla del Multiplicador 10x, y el prompt de arranque SIEMPRE en el chat (nunca enterrado en el documento).
- **Adaptaciones aplicadas:** traducción íntegra; ⚠️ eliminada la carga de `/how-marc-works` (paso 1); ⚠️ corregida la referencia obsoleta al snippet «resss» de TextExpander (ahora apunta a `/prepara-investigacion`, igual que el resto de menciones); «EDITDOC tool» → «herramienta Edit»; ejemplos dev (entrenar modelos, GPUs, frameworks) → genéricos (campaña de captación de familias, plataformas); disparadores y anti-patrones del Protocolo 10x generalizados (herramienta/plataforma/método en vez de framework/training config); ⚠️ ELIMINADO el Protocolo de Estado Activo completo — pregunta obligatoria, tabla 🚨/🟢 y reglas de promoción de hitos (decisión de Marc 2026-07-13: resolvía un problema de la cartera de sistemas vivos monetizados de Marc; para J&T era aparato de más) — queda solo una pregunta suave en el brainstorming sobre cosas ya en marcha; **NOTA para continuia:** al adaptarlo habrá que quitar sus referencias a «Active State» y a filas 🚨; enlazado con el cierre-en-chat del /brainstorming adaptado («el resumen final aprobado es la semilla del build plan»); sin git (decisión de Marc 2026-07-13 — los proyectos de J&T no usan git; el repo de distribución sí); añadida una línea al Protocolo de Documentación indicando que el build plan mande al ejecutor usar `/doc-nueva` y `/doc-actualizar`; «Section 11» (resto de un proyecto antiguo) → «el Registro de Sesiones».
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-31 (retro-porte del original inglés `plan-build` v1.5: nueva **PUERTA OBLIGATORIA de AUTOEVALUACIÓN (6.5)**, colocada entre «imprime la lista de temas/secciones en el chat» y «crea el documento con la estructura y los marcadores». Antes de escribir nada, el agente planificador debe responder tres preguntas: ¿la estructura es demasiado densa o está sobredimensionada?, ¿resulta demasiado compleja?, ¿la última parte de la conversación pesa demasiado mientras la primera ha quedado adelgazada? Si detecta cualquiera de los tres, rehace la lista de la estructura. Objetivo explícito: conservar TODA la información hablada en un documento fácil de leer y eficiente en tokens, sin relleno. Adaptaciones: registro llano del repo («sobredimensionada» en vez de «over-engineered», «relleno» en vez de «bloat»); «Ultrathink» conservado con su glosa española, igual que en `/destila` y `/prepara-investigacion`. La numeración «6.5» se mantiene idéntica al original inglés a propósito, para poder comparar ambos skills de un vistazo — en los dos repos es una etiqueta huérfana (no existe un paso 6). No cambia ninguna convención de estructura del build plan, así que `/continuia` no necesita tocarse.) Prior: 2026-07-16 (retro-porte de la pasada Fable 5 del original inglés: disparadores del Protocolo 10x ampliados — proveedores, precios, lanzamientos, planes de estudio, y el principio de «éxitos Y fracasos» con el ejemplo de programas de IA en colegios; adaptación del Protocolo de Documentación para proyectos que no son de software — Inventario de materiales / Mapa de flujo / Herramientas y accesos; description ampliada con curso, lanzamiento y sistema de contenido). Prior: 2026-07-13 (creado)

### `simplll`

- **Original:** `simplll` (marc-jovani-powerups, pasada Fable 5 de 2026-07-16) — nombre de marca conservado a petición de Marc
- **Qué hace:** explica el Qué / Cómo / Por qué en lenguaje llano, listo para decidir — listas cortas, sin párrafos densos, sin tecnicismos, sin eliminar información. Se dispara a petición («explícamelo fácil») o automáticamente en la puerta, tras la exploración de una sesión ejecutora, entregando la explicación de inmediato (no la ofrece: la da).
- **Adaptaciones aplicadas:** perfil del destinatario neutralizado para servir a Jesús, Tere y Ali — el original describe el perfil de Marc (compositor que ha creado plugins y apps comerciales); aquí es «persona no técnica pero muy capaz, que dirige proyectos y trabaja con IA a diario».
- **Estado:** ✅ publicado
- **Última actualización:** 2026-07-16 (creado)

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
- **Última actualización:** 2026-08-26 (retro-porte selectivo del original inglés, aprobado por Marc: la description gana un **PASO 0 de comprobación de ruta** — si el proyecto tiene un build plan con su «Protocolo de Documentación» que ya declara dónde vive la documentación, se obedece eso en vez de crear un archivo nuevo por cuenta propia. Adaptado: fuera la referencia a la maquinaria CLAUDEMANAGER del original, que aquí no existe. ⚖️ NO portado (deliberadamente): las ~7 correcciones de erratas del original inglés — la traducción española nunca las tuvo.) Prior: 2026-07-13 (creado)

### `doc-actualizar`

- **Original:** `doc-update-project` (marc-jovani-powerups) — ex parte del snippet "finnn"
- **Qué hace:** actualiza el DOCUMENTATION.md al final de una sesión: lista todo lo hecho, relectura fresca desde disco obligatoria (nunca de memoria), actualizaciones dirigidas (nunca reescribir entero), objetivo ~1% más corto como pasada de optimización, conocimiento duramente ganado intocable, y verificación final punto por punto.
- **Adaptaciones aplicadas:** traducción íntegra; «sesión de código» → «sesión de trabajo»; misma nota de `tree` con plan B (investigar el directorio a mano si no está instalado); referencia cruzada a `/doc-nueva`.
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-08-26 (retro-porte selectivo del original inglés, aprobado por Marc — tres cambios: (1) la description gana el mismo **PASO 0 de comprobación de ruta** que `/doc-nueva`, más la advertencia de actualizar el documento que es **DUEÑO** de lo que se ha tocado, no el archivo de documentación que se tenga más a mano; (2) «EMPIEZA CREANDO UN TODO» ahora **nombra las herramientas** (`TaskCreate` / `TaskUpdate`) en vez de dejarlo en una lista escrita en el chat — encaja con el ajuste que `install.sh` enciende desde hoy; (3) la description recoge que la sección de Próximos Pasos es condicional, algo que el cuerpo ya decía pero la description no. ⚖️ NO portado (deliberadamente): las ~16 correcciones de erratas del original inglés — la traducción española nunca las tuvo.) Prior: 2026-07-13 (creado)

### `brainstorming`

- **Original:** skill `brainstorming` del plugin Superpowers v6.1.1 (fuera del repo de Marc)
- **Qué hace:** la disciplina de diseño antes de construir: preguntas de una en una (mejor con opciones), 2-3 enfoques con recomendación, diseño presentado por secciones con aprobación en cada una, PUERTA-DURA (nada se implementa sin diseño aprobado, por simple que parezca), documento de especificación con auto-revisión, y puerta de revisión final del usuario.
- **Adaptaciones aplicadas:** traducción íntegra; ⚠️ estado final `writing-plans` → **volver a /planifica** (el skill que lo invoca en la tríada) — cambiado en checklist, diagrama de flujo, sección Implementación y nota final; ⚠️ sección «Visual Companion» (dependía del servidor del plugin) → reescrita como **«Apoyo visual para decidir (artifacts)»** usando el skill `artifact-design` + herramienta Artifact nativos de Claude Code (nota de Marc 2026-07-13: infografías para TOMA DE DECISIONES en planificaciones difíciles; conserva la disciplina justo-a-tiempo, ofrecimiento en mensaje propio, y test visual-vs-texto por pregunta); referencia a `elements-of-style` → «escribe claro y conciso»; ⚠️ SIN documento de spec (decisión de Marc 2026-07-13: sobraba — el brainstorming vive dentro de /planifica y el único artefacto del proceso es el build plan): el cierre oficial es en el chat — resumen final del diseño consolidado + auto-revisión sobre ese texto (huecos, contradicciones, alcance, ambigüedad; correcciones a la vista) + OK final del usuario — y el resumen aprobado es la semilla que /planifica transcribe en el build plan; al desaparecer el spec desaparece también su commit (git queda confinado a continuia); ejemplos dev → genéricos de colegio.
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-13 (creado)

### `continuia`

- **Original:** `handoff-continuia` (marc-jovani-powerups) — ex-snippet "continuia"
- **Qué hace:** cierra una sesión de trabajo con traspaso limpio en 9 pasos: lee el build plan ENTERO, propone 3 alcances para la siguiente sesión (relajado/realista/apretando) y espera la elección, escribe la entrada del Registro de Sesiones (plantilla estricta, solo-añadir), marca hitos, invoca `/doc-actualizar`, guarda todo, imprime el prompt de traspaso en el chat (nunca en el doc), lo copia al portapapeles y espera la aprobación.
- **Adaptaciones aplicadas:** traducción íntegra; ⚠️ regla dura n.º 7 invertida: «English (US) for everything» → **español para todo**; ⚠️ cierre de la plantilla de traspaso EN 3 TIEMPOS (Opción A elegida por Marc, 2026-07-13): (1) LEE ENTEROS los docs de la lectura obligatoria → (2) PROPÓN TU PLAN en el chat y ESPERA el OK → (3) reglas de trabajo: copia de seguridad antes de editar documentos importantes + no salirse del alcance de la sesión + cerrar con /continuia — reconstruye el valor de whatdocs→defcode en clave documental; ⚠️ línea PERSONA: «CLAUDEDEV» → **«TRIADAAGENTES»** (nombre fijado por Marc, 2026-07-13); eliminadas las referencias a «Active State» y filas 🚨 (coherencia con la decisión de planifica); eliminada la línea de `/frontend-design`; `/doc-update-project` → `/doc-actualizar` y `/research-prompt-instructions` → `/prepara-investigacion`; ⚠️ GIT ELIMINADO del flujo (decisión de Marc, 2026-07-13: sus proyectos no usan git ni tendrán remoto — el repo de distribución `jesus-tere-powerups` SÍ sigue en git, operado por Marc): fuera los comandos git, el commit, la pregunta de push (paso 8.5 entero) y el bloque ESTADO DEL REPO de la plantilla — el «deshacer» lo cubre la regla de copia de seguridad del cierre; ⚠️ LEAN/DEEP ELIMINADO (decisión de Marc, 2026-07-13): siempre lectura ENTERA del build plan — el flujo pasa de 10 a 9 pasos; frases de activación de la description en español («cerramos», «haz el traspaso», «terminamos por hoy»…); «Marc» → «el usuario»; framing «non-developer con software comercial publicado» → «persona no técnica»; plantilla del Registro con commits condicionales y sin STASHED; TodoWrite → herramienta de tareas (TaskCreate).
- **Estado:** ✅ aprobado y publicado
- **Última actualización:** 2026-07-16 (retro-porte de la pasada Fable 5 del original inglés: el punto 2 del cierre en 3 tiempos incorpora la esencia de samepage-brainstorming — señalar las 2-3 asunciones más dudosas + OK EXPLÍCITO del usuario; marcadores de pros/contras de las opciones de alcance concretados a «una línea», con aviso de presupuesto en la opción Apretando; 2.ª pasada del mismo día: el punto 2 del cierre en 3 tiempos ahora ordena invocar /simplll + /deacuerdo — LA PUERTA — tras la exploración, y la tabla de fallos cubre el caso de que esos skills no estén instalados). Prior: 2026-07-13 (creado)

### `deacuerdo`

- **Original:** `samepage-brainstorming` (marc-jovani-powerups, pasada Fable 5 de 2026-07-16) — nombre elegido por Marc
- **Qué hace:** LA PUERTA DEL ACUERDO — conversación obligatoria de aclaración + brainstorming tras la exploración de cada sesión ejecutora (o standalone ante decisiones de peso): anuncia la puerta, expone las 2-3 asunciones más dudosas, una pregunta de decisión por mensaje, «di qué cambió» tras cada respuesta, mínimo 3 intercambios (mejor 5) contados en silencio, cierre solo con GO explícito, con apoyo visual vía artifact-design cuando ver gana a leer.
- **Adaptaciones aplicadas:** en vez de dispararse al final de /whatdocs y bloquear /defcode (no existen en este sistema), se dispara cuando lo ordena el prompt de traspaso de /continuia tras la lectura obligatoria, y bloquea «tocar cualquier documento»; modos por usuario: Jesús visual / Tere lectora / Ali directa; tras el GO recuerda las reglas de la sesión (copia de seguridad + alcance).
- **Estado:** ✅ publicado
- **Última actualización:** 2026-07-16 (creado)

### `destila`

- **Original:** `distill-general-conversations` (marc-jovani-powerups)
- **Qué hace:** convierte cualquier transcript largo (reunión, clase, estrategia, retro, llamada, sesión con IA) en un documento estructurado y fiel: detecta el registro solo, aplica el paquete de formato que toca (decisiones, tareas, FAQ, notas de voz…), y ejecuta las auditorías obligatorias anti-fabricación, de asunciones y de coherencia interna antes de cerrar.
- **Adaptaciones aplicadas:** traducción íntegra (15 secciones completas); idioma de salida por defecto ENGLISH → ESPAÑOL (y la pregunta de pre-vuelo ofrece ESPAÑOL primero); etiquetas de bloques en español (DECISIÓN, ACCIÓN, OJO, EN LA PRÁCTICA) y marcas en español ([INFERIDO DEL CONTEXTO], [POSIBLEMENTE: X], [SUPERADO], [ASUMIDO EN LA FUENTE — SIN VERIFICAR]); ejemplos de audio → genéricos; en la description se eliminaron las referencias a los skills distill-* que no existen en este sistema; entradas fijas del registro de nombres: variantes fonéticas → «Jesús» / «Tere» / «Marc Jovani» (decisión de Marc 2026-07-13: sin apellidos, con los nombres a secas basta).
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
| 7 | `continuia` | handoff-continuia | ✅ aprobado y publicado |
| 8 | PERSONA `TRIADAAGENTES` | CLAUDEDEV como referencia de formato | ✅ aprobada — `install.sh` la enlaza automáticamente en `~/.claude/personas/` |
| 9 | `simplll` | simplll (pasada Fable 5) | ✅ publicado (2026-07-16) |
| 10 | `deacuerdo` | samepage-brainstorming (pasada Fable 5) | ✅ publicado (2026-07-16) |
| 11 | PERSONA `GENERICO` | CLAUDEREG (la persona «sin preferencias» de Marc) | ✅ creada (2026-07-31) — sin instrucciones propias más allá del Registro por defecto; no anuncia su contenido al cargarse |
| 12 | PERSONA `CLAUDEDEV` | CLAUDEDEV | ✅ creada (2026-08-26) — para la web; **impone** el flujo en vez de sugerirlo |
| 13 | `whatdocs` | whatdocs | ✅ creado (2026-08-26) — puerta final conectada a `/simplll` + `/deacuerdo` |
| 14 | `defcode` | defcode | ✅ creado (2026-08-26) — repaso de idiomas y caché en vez de rutas y pm2 |

Proceso pactado: **uno a uno** — Claude adapta → abre el documento en pantalla → Marc revisa → siguiente.

---

## Decisiones registradas (pendientes de aplicar)

1. **`continuia` — whatdocs/defcode:** la plantilla de traspaso original cierra con «LOAD /whatdocs … /defcode» (skills de código en producción). → **RESUELTO (2026-07-13):** cierre en 3 tiempos (Opción A): lectura entera → proponer plan y esperar OK → reglas de trabajo (copia de seguridad + alcance). En la misma pasada, Marc decidió: **git fuera** del flujo de sus proyectos y **LEAN/DEEP fuera** (siempre lectura entera).
2. **`artifact-design` como herramienta de decisión visual (nota de Marc, 2026-07-13):** en `brainstorming` y/o `planifica`, integrar el skill `artifact-design` (viene de serie con Claude Code) para que, en planificaciones difíciles, el agente cree un artifact tipo infografía QUE AYUDE A TOMAR DECISIONES dentro de la planificación inicial. Contexto: Tere es más de leer, Jesús es más visual — el apoyo visual le ayuda en el brainstorming. Esto además **sustituye** al «Visual Companion» de Superpowers (que dependía de infraestructura del plugin y se quita). → **APLICADO** en `/brainstorming` (sección «Apoyo visual para decidir (artifacts)»).
3. **Nombres para `/destila`:** → **RESUELTO (2026-07-13):** no hacen falta apellidos — «Jesús» y «Tere» a secas como formas canónicas. Aplicado en el §9 del skill.
4. **PERSONA conductora de la tríada (nota de Marc, 2026-07-13) — SE CREA AL FINAL DEL PROCESO:** redactar un documento de persona para los ordenadores de Jesús y Tere — **nombre fijado por Marc: TRIADAAGENTES** — será la 4.ª de su sistema de personas (su Claude Code, igual que el de Marc, pregunta al inicio de sesión qué persona cargar). Debe saber **conducir la tríada de agentes de principio a fin**: cuándo activar `/planifica`, cómo llevar los prompts al satélite y traer los resultados, cómo arrancar sesiones ejecutoras frescas, cuándo cerrar con `/continuia`. Claude redacta el documento (propuesta: guardarlo en `personas/` dentro de este repo — `install.sh` no toca esa carpeta); Marc lo instala localmente en su sistema de personas. Esto resuelve también la línea «PERSONA: CLAUDEDEV» de la plantilla de traspaso de `continuia` → apuntará a esta persona nueva.
   **Segunda dimensión — igual de importante (brief de Marc, 2026-07-13, capturar la esencia SIN transcribir literalmente):** Jesús y Tere son muy capaces pero nuevos en este sistema. A veces aparecen creencias limitantes («esto es demasiado grande para mí», «yo nunca podría construir algo así») y pueden sentirse intimidados — cuando la realidad es que han construido cosas enormes: un colegio grande (dos edificios), una empresa durante ~40 años, y llevan con la IA desde el primer día. Tienen 70 años; sus creencias limitantes son distintas de las de Marc (él no duda de poder construir cualquier cosa con IA; ellos jamás dudarían de poder construir un colegio — cada uno tiene las suyas). La persona debe, por tanto: (1) **dominar la operación de la tríada** de principio a fin; y (2) **guiarlos, animarlos y ponérselo fácil** — no solo animar: guiar activamente, explicar con calma qué se está haciendo y por qué, celebrar los avances, y recordarles (cuando toque, sin ser pesada) que construir cosas grandes es exactamente lo que llevan haciendo toda la vida. Para Marc el sistema es casi un sexto sentido — una extensión de sí mismo porque lo construyó; para ellos es territorio nuevo. La persona es el puente. → **CREADA Y APROBADA (2026-07-13):** `personas/TRIADAAGENTES.md` — `install.sh` la enlaza automáticamente en `~/.claude/personas/`; si el hook del selector de sus ordenadores tiene la lista de personas fija, Marc la añade a mano al hook.
5. **Remoto GitHub:** `surfvani/jesus-tere-powerups` — → **HECHO** (repo creado y publicado el 2026-07-13). → Ese mismo día Marc lo hizo **PÚBLICO** para que la instalación en sus ordenadores no necesite tokens ni cuentas de GitHub.
6. **Retro-portes desde el repo inglés (2026-07-16):** la pasada de mejora con Fable 5 sobre marc-jovani-powerups creó allí los skills `simplll` (explicación en llano) y `samepage-brainstorming` (puerta de claridad + alineamiento tras /whatdocs, /defcode bloqueado hasta un GO explícito). **Decisión: NO se crean equivalentes españoles como skills** — el sistema de J&T ya encarna ambos conceptos: la persona TRIADAAGENTES impone lenguaje llano siempre, y las puertas existen en /brainstorming (PUERTA-DURA) y en el cierre en 3 tiempos de /continuia (ahora enriquecido con la exposición de asunciones dudosas + OK explícito). Se portó lo aplicable a /planifica (disparadores 10x ampliados, éxitos-y-fracasos, documentación no-software) y /continuia. → **REVERTIDA ese mismo día por Marc: SÍ se crean** — `/simplll` (nombre de marca conservado) y `/deacuerdo` (nombre elegido por Marc). Aclaración clave de Marc: la puerta NO ocurre en el momento de /continuia — /continuia solo ESCRIBE la orden en el prompt de traspaso; los skills se cargan y ejecutan en la SESIÓN SIGUIENTE, justo después de terminar la fase de exploración (la lectura obligatoria), antes de tocar nada. Además, Marc sumó a **Ali** como tercera usuaria del sistema (ver Propósito) — descriptions neutralizadas a «el usuario»; los ejemplos de colegio se quedan como ilustraciones.
7. **Git en los proyectos de Jesús y Tere:** → **RESUELTO (2026-07-13): NO.** Sin remoto ni planes de tenerlo, un git local solo añadía fricción. Sus carpetas de proyecto van sin git; la función de «deshacer» la cubre la copia de seguridad antes de editar (regla del cierre del traspaso de continuia). El repo de distribución sí sigue en git.
8. **Trabajo en la web del colegio (2026-08-26):** Jesús y Tere querían poder cambiar cosas de la web ellos mismos con el agente — fotos, SEO, y a futuro un sistema de matrícula online. Decisiones tomadas en la sesión:
   - **Dónde vive el agente → en SU ordenador, llegando al alojamiento por SSH.** Se probó de verdad contra la alternativa (Claude Code dentro del alojamiento) y esta gana: sus skills y personas en español solo existen en su Mac, se pueden arrastrar fotos al chat, y **hay un solo sitio que mantener**. La alternativa además ni siquiera arrancaría con garantías (el alojamiento tiene un Node de 2021). Ver «Trabajo en la web del colegio».
   - **Nombres en inglés** (`CLAUDEDEV`, `whatdocs`, `defcode`) — decisión de Marc, misma lógica que con `simplll`: él los tiene en la memoria muscular y así puede darles soporte por teléfono sin traducir nada.
   - ⚠️ **La persona IMPONE el flujo, no lo sugiere** (decisión de Marc, y es la diferencia importante con su propia CLAUDEDEV). Él escribe `/whatdocs` de memoria; ellos nunca lo harán. Así que la seguridad vive en la herramienta, no en que se acuerden — igual que TRIADAAGENTES ya dice: «tú llevas el mapa; ellos no tienen que acordarse de nada». **Modificar** algo exige el flujo completo hasta un GO explícito; **consultar** es libre y sin ceremonia (una pregunta no puede convertirse en un proyecto); y si el usuario ordena saltárselo, se obedece tras decir en una frase el riesgo que queda sin examinar.
   - **`TRIADAAGENTES` no se toca.** El enrutado ocurre en el selector de personas al abrir sesión, no dentro de las personas. Si con el uso resulta que se confunden, se puede añadir una línea de referencia cruzada — pero no se hace por adelantado.
   - **Retro-portes del par de documentación** (`/doc-nueva`, `/doc-actualizar`): aprobados uno a uno tras revisar los diffs del repo inglés. Se portó lo que aplica (PASO 0 de ruta, nombrar las herramientas de tareas, condicionalidad de Próximos Pasos) y NO se portaron las ~23 correcciones de erratas — la traducción española nunca las tuvo.

---

## Conocimiento duramente ganado

### El alojamiento de la web (OVH) — comprobado en vivo el 2026-08-26

Todo lo de aquí abajo está **verificado ejecutándolo**, no supuesto. Ahorra una
tarde entera de tanteo a quien vuelva a montar este acceso.

- **La contraseña del panel de OVH NO es la contraseña SSH.** Cada usuario de
  FTP-SSH tiene la suya, que se pone desde el panel (pestaña FTP-SSH → los `...`
  de esa fila → cambiar contraseña). OVH tarda unos minutos en aplicarla. Se
  perdieron dos intentos con la contraseña del panel antes de caer.
- ⚠️ **`ssh-copy-id` NO funciona en el alojamiento compartido de OVH.** Pide la
  contraseña, la acepta y responde `Connection closed`. El motivo: el usuario
  tiene un intérprete restringido (`/bin/ovh_ssh`) que corta el comando remoto que
  `ssh-copy-id` necesita ejecutar. **Solución:** entrar a mano
  (`ssh usuario@servidor`), y pegar allí dentro el `mkdir -p ~/.ssh && echo
  '<llave pública>' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys`.
  Con eso queda instalada.
- **Una vez instalada la llave, los comandos sueltos por SSH SÍ funcionan.** El
  intérprete restringido corta a `ssh-copy-id`, pero no impide trabajar: se probó
  a fondo (leer archivos, buscar, consultar WordPress, subir y borrar archivos).
- **wp-cli no viene instalado, pero se instala sin permisos de administrador.** Se
  descarga `wp-cli.phar` en `~/bin/` y se crea al lado un `wp` de dos líneas que lo
  lanza con el PHP correcto. Ya está hecho — vive en `~/bin/wp`.
- **`~/bin` está FUERA de la carpeta de la web**, así que nada de lo que se ponga
  ahí se sirve por internet ni es visible para nadie.
- **La carpeta real del usuario es `/homez.12/elpeixetjv`**, aunque el panel de OVH
  muestre `/home/elpeixetjv`.
- **Hay 7 instalaciones de WordPress en la cuenta.** La web viva es la de `~/www`
  (tema `colegiosisp`). Las demás son copias antiguas, pruebas y otros proyectos —
  no confundirlas.
- **Herramientas disponibles en el alojamiento:** PHP 8.3, curl, wget, mysql,
  mysqldump, git, tar, unzip, rsync, python3, find, grep, sed, nano, vim.
  **No hay:** npm. **No hay administrador (root)** — es alojamiento compartido.
- ⚠️ **El Node del alojamiento es la versión 10, de 2021.** Demasiado antiguo para
  Claude Code. Es una de las razones por las que el agente vive en el Mac.
- ⚠️ **Ojo con la salida a internet desde el servidor.** Se comprobó: a
  `api.wordpress.org` sale bien (200) y a `downloads.wordpress.org` también, pero
  **a `api.stripe.com` no consiguió conectar**. Fue una sola prueba a un solo
  sitio, así que no es una conclusión cerrada — pero **hay que confirmarlo antes de
  diseñar nada de pagos online**, porque un sistema de matrícula que no puede
  hablar con la pasarela de pago no funciona.
- **Lo que ya hay instalado y sirve:** Yoast SEO (el trabajo de SEO parte de una
  base), WPML (varios idiomas), UpdraftPlus (copias automáticas), WP Staging
  (sitio de pruebas), MailPoet (envíos masivos — **cuidado con las pruebas**),
  Contact Form 7. **No hay** WooCommerce ni ninguna pasarela de pago: el sistema de
  matrícula sería construir algo nuevo.

### Sobre este repositorio

- **(2026-08-26) Mira si el clon local está al día ANTES de tocar nada.** Al abrir
  la sesión, el clon del Mac estaba **3 commits por detrás de GitHub** (persona
  `GENERICO`, bloque global del Registro, `install.sh` con sustitución de personas,
  `planifica` v1.5) **y además tenía 6 archivos modificados sin guardar** desde
  hacía un mes (la regla de tuteo). Si se hubiera trabajado sobre esa base: o se
  perdía el trabajo sin guardar, o se construía sobre archivos viejos. El orden
  correcto es: guardar primero lo local en su propio commit, después traer lo de
  GitHub (rebase), verificar que ambas cosas conviven, y solo entonces empezar.
- **(2026-08-26) Las copias de seguridad de los archivos de este repo NO se
  guardan dentro del repo.** Todo lo que hay aquí viaja a los ordenadores de Jesús
  y Tere; llenarlo de archivos `.copia_` sería ensuciar sus instalaciones. Como
  este repo sí usa git, el propio historial ya es la copia de seguridad. (En el
  repo de Marc sí conviven las copias dentro, pero ese no se distribuye a nadie.)

### De la adaptación original

- **(2026-07-13)** Hallazgos de la lectura íntegra de los originales que la adaptación debe corregir: (a) `plan-build` línea 176 aún referencia el snippet antiguo «resss» de TextExpander; (b) el `brainstorming` de Superpowers termina invocando `writing-plans` (no existirá aquí — debe volver a `/planifica`); (c) la regla dura nº 7 de `handoff-continuia` exige inglés US para todo lo escrito (invertir a español); (d) `distill-general-conversations` saca los documentos en INGLÉS por defecto y su registro de nombres solo conoce «Marc Jovani».
