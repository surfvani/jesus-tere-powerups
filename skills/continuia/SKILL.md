---
name: continuia
description: Usar al FINAL de una sesión de trabajo en un proyecto montado con /planifica (uno con un documento de build plan que contiene Registro de Sesiones + Protocolo de Continuidad Entre Sesiones + seguimiento de hitos según las convenciones de planifica) para producir dos artefactos limpios — (1) una entrada de Registro de Sesiones con plantilla estricta escrita dentro del doc del plan, y (2) un prompt de traspaso autocontenido, impreso en el chat, listo para copiar y pegar en la siguiente sesión. Se activa con frases tipo «cerramos», «haz el traspaso», «terminamos por hoy», «cierra la sesión», «lo dejamos aquí», «traspaso de la sesión N». Lee el build plan ENTERO, propone 3 alcances para la siguiente sesión (relajado / realista / apretando) con recomendación, espera la elección del usuario, escribe la entrada del Registro, marca hitos completados, invoca /doc-actualizar si existe DOCUMENTATION.md, guarda los cambios, e imprime el prompt de traspaso en el chat (NUNCA enterrado en el doc — regla dura de planifica). No usar si la sesión fue solo de discusión/lectura sin trabajo, si el proyecto no tiene build plan que actualizar, o si el usuario dice explícitamente «solo guarda y para».
---

# /continuia — Skill de frontera de sesión

Estás cerrando una sesión de trabajo en un proyecto que se montó con `/planifica`. Tu trabajo: producir dos artefactos limpios + guardar los cambios, para que la siguiente sesión de agente pueda continuar sin perder contexto.

## Reglas duras (innegociables — heredan del propio protocolo de planifica)

1. **Dos artefactos, siempre:** una entrada de Registro de Sesiones escrita DENTRO del doc del plan, Y un prompt de traspaso listo para copiar impreso EN EL CHAT. Son documentos DISTINTOS que sirven a audiencias distintas. No los mezcles. No produzcas solo uno.
2. **El prompt de traspaso DEBE imprimirse en el chat, nunca enterrarse en el doc del plan.** Regla del propio planifica: «que el usuario pueda copiarlo y pegarlo... sin tener que ir a buscar el archivo, abrirlo, bajar hasta el final y encontrar el prompt». Respétala.
3. **DEBES actualizar el seguimiento de hitos** para marcar las fases/tareas completadas en esta sesión. Dos de los fallos de traspaso conocidos vinieron de saltarse esto.
4. **Las plantillas son estrictas.** No omitas secciones. No improvises la forma. Las plantillas de abajo son la especificación.
5. **El doc del plan se lee ENTERO.** Sin lecturas en diagonal, sin lecturas parciales, sin atajos.
6. **Para la siguiente sesión, el skill produce una recomendación pero el usuario elige el alcance.** Proponer los 3 alcances (relajado / realista / apretando) es obligatorio. Tú propones, el usuario elige.
7. **Español para todo lo que se escribe en el doc y en el prompt de traspaso.**

## El flujo de 9 pasos

- Ejecuta en orden.
- No te saltes pasos.
- No los ejecutes en paralelo.

### Paso 1 — Leer el doc del plan ENTERO

Identifica el documento de build plan (típicamente `*-BUILD_PLAN.md`, `*-PLAN.md`, o como lo haya llamado el proyecto durante `/planifica`). Si no es obvio, ejecuta `ls *.md` en la raíz del proyecto y pregunta al usuario cuál es el build plan.

Léelo entero. El documento del plan completo.

- No lo leas en diagonal
- No hagas lecturas parciales
- No tomes atajos

Leerlo entero tiene dos ventajas más: al hacer las actualizaciones evitas crear conflictos o duplicar información dentro del documento (las lecturas parciales provocan ediciones que contradicen secciones no leídas), y te permite indicar mejor al siguiente agente qué partes leer al principio de la siguiente sesión.

