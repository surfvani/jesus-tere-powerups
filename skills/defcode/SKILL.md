---
name: defcode
description: Usar cuando toca APLICAR de verdad un arreglo, un cambio o algo nuevo en la web del colegio (o en cualquier sitio vivo que esté viendo gente) — este skill impone la disciplina de ejecución antes y durante los cambios. Hace una última comprobación de contexto (¿me falta algún archivo?, ¿esto duplica algo que ya existe?), prohíbe modificar cualquier archivo que no se haya leído entero, exige copia de seguridad con nombre descriptivo antes de cada edición (en el servidor y en local), prohíbe meter cambios con trucos de terminal (sed/awk/echo) en favor de ediciones dirigidas con la herramienta Edit, obliga a repasar TODAS las versiones de idioma de lo que se toque, obliga a hacer y ejecutar uno mismo cualquier cambio en la base de datos (con copia previa), manda ceñirse a lo acordado sin ampliar el alcance, y al terminar vaciar la caché y hacer una comprobación SEGURA que demuestre que aquello funciona de verdad — no solo que los archivos han cambiado. Se dispara con frases como «aplícalo», «hazlo ya», «adelante con el cambio», «ejecuta». No usar para investigar o planificar (para eso está /whatdocs), ni antes de que la puerta de /deacuerdo se haya cerrado con un GO explícito.
---

=========

⚠️ ESTO ESTÁ EN VIVO. LO QUE PASE, PASA DE VERDAD.

Estás trabajando en la web del colegio. Ahora mismo la están viendo familias:
padres y madres mirando horarios, buscando información de admisiones, rellenando
un formulario de contacto. Un cambio mal hecho no es un test que falla — es una
página rota de cara al público, un formulario que deja de llegar, o una sección
que desaparece. Trata cada cambio con ese peso.

Ultrathink — piensa mucho antes de ejecutar. Piensa en profundidad entre paso y
paso. Trabaja con el máximo esfuerzo.

=========

VIENES DE /whatdocs

Si has llegado aquí desde una fase de investigación con `/whatdocs` (el mismo
agente, el mismo contexto), ya tienes una PROPUESTA DE SOLUCIÓN APROBADA. Aprobada
significa que la puerta de `/deacuerdo` se cerró con un **GO explícito** del
usuario.

Si la puerta nunca se abrió (no hubo explicación de `/simplll`, no hubo
conversación de alineamiento, no hubo GO explícito) — PARA. Ejecuta `/deacuerdo`
ahora, antes de tocar ningún archivo.

Esa propuesta, con los cambios que salieran de la conversación de la puerta, ES tu
especificación para esta fase. No vuelvas a investigar. No te desvíes. Aplica
exactamente lo aprobado.

Si has llegado a `/defcode` sin pasar antes por `/whatdocs`, PARA y pregunta al
usuario: «Nos hemos saltado la fase de entender el sistema. ¿Quieres que haga
`/whatdocs` primero, o sigo con el contexto que tengo?» No improvises.

=========

ÚLTIMA COMPROBACIÓN DE CONTEXTO

Antes de tocar nada, verifica una vez más:
- ¿Necesito ver algún archivo más? (Si la propuesta aprobada nombra archivos que
  no has leído enteros, léelos ahora.)
- ¿Estoy seguro de que esto NO es un DUPLICADO de algo que ya existe en el
  proyecto? (`/whatdocs` ya lo comprobó — pero si queda alguna duda, confírmalo.)

Si necesitas más archivos:
  1. Lista todos los que faltan.
  2. Lee cada uno ENTERO (sin saltarte nada).
  3. Reevalúa. Repite hasta tener la foto completa.

Si NO necesitas más archivos — adelante con la ejecución.

=====

COMPLETO + BIEN CONECTADO

Ya has pasado la última comprobación de contexto y tienes interiorizadas las
REGLAS DURAS. Ahora ejecuta. Estas son las reglas de CÓMO tiene que quedar el
cambio.

—

COMPLETO — toca todos los archivos que el cambio necesite.

- Incluye TODOS los archivos que haya que actualizar. No te dejes ninguno.
- Nada de implementaciones a medias. Si el cambio necesita cuatro archivos, cuatro.
- Si hay que crear archivos nuevos, créalos.
- Si un archivo nuevo tiene que estar referenciado desde otro sitio, AÑADE esa
  referencia en cada sitio que la necesite. Ejemplo: has subido una foto nueva →
  colócala en la página; has creado una plantilla nueva → asígnala a la página.
- Si has añadido algo que se usa desde varios sitios, conéctalo en todos.

La regla: al terminar, el sitio tiene que estar funcionando y entero. Ni «casi
terminado». Ni «esto último ya lo hace el usuario». TERMINADO.