Durante la lectura, presta especial atención a: el banner de estado del principio, el **seguimiento de hitos** (la fuente de los TODOs), el **Protocolo de Continuidad Entre Sesiones**, la **entrada más reciente del Registro de Sesiones** (tu referencia de plantilla para la forma y la voz), los elementos marcados 🔬 (checkpoints de investigación), y cualquier sección con marcadores SUPERADO / CRÍTICO / AVISO.

### Paso 2 — Reunir la memoria de la sesión + estado de los archivos

Repasa qué archivos se han creado o modificado durante esta sesión, y revisa tu propia lista de tareas de esta sesión (si la tienes).

Identifica:
- Qué se completó en esta sesión
- Qué archivos se tocaron (NUEVO vs MODIFICADO vs ELIMINADO)
- Qué queda sin guardar (y si es lo esperado o hay que resolverlo)
- Qué hay en la lista de tareas (completado vs pendiente)

Si existe `DOCUMENTATION.md` en la raíz del proyecto, revisa brevemente sus secciones de referencia rápida / próximos pasos / retos para saber si hacen falta actualizaciones.

### Paso 3 — Proponer 3 alcances para la siguiente sesión (OBLIGATORIO)

Antes de escribir nada, propón tres opciones de alcance para lo que la siguiente sesión debería abordar. Formato:

```
**OPCIONES DE ALCANCE para la siguiente sesión:**

1. **Relajado** — [descripción del alcance en 1-2 frases, en lenguaje llano]
   Consigue: [qué se termina en concreto]
   Pros/contras: [una línea]. Estimación de tokens: ~Xk.

2. **Realista** (RECOMENDADO) — [descripción del alcance en 1-2 frases, en lenguaje llano]
   Consigue: [qué se termina en concreto]
   Pros/contras: [una línea]. Estimación de tokens: ~Xk.

3. **Apretando** — [descripción del alcance en 1-2 frases, en lenguaje llano]
   Consigue: [qué se termina en concreto]
   Pros/contras: [una línea — avisa si fuerza el presupuesto de ~180k tokens]. Estimación de tokens: ~Xk+.
   ¿Riesgos?

¿Cuál para la siguiente sesión?
```

Recomienda la opción que encaje con el siguiente hito lógico según el orden de dependencias del plan. La recomendación debe explicar el PORQUÉ en una frase.

**ESPERA la elección del usuario antes de continuar.** Su elección determina la línea «TU TAREA EN ESTA SESIÓN» del prompt de traspaso.

Explica qué se consigue, los pros/contras y los riesgos en lenguaje llano para una persona no técnica. Corto y fácil de entender.

### Paso 4 — Generar la entrada del Registro de Sesiones (plantilla estricta)

Mantenla súper corta y al grano. La mayor parte del detalle se desarrollará en el documento de DOCUMENTACIÓN. Esto es solo un Registro de Sesiones muy breve.

```markdown
### Sesión N — AAAA-MM-DD — [tema en ≤10 palabras]

**Contexto:** [1-2 frases — cuál era el estado de partida, cuál era el objetivo de esta sesión]

**Completado (contra los IDs del seguimiento de hitos):**
- [ID de tarea o fase] — [resumen de una línea de lo hecho]
- ...

**Archivos afectados:**
- NUEVO: [ruta] — [propósito]
- MODIFICADO: [ruta] — [qué cambió, en 1 línea]
- ELIMINADO: [ruta] — [por qué]
(Agrupa por categoría; si una categoría está vacía, omítela.)

**Descubrimientos clave (trampas / decisiones no obvias que conviene conservar):**
1. [descubrimiento — sé específico: nombra archivos/valores concretos que otros agentes pasarían por alto]
2. ...
(Estos fluyen a la sección de Conocimiento Duramente Ganado del DOCUMENTATION.md vía /doc-actualizar. Sé preciso.)

**Desviaciones del plan (si las hay):**
- [qué anticipaba el plan vs qué pasó de verdad, con el razonamiento]
- (o: «Ninguna — ejecutado según el plan.»)

**Bloqueos:**
- [lista, con la siguiente acción concreta para desbloquear cada uno]
- (o: «Ninguno.»)

**Próximos pasos (ordenados, derivados del alcance elegido por el usuario):**
1. [primera acción — específica, con ID de tarea si aplica]
2. [segunda]
3. [tercera]
```