—

BIEN CONECTADO — nada de enlaces rotos ni versiones descolgadas.

Si el cambio toca algo que existe en varios sitios a la vez, comprueba que
cuadra en TODOS antes de decir que está hecho.

**El fallo clásico en esta web — los idiomas.** Casi todas las páginas existen en
más de un idioma (WPML). Cambias la versión en castellano, te olvidas de la
valenciana, y media web queda descuadrada — con la particularidad de que la
persona que lo hizo no lo ve, porque navega en el idioma que sí cambió.

Repasa siempre:
- **Todas las versiones de idioma** de cada página que toques.
- **Los menús** — si cambia el nombre o la dirección de una página, el menú de
  cada idioma tiene que apuntar bien.
- **Los enlaces internos** que apunten a lo que has movido o renombrado.
- **Las fotos**: que la ruta sea la correcta y que existan los tamaños que la
  plantilla pide (WordPress genera varios tamaños de cada imagen).
- **Los formularios**: si tocas uno, comprueba que sigue llegando a donde tenía
  que llegar.

—

CAMBIOS EN LA BASE DE DATOS — hazlos tú, y con copia antes.

Si el cambio necesita tocar la base de datos:
1. **Copia de seguridad de la base de datos ANTES.** Sin excepciones.
2. Prepara el cambio.
3. Ejecútalo tú, en esta sesión.
4. Lee el resultado. Verifica que ha ido bien.
5. Confirma que el cambio está aplicado (consulta y compruébalo).

NO le entregues al usuario un comando con un «ejecuta esto, por favor». Tienes
terminal. Úsala.

—

NADA DE ARREGLOS A MEDIAS. Si te pillas pensando «el resto lo dejo para luego» —
PARA. O terminas la conexión entera en esta sesión, o te DETIENES y dices
claramente qué falta y por qué. Nunca le dejes al usuario un cambio a medio
conectar diciendo que está hecho.

====

REGLAS DURAS DE CÓMO EDITAS

Estas reglas no se negocian. Saltarse cualquiera de ellas en una web viva es
exactamente cómo se rompe algo delante de las familias del colegio.

—

REGLA 1 — NUNCA MODIFIQUES UN ARCHIVO QUE NO HAYAS LEÍDO ENTERO.

Si tienes que modificar un archivo y no lo has visto (o has visto solo partes),
PARA. Léelo entero primero. Si no lo encuentras o no estás seguro de haber dado
con el correcto, PREGUNTA al usuario. No supongas. No adivines.

Si el archivo está en tu contexto varias veces (de vueltas anteriores), usa la
ÚLTIMA — esa es la versión actual.

—

REGLA 2 — COPIA DE SEGURIDAD ANTES DE CADA EDICIÓN.

Antes de modificar cualquier archivo que ya existe, haz una copia con un nombre
DESCRIPTIVO, para que dentro de tres meses se sepa qué era:
- ✅ `header.php.copia_antes_de_cambiar_menu_2026-08-26`
- ✅ `style.css.copia_antes_de_ajustar_movil_2026-08-26`
- ❌ `header.php.copia` (no dice nada — ¿de qué era esto?)

**En un servidor remoto: dos copias.** Una en el propio servidor (al lado del
archivo) y otra descargada en el ordenador. La del servidor es la de deshacer
rápido; la local es la que sobrevive si el servidor se estropea.

Sin copia no se edita. Punto.

—

REGLA 3 — SOLO LA HERRAMIENTA `Edit`. NADA DE TRUCOS DE TERMINAL.

PROHIBIDO:
- ❌ Meter cambios con sed / awk / perl
- ❌ Sobrescribir o empalmar archivos con echo / cat
- ❌ Scripts que modifiquen el contenido de los archivos
- ❌ Cualquier comando «ingenioso» de terminal que edite código

OBLIGATORIO:
- ✅ La herramienta `Edit` para cambios dirigidos
- ✅ Varias llamadas a `Edit` si hay varios cambios en el mismo archivo
- ✅ La herramienta `Write` SOLO para archivos genuinamente nuevos (nunca para
  «reescribir» uno que ya existe)

Los trucos de terminal son la forma habitual de romper un archivo en silencio.
Usa la herramienta correcta, por su nombre. Siempre.

—

REGLA 4 — NUNCA REESCRIBAS EL ARCHIVO ENTERO.

No escribas el archivo completo para «demostrar» que lo has entendido. No te
lances a un volcado de «solución completa». El patrón correcto es:
1. Copia de seguridad (Regla 2).
2. `Edit` para los cambios concretos.
3. Todo lo demás, intacto.

Si te pillas a punto de usar `Write` sobre un archivo que ya existe — PARA. Eso
es justo lo que no hay que hacer. Usa `Edit`.

—

REGLA 5 — NADA DE ARCHIVOS CON NOMBRE DUPLICADO.

PROHIBIDO:
- ❌ `header_final.php`
- ❌ `estilo_definitivo.css`
- ❌ `pagina_v2.php`
- ❌ Cualquier «versión nueva» con nombre parecido

Eso llena el proyecto de basura y confunde a todo el mundo (a ti el primero,
dentro de tres meses). Si un archivo tiene que cambiar, se edita el archivo real,
después de la copia. La copia de seguridad es el único «segundo archivo» aceptable.

—

REGLA 6 — NO TE SALGAS DEL ALCANCE.

No actualices, no implementes ni cambies nada que esté fuera de la PROPUESTA
APROBADA. Nada de ampliar por el camino. Nada de «ya que estoy, también…». Nada
de reordenar cosas de propina.

Si ves algo roto de verdad fuera del alcance — apúntalo para el usuario, NO lo
arregles en esta sesión.

—

REGLA 7 — NADA DE SUPOSICIONES.

SUPONER ESTÁ PROHIBIDO. Si no tienes el contexto que necesitas (un archivo, un
dato, un comportamiento, una decisión), no improvises. Para y pregunta al usuario.
Preguntar cuesta segundos. Suponer mal, en una web viva, cuesta horas de arreglo y
la confianza de quien te la ha dejado en las manos.

—

REGLA 8 — NADA DE GIT.

Los proyectos de Jesús y Tere no usan git. El botón de deshacer es la copia de
seguridad de la Regla 2, más las copias automáticas del propio sitio.

=====

## Diseño y aspecto visual

Si el cambio tiene parte de diseño (cómo se ve algo), carga el skill
`frontend-design` si está disponible en la sesión.

=========

PROTOCOLO DE VERIFICACIÓN — no está hecho hasta que has demostrado que funciona.

PASO 1 — Vacía la caché.

Los cambios en una web con caché no se ven hasta que la caché se refresca. Antes
de comprobar nada:
- Vacía la caché del plugin de caché, si lo hay.
- Ten en cuenta que puede haber caché también en el propio servidor.
- Al comprobar, usa una petición limpia (sin caché del navegador) para no estar
  mirando la versión antigua.

No te saltes este paso: casi todos los «no ha funcionado» son en realidad «estoy
mirando la copia vieja».

—

PASO 2 — Prepara una comprobación SEGURA.

La comprobación tiene que demostrar que el cambio FUNCIONA de verdad — no que los
archivos se han guardado.

Comprobaciones SEGURAS:
- ✅ Cargar la página afectada y ver que responde bien y que sale lo que tiene que salir
- ✅ Cargarla **en todos los idiomas** que existan de esa página
- ✅ Mirar cómo queda en móvil, no solo en ordenador
- ✅ Probar primero en el sitio de pruebas, no en el que ve la gente
- ✅ Consultar (leer) datos en lugar de modificarlos
- ✅ Probar sobre UN solo elemento conocido, que puedas revisar antes y después

Comprobaciones PELIGROSAS (NUNCA):
- ❌ Enviar un correo a toda la lista de familias para «probar que el correo funciona»
  (hay sistema de envíos masivos instalado — un envío de prueba mal hecho llega a
  cientos de familias reales y no se puede deshacer)
- ❌ Enviar un formulario de verdad que dispare avisos a secretaría
- ❌ Modificar muchas páginas de golpe para «ver si la migración fue bien»
- ❌ Desactivar un plugin en el sitio en vivo «a ver qué pasa»
- ❌ Borrar fotos o archivos «que parecían no usarse»
- ❌ Cualquier cosa que toque más de 1-3 elementos reales

Por defecto: prueba en seco, prueba en pequeño, prueba en el sitio de pruebas. Si
no se te ocurre una comprobación segura, PREGUNTA al usuario cómo quiere verificarlo.

—

PASO 3 — Ejecuta la comprobación. Lee el resultado. Valóralo.

1. Haz la comprobación tú.
2. Lee el resultado ENTERO (no solo la última línea, no solo «no ha dado error»).
3. Valora: ¿el cambio hace lo que tenía que hacer? ¿Se ve distinto lo que tenía que
   verse distinto? ¿Están bien todos los idiomas?
4. Si pasa: sigue al PASO 4.
5. Si falla: diagnostica, ajusta, vuelve a comprobar.

Después de 3 intentos fallidos con lo mismo: PARA. Cuéntale al usuario qué has
probado, qué ha fallado y qué pruebas tienes. No repitas el mismo intento
esperando otro resultado.

—

PASO 4 — Di que está HECHO solo después de haberlo verificado.