Usa la N que corresponda a la siguiente entrada (si la última era la Sesión 03, esta es la Sesión 04). Si no estás seguro, cuenta las entradas existentes en el Registro e incrementa.

NO borres ni reescribas entradas anteriores del Registro. El Registro de Sesiones es solo-añadir.

Mantenla súper corta y al grano. La mayor parte del detalle irá al documento de DOCUMENTACIÓN. Esto es solo un Registro de Sesiones muy breve.

### Paso 5 — Marcar los hitos completados en el seguimiento de hitos

El formato exacto del seguimiento de hitos varía por proyecto (puede ser una tabla con casillas, una lista numerada, fases anidadas, etc.). Léelo en la lectura del Paso 1. Después:

- Para cada tarea que esta sesión completó, actualiza su indicador de estado (✅, etiqueta «HECHO», o la convención que use el doc — imita la que ya está).
- Si el seguimiento tiene filas de «Estado» o notas de progreso por fase, actualízalas para reflejar la realidad actual.
- Si no sabes cuál es la convención, PREGUNTA al usuario antes de adivinar.

Esto es crítico. Saltárselo es uno de los dos fallos de traspaso conocidos.

### Paso 6 — Actualizar DOCUMENTATION.md (si existe)

Comprueba si existe `DOCUMENTATION.md` en la raíz del proyecto. Si sí:

- Invoca `/doc-actualizar` — ese skill sabe cómo hacer actualizaciones dirigidas al DOCUMENTATION.md sin reescribirlo (conserva el Conocimiento Duramente Ganado, añade las trampas nuevas, actualiza la estructura de archivos si hay archivos nuevos, etc.).
- NO te saltes `/doc-actualizar` para editar DOCUMENTATION.md directamente. Ese skill existe por una razón.

Si `DOCUMENTATION.md` NO existe en la raíz del proyecto: salta este paso. (Planifica dice que el DOCUMENTATION.md se crea «después del primer trabajo de implementación con sustancia» — algunos proyectos todavía no llegaron a ese punto. No lo fuerces aquí.)

A veces el USUARIO ya te habrá pedido actualizar la documentación antes de arrancar /continuia. Si es el caso, salta este paso.

### Paso 7 — Guardar todo

Asegúrate de que todos los documentos tocados están guardados en disco: el doc del plan (con la entrada nueva del Registro y los hitos marcados) y el DOCUMENTATION.md (si se actualizó). Nada de trabajo que viva solo en el chat: todo lo importante debe estar en los archivos.

### Paso 8 — Imprimir el prompt de traspaso en el chat (plantilla estricta)

Imprímelo en el chat como un único bloque de código para que el usuario lo pueda copiar limpio. **NO lo escribas en el doc del plan.** Vive solo en el chat.

````
TRASPASO — SESIÓN [N+1] — [fecha]

PERSONA: carga la persona TRIADAAGENTES

CARPETA RAÍZ DEL PROYECTO: [ruta absoluta — p. ej. /Users/<usuario>/Documentos/PROYECTOS/MARKETING COLEGIO/]

EN QUÉ ESTAMOS TRABAJANDO — LECTURA OBLIGATORIA (en este orden exacto — no te saltes nada):
(TODAS las rutas de abajo son ABSOLUTAS — no busques archivos, ve directo a estas rutas)

1. [ruta absoluta del doc principal + secciones concretas a leer]
   - [sub-punto por sección si hace falta]
2. [doc secundario si aplica]
3. [secciones de CLAUDE.md si aplica]
4. ¿ALGO QUE SALTARSE? [lista de secciones marcadas SUPERADO u obsoletas — nómbralas para que el agente no gaste tokens]

QUÉ HIZO LA ÚLTIMA SESIÓN (1 párrafo corto):
[resumen — condensa las secciones «Completado» + «Descubrimientos clave» de la entrada del Registro]