Frases prohibidas cuando NO acabas de comprobarlo:
- ❌ «debería funcionar»
- ❌ «probablemente funciona»
- ❌ «el cambio parece correcto»
- ❌ «hecho» / «listo» / «arreglado»

Lo único que vale como «hecho» = «he hecho la comprobación, el resultado ha sido
X, aquí está la prueba».

Pruebas antes que afirmaciones. Siempre.

=========

EMPIEZA CREANDO UNA LISTA DE TAREAS

Usa las herramientas de tareas — `TaskCreate` un punto por paso, `TaskUpdate`
para ir moviéndolos a en curso / completado, `TaskList` para releer la lista — y
monta tu plan de ejecución antes de tocar nada. Constrúyelo a partir de la
PROPUESTA APROBADA (la de `/whatdocs`), no de cero. Ejemplo de forma:

     ☐ Confirmar que tengo la PROPUESTA APROBADA en contexto (problema, enfoque, archivos que se tocan y los que no)
     ☐ Última comprobación de contexto — ¿algún archivo de la propuesta sin leer entero?
     ☐ Preguntar al usuario lo que quede de intención o alcance (nada de preguntas perezosas)
     ☐ Copia de seguridad de [ruta] → [archivo].copia_antes_de_[descripción]_AAAA-MM-DD (servidor + local)
     ☐ Editar [ruta] — [cambio concreto según la propuesta]
     ☐ Copia de seguridad de [ruta] → [archivo].copia_antes_de_[descripción]_AAAA-MM-DD
     ☐ Editar [ruta] — [cambio concreto según la propuesta]
     ☐ Crear [archivo nuevo] — [para qué] + colocarlo donde tiene que estar referenciado
     ☐ Copia de la base de datos + aplicar el cambio (si aplica) — verificar el resultado
     ☐ Repasar TODAS las versiones de idioma de lo tocado
     ☐ Repasar menús y enlaces internos afectados
     ☐ Vaciar la caché
     ☐ Comprobación SEGURA — cargar las páginas afectadas, todos los idiomas, también en móvil
     ☐ Leer el resultado entero — valorar si pasa o falla
     ☐ Si falla: diagnosticar, ajustar, repetir (máximo 3 intentos antes de parar y contarlo)
     ☐ Dar el informe de ejecución (abajo)

Adáptalo a tu cambio concreto. Pero toda lista de ejecución TIENE que incluir:
copias de seguridad, ediciones, conexión completa, repaso de idiomas, vaciado de
caché y comprobación SEGURA con valoración.

=========

CUANDO TERMINES — formato obligatorio del informe

Cierra la fase de ejecución con un INFORME DE EJECUCIÓN con esta forma exacta. Es
lo que el usuario usará para verificar tu trabajo sin releer todos los archivos:

```
=== INFORME DE EJECUCIÓN ===

ESTADO: HECHO | HECHO CON RESERVAS | DETENIDO | ME FALTA CONTEXTO

QUÉ HE HECHO:
[1-2 frases — qué cambio ha aterrizado, en relación con la PROPUESTA APROBADA]

ARCHIVOS MODIFICADOS:
- [ruta] — [qué ha cambiado] — copia: [nombre de la copia de seguridad]

ARCHIVOS CREADOS:
- [ruta] — [para qué] — colocado / referenciado en: [dónde]

CAMBIOS EN LA BASE DE DATOS:
- [qué cambio] — copia previa: [nombre] — resultado: [qué salió]

IDIOMAS REPASADOS:
- [página] — [idiomas comprobados] — estado

CACHÉ:
- Vaciada: sí / no aplica — [cómo]

COMPROBACIÓN:
- Qué he comprobado: [páginas / idiomas / dispositivo]
- Resultado: PASA | FALLA (con detalles)
- Trozo del resultado:
  [pegar]
- Por qué esto demuestra que funciona: [1 frase]

RESERVAS (si las hay):
- [cualquier cosa que quieras señalar — cosas cercanas que has visto y no has tocado, casos que no has podido comprobar…]

LO QUE NO HE TOCADO (y por qué):
- [archivos que la propuesta marcaba como intocables, confirmando que se ha respetado el alcance]

PENDIENTE PARA EL USUARIO:
- [cualquier cosa que necesite seguimiento después de esta sesión]

=========
```

Usa HECHO CON RESERVAS si has terminado el trabajo pero tienes dudas. Usa DETENIDO
si no has podido terminar (se cumplió la regla de los 3 intentos, o hay un paso
imposible sin más información del usuario). Usa ME FALTA CONTEXTO si a mitad de
camino has descubierto que hace falta un archivo que no habías visto.

Nunca digas HECHO en silencio sobre un trabajo del que no estás seguro.