TU TAREA EN ESTA SESIÓN (1-2 frases):
[qué + por qué — derivado del alcance elegido por el usuario en el Paso 3]

OJO — COSAS QUE TE PUEDEN PILLAR (top 5 — sé específico):
- [trampa + cómo manejarla]
- ...

SEÑAL DE PARADA: [¿en qué momento de la sesión debe el agente parar para consultar con el usuario? — típicamente al completar una fase, o en un checkpoint 🔬]

[Si la siguiente sesión tiene un checkpoint 🔬 próximo, incluye esta línea:]
En [ID de tarea] llegas a un checkpoint de investigación 🔬. PARA. Pide al usuario que invoque /prepara-investigacion para que se carguen las instrucciones de redacción, y entonces redacta el prompt de investigación para que el usuario lo ejecute fuera. NO hagas la investigación tú.

PREGUNTAS PARA EL USUARIO AL EMPEZAR (antes de tocar nada):
1. «La última sesión terminó con [estado]. Hoy voy a [tarea]. ¿Correcto?» — ESPERA la confirmación.
2. [Cualquier otra pregunta de aclaración que el siguiente agente deba hacer, según las decisiones abiertas de esta sesión]

Si algo del doc del plan contradice lo que ves en los archivos o en tu contexto, PARA y pregunta al usuario antes de improvisar. El doc del plan es la autoridad.

1) LEE ENTEROS LOS DOCUMENTOS DE LA LECTURA OBLIGATORIA ANTES DE TOCAR NADA

2) CUANDO TERMINES LA LECTURA: PROPÓN TU PLAN DE LA SESIÓN EN EL CHAT (lista corta de tareas), SEÑALA TUS 2-3 ASUNCIONES MÁS DUDOSAS (cosas que has decidido sin que el usuario las dijera) Y ESPERA EL OK EXPLÍCITO DEL USUARIO ANTES DE TOCAR NADA

3) REGLAS DE TRABAJO DE LA SESIÓN:
- Antes de editar cualquier documento importante, guarda una copia de seguridad (p. ej. `nombre.md.copia_AAAA-MM-DD`)
- No te salgas del alcance de TU TAREA EN ESTA SESIÓN — si descubres algo grande, apúntalo y díselo al usuario; no te pongas a arreglarlo sobre la marcha
- CERRARÁS LA SESIÓN CON /continuia

EMPIEZA AHORA POR EL PUNTO 1: LA LECTURA OBLIGATORIA
````

**Barandillas al rellenar esta plantilla:**

- **TODAS las rutas de archivo del prompt de traspaso DEBEN SER RUTAS ABSOLUTAS.** El siguiente agente arranca en `~` (la carpeta de usuario), no en la raíz del proyecto. Si el prompt dice «lee `DOCUMENTATION.md`», el agente pierde 5 minutos buscándolo. Escribe siempre la ruta completa. Esto aplica a cada referencia de archivo en LECTURA OBLIGATORIA, en OJO, y en cualquier otro sitio donde se nombre un archivo. Sin excepciones. Incluye también la ruta raíz del proyecto explícita arriba del todo.
- **La pregunta de confirmación de las PREGUNTAS PARA EL USUARIO** debe incluir siempre la canónica «La última sesión terminó en [estado]. Hoy voy a [tarea]. ¿Correcto?» con ESPERA. Más las preguntas genuinamente abiertas de aclaración específicas de la tarea de la siguiente sesión.

### Paso 9 — Explicar, copiar y ESPERAR

Después de imprimir el prompt de traspaso:

1. **Explica en lenguaje llano** (3-5 puntos) qué va a hacer que el siguiente agente haga. Corto y fácil de entender, para una persona no técnica.
2. **Copia el prompt al portapapeles** (si estás en un ordenador local y tienes acceso al portapapeles; si no, dilo y salta este punto). Cópialo ya, aunque todavía no hayas recibido la aprobación del traspaso — así, mientras el usuario lee, tú ya vas adelantando ese trabajo.
3. **ESPERA la aprobación del usuario antes de terminar la sesión.** Tras la aprobación: di en una última línea de chat qué has hecho y termina tu respuesta.



## Lo que este skill NO hace

- NO arranca la siguiente sesión por su cuenta (el prompt de traspaso es para que el usuario lo pegue en una sesión nueva a su ritmo).
- NO modifica CLAUDE.md sin preguntar (si el agente considera que CLAUDE.md necesita actualizarse, debe recomendárselo al usuario).
- NO hace él mismo la tarea de la siguiente sesión. Es puramente un skill de frontera de sesión.
- NO reescribe entradas anteriores del Registro de Sesiones (solo-añadir).
- NO borra el seguimiento de hitos ni ninguna otra sección del doc del plan. Solo añade/actualiza.

## Modos de fallo — qué hacer si te atascas

| Síntoma | Causa | Acción |
|---|---|---|
| No encuentro un doc de build plan | Puede que el proyecto no se montara con `/planifica` | Pregunta al usuario dónde está el doc del plan, o si es un proyecto sin build plan (en ese caso este skill no aplica — sáltalo) |
| El doc del plan no tiene sección de Registro de Sesiones | El doc es anterior a la especificación actual de `/planifica`, o no lo creó `/planifica` | Pregunta al usuario — o se añade una sección de Registro de Sesiones según la plantilla de `/planifica`, o se saltan las actualizaciones del doc y solo se imprime el traspaso en el chat |
| El seguimiento de hitos tiene un formato desconocido | El formato varía por proyecto | Pregunta al usuario cómo marca su seguimiento lo completado (✅, «HECHO», casilla, etc.) antes de actualizar |
| El skill `/doc-actualizar` no está disponible | Este ordenador no lo tiene instalado | Pregunta al usuario. El usuario te dará el prompt exacto. |
| Hay archivos modificados que esta sesión no tocó | Otra sesión pudo dejarlos a medias | PARA. Enséñaselo al usuario. No los toques por tu cuenta — pregunta. |
| El usuario eligió un alcance que requiere investigación (hay un checkpoint 🔬 en el camino) | Aplica el Protocolo de Investigación Profunda de planifica | Construye el prompt de traspaso con el recordatorio 🔬 + la invocación de `/prepara-investigacion`. Marca la investigación como primera tarea. |



## EMPIEZA CREANDO UNA LISTA DE TAREAS

Usa tu herramienta de tareas (TaskCreate) para trazar tu plan de traspaso antes de leer nada. Forma de ejemplo (adáptala al proyecto — con o sin DOCUMENTATION.md):

     ☐ Paso 1 — Leer el doc del plan ENTERO
     ☐ Paso 2 — Reunir la memoria de la sesión (archivos tocados + repaso de la lista de tareas)
     ☐ Paso 3 — Proponer 3 alcances para la siguiente sesión (relajado / realista / apretando) con recomendación — ESPERAR la elección del usuario
     ☐ Paso 4 — Escribir la entrada del Registro de Sesiones en el doc del plan (plantilla estricta, solo-añadir)
     ☐ Paso 5 — Marcar los hitos completados en el seguimiento (imitando la convención existente — ✅ / HECHO / casilla)
     ☐ Paso 6 — Invocar /doc-actualizar si existe DOCUMENTATION.md y aún no se ha actualizado. Si ya se actualizó, decirlo y saltar este paso.
     ☐ Paso 7 — Guardar todo (doc del plan + DOCUMENTATION.md)
     ☐ Paso 8 — Imprimir el prompt de traspaso en el chat (plantilla estricta, en un único bloque de código — NUNCA en el doc del plan)
     ☐ Paso 9 — Explicar en lenguaje llano + copiar al portapapeles + ESPERAR la aprobación antes de terminar

Esta lista es solo un ejemplo. Crea la tuya según las particularidades del proyecto — si existe DOCUMENTATION.md, cuál es la convención del seguimiento de hitos, etc.

Actualiza la lista sobre la marcha — marca los elementos completados en tiempo real para que el usuario vea el progreso.

No te saltes el paso de crear la lista de tareas.
