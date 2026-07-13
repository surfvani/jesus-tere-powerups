---
name: planifica
description: Usar cuando Jesús o Tere quieran planificar o diseñar un proyecto nuevo, una iniciativa, una campaña, un sistema o una mejora importante ANTES de ejecutarla — el skill te pone en modo agente planificador (discutir el concepto vía /brainstorming, proponer investigaciones profundas donde aporten, y después crear un documento de build plan que contiene todas las instrucciones para los agentes siguientes: especificación de la lista de TODOs, checkpoints de investigación 🔬, Protocolo de Continuidad Entre Sesiones, Registro de Sesiones, Protocolo de Documentación con mantenimiento del DOCUMENTATION.md, y la Regla del Multiplicador 10x) de forma que el siguiente agente de IA pueda ejecutar solo con leer el documento. No usar para peticiones de ejecución directa donde el usuario diga explícitamente «hazlo directamente» o «ejecuta esto».
---

ARRIBA TE HE DADO LO QUE YO – EL USUARIO, CON MI CONOCIMIENTO Y MI VISIÓN DE HACIA DÓNDE VAMOS – TENGO EN MENTE (EN OTRAS PALABRAS: ESTAS SON LAS IDEAS INICIALES SOBRE LAS QUE HAY QUE CONSTRUIR). ESTE ES EL PROCESO A PARTIR DE AQUÍ:

========= EL CONCEPTO — TÚ NO VAS A HACER EL ANÁLISIS FINAL NI LA EJECUCIÓN — VAS A PLANIFICAR PARA QUE OTRO AGENTE DE IA LO HAGA ======

Proceso
1. El usuario describe el proyecto lo mejor que puede
2. Carga /brainstorming — ejecuta el proceso completo de brainstorming con el usuario. Los desvíos de investigación profunda durante el brainstorming se fomentan (ver más abajo). Cuando el brainstorming concluye (diseño aprobado), vuelve al modo planifica.
3. Decide qué investigaciones profundas siguen siendo necesarias para la fase de ejecución, consigue la aprobación del usuario, crea los prompts de investigación. El usuario los ejecuta con agentes satélite.
4. Cuando los resultados de la investigación profunda estén de vuelta, crea el documento de build plan según los principios de planifica.

=============

PASO 1: El usuario describe el proyecto. Empieza investigando: lee cualquier documento que te haya dado. Reúne toda la información necesaria.

PASO 2: FASE DE BRAINSTORMING
Carga el skill /brainstorming y sigue su proceso:
  - Explora el contexto del proyecto (archivos, documentos, cambios recientes)
  - Haz preguntas de aclaración de una en una (mejor con opciones)
  - Propón 2-3 enfoques con sus pros y contras y tu recomendación
  - Presenta el diseño por secciones, con aprobación del usuario tras cada sección

  Entre las preguntas de aclaración, pregunta también si hay algo ya en marcha relacionado con el proyecto (campañas activas, suscripciones que se están pagando, compromisos en curso) que el plan deba tener en cuenta.

  INVESTIGACIÓN PROFUNDA DURANTE EL BRAINSTORMING — INTERCALADA, NO EN SECUENCIA:
  Siempre que una pregunta del brainstorming toque un terreno donde estés a punto de hacer una asunción que el conocimiento de la comunidad o el duramente ganado podría invalidar — elección de herramienta o plataforma, enfoque del método, forma de integración, decisión de infraestructura, etc. — PAUSA el brainstorming, señálaselo al usuario y propón un desvío de investigación. Si el usuario acepta, escribe el prompt de investigación ahí mismo (recuérdale al usuario invocar /prepara-investigacion para cargar la disciplina de redacción de prompts). El usuario ejecuta la investigación con un agente satélite, trae los resultados de vuelta, y el brainstorming se retoma con ese conocimiento incorporado. Esto significa que brainstorming e investigación van intercalados — no esperas a que el brainstorming termine para empezar a investigar. Cuanto antes entra el conocimiento duramente ganado en la conversación, mejores son las decisiones de diseño.

  Cuando el brainstorming concluye y el usuario aprueba el diseño (resumen final del diseño aprobado en el chat), vuelve al modo planifica. Ese resumen aprobado es la semilla del build plan.

PASO 3: INVESTIGACIÓN POST-BRAINSTORMING
Cuando el brainstorming haya terminado, evalúa qué investigaciones profundas adicionales siguen haciendo falta para la fase de EJECUCIÓN. Son distintas de las investigaciones de la fase de brainstorming — van sobre detalles de implementación, optimización, configuración, elección de herramientas a los que se enfrentará el agente ejecutor. Decide cuáles hacen falta, presenta la lista al usuario para su aprobación, y después crea los prompts de investigación.

CUANDO EL USUARIO APRUEBE, PÍDELE LAS INSTRUCCIONES PARA REDACTAR LOS PROMPTS DE INVESTIGACIÓN. EL USUARIO TE DARÁ INSTRUCCIONES ESPECÍFICAS (invocando /prepara-investigacion)

ESPERA LOS RESULTADOS DE LAS INVESTIGACIONES. EL USUARIO TE LOS DARÁ CUANDO ESTÉN

======

cuando todo esté claro (discusión con el usuario + resultados de investigación recibidos), entonces puedes proceder con la creación del plan

empieza planificando la estructura del documento
después imprime la lista de temas/secciones aquí en el chat —> crea un todo
  después crea el documento solo con la estructura básica y marcadores de posición
  no crees el documento de instrucciones todo de golpe
  crea la primera parte del documento (sustituye el primer marcador por contenido —> primer elemento de la lista de tareas —> usa la herramienta Edit)
  después el siguiente — usa la herramienta Edit
  continúa sistemáticamente

  el objetivo es que con este documento yo pueda ir a la siguiente IA y decirle:

  Oye Claude, lee este doc xyz.md, empieza.

  Cuando termines, dame el prompt corto de instrucciones para darle a la siguiente IA, con instrucciones claras de cómo seguir las instrucciones del documento

=======

=======


❯ Para tareas de formato largo, la IA trabaja mejor con listas de TODOs (no hablo de una lista de tareas dentro del documento: hablo de que debes instruir a la siguiente IA para que cree un TODO (usando su herramienta de tareas) y lo siga. Idealmente, sugiere la lista de TODOs correcta a crear…. Insisto: no me refiero a que tú simplemente crees un TODO dentro de la documentación... me refiero a que crees un TODO de ejemplo e instruyas a la futura IA para que cree de verdad el TODO (con su herramienta de tareas) y lo siga.

Instruye a la siguiente IA para que haga el trabajo exactamente como te he dicho.
- Una tarea cada vez
- completando el trabajo sistemáticamente.
- Siguiendo los elementos del todo uno a uno (si todo el trabajo se hace dentro de un documento, entonces debe usar la herramienta Edit).


Además, en el documento – donde corresponda – instruye a la IA para que pida al usuario investigaciones profundas si alguna implementación se beneficiaría de conocimiento duramente ganado o de la comunidad.
- Por ejemplo... digamos que vamos a lanzar una campaña para captar familias nuevas, y la plataforma concreta que usemos podría configurarse de una forma que duplica el alcance con el mismo presupuesto... o mejor aún, que automatiza lo que íbamos a hacer a mano y nos lleva de semanas de trabajo a un par de días. Una diferencia enorme. Es solo un ejemplo, pero esta forma de pensar debe promoverse e incentivarse.
- Mencionarlo varias veces debe considerarse buena práctica.
- Adaptar la recomendación a cada caso de uso es el enfoque correcto. Identifica los puntos clave donde una investigación profunda daría los mayores multiplicadores y sugiere qué investigar, por qué y cómo enfocarlo.
- Incluye el Protocolo de Investigación Profunda (al final del documento) — Un principio de trabajo completo que explique la «Regla del Multiplicador 10x». Instruye a la IA a identificar proactivamente los momentos donde el conocimiento de la comunidad / duramente ganado podría acelerar drásticamente el trabajo, y a preguntar siempre al usuario antes de continuar con valores por defecto ingenuos. Incluye ejemplos concretos adaptados al proyecto.
- La filosofía debe quedar integrada: el agente de IA debe estar explícitamente incentivado a parar, investigar y preguntar en vez de improvisar con valores por defecto — especialmente en tareas donde el retorno de 45 minutos de investigación puede ser una aceleración de 6x (p. ej., trabajos largos, evitar problemas futuros, etc.)
- Incluye Checkpoints de Investigación en la lista de TODOs — (márcalos con 🔬) intercalados con las tareas de implementación, cada uno etiquetado con «preguntar al usuario primero».
ACLARACIÓN IMPORTANTE: El agente que ejecuta la tarea NO debe hacer la investigación. El agente que ejecuta la tarea debe SOLO crear el prompt de investigación. El usuario llevará ese prompt a un agente satélite temporal para ejecutar la investigación, y el usuario devolverá el resultado de la investigación al agente ejecutor. Recuerda al usuario que invoque el skill «prepara-investigacion» (o que escriba `/prepara-investigacion`) — este es el skill que te da las instrucciones para escribir un buen prompt de investigación. NO es el motor de deep research en sí; solo carga las instrucciones que te dicen a **TI** (el agente planificador) cómo construir el prompt de investigación. Así que cuando llegue el momento de crear prompts de investigación, recuerda al usuario invocar ese skill para que las instrucciones correctas se carguen en tu contexto.


Además, si la ejecución va a ocurrir a lo largo de varias sesiones (1 sesión = entre 120k y 180k tokens de contexto), entonces instruye al agente de IA para que actualice este documento de plan con progreso, estado y próximos pasos, cada vez que cerremos una sesión y antes de pasar a la siguiente. Debes añadir dos cosas:
  1. Protocolo de Continuidad Entre Sesiones (sección aparte) — Instrucciones claras para el agente de IA sobre qué hacer al final y al principio de cada sesión:
      Final de sesión: Actualiza el Registro de Sesiones (Session Log) con el trabajo completado, el estado actual, los archivos tocados, los descubrimientos clave, los bloqueos y los próximos pasos exactos. Actualiza la lista de TODOs. Guarda los cambios.
       Inicio de sesión: Lee la última entrada del Registro de Sesiones, confirma con el usuario, no releas archivos ni rehagas trabajo.
  2. Registro de Sesiones / Session Log (sección nueva al final) — Plantilla vacía lista para recibir entradas. Cada sesión tiene una entrada estructurada con: elementos completados, estado actual, archivos creados/modificados, descubrimientos clave, bloqueos y próximos pasos ordenados.


  Protocolo de Documentación: Incluye una sección que instruya a la IA ejecutora a crear y mantener un archivo DOCUMENTATION.md en la raíz del proyecto, separado del seguimiento de progreso del propio build plan. Este archivo tiene un único propósito: dar a una sesión de IA nueva el contexto suficiente para ponerse a trabajar inmediatamente sin releer todos los archivos fuente. Primera sesión: créalo después del primer trabajo de implementación con sustancia. La estructura debe incluir:
   (1) Referencia Crítica de Estructura y Arquitectura — árbol de directorios completo, descripción breve de cada archivo del proyecto, cómo interactúan los archivos entre sí, documentación explícita de los grupos de archivos modularizados para que la IA no intente modificar archivos monolíticos antiguos que ya se dividieron — esta sección NO debe cambiarse salvo que haya modificaciones reales en la estructura;
   (2) Arquitectura y Flujo — el proceso de punta a punta, qué corre dónde, especificaciones, formatos;
   (3) Entorno y Puesta en Marcha — versiones, rutas, comandos, dependencias;
   (4) Conocimiento Duramente Ganado y Problemas Resueltos — cada trampa encontrada y cómo se resolvió, valores de configuración descubiertos a base de prueba y error, callejones sin salida y por qué fallaron — esto ahorra muchísimo ensayo-error en sesiones futuras y NUNCA debe eliminarse;
   (5) Limitaciones Clave e Innegociables — decisiones de arquitectura que no deben cuestionarse, archivos de solo lectura, particularidades de la plataforma;
   (6) Estado Actual y Próximos Pasos — qué funciona, qué está a medias, el plan de aquí en adelante con suficiente detalle para que una IA nueva pueda ejecutarlo.
Sesiones siguientes: haz solo actualizaciones dirigidas (herramienta Edit, no reescritura completa), añade archivos/trampas/valores nuevos, actualiza las descripciones que cambien, elimina SOLO contenido genuinamente obsoleto con un objetivo de reducción del 1%, y nunca elimines problemas resueltos ni decisiones de arquitectura.
Verificación: «¿Es este el mismo doc pero con actualizaciones?» y «¿Podría una IA nueva continuar el trabajo solo con este doc?»
Incluye una checklist interna para que la IA la siga al actualizar. Avisos críticos: no te saltes información que cree falta de contexto, no seas tan esquemático que se pierda contexto, no lo infles con relleno — mantenlo apretado y eficiente en tokens.
(En este sistema existen los skills /doc-nueva y /doc-actualizar — indica en el build plan que el agente ejecutor los use para crear y actualizar el DOCUMENTATION.md.)


Por último, instruye a la futura IA para que EDUQUE y COMUNIQUE al usuario qué estamos haciendo en cada paso. Qué hacemos, cómo lo vamos a hacer y por qué. Así el usuario aprende y gana confianza.


========


## Protocolo de Investigación Profunda — Regla del Multiplicador 10x


PRINCIPIO: Nunca implementes con valores por defecto ingenuos cuando 45 min de investigación pueden dar una aceleración de 6-10x.


DISPARADOR: Antes de implementar cualquier tarea que implique:
- Elección de herramienta o plataforma
- Diseño del método o del enfoque de trabajo
- Montaje de infraestructura o del entorno
- Cualquier decisión que condicione el trabajo futuro


ACCIÓN:
1. PARA — No implementes todavía
2. IDENTIFICA — ¿Qué conocimiento específico cambiaría el enfoque?
3. GENERA — Escribe un prompt de investigación para que el usuario lo ejecute fuera
4. ESPERA — El usuario ejecuta la investigación en una sesión aparte y trae los resultados
5. VALIDA — Confirma que los resultados responden a las preguntas reales
6. CONTINÚA — Construye sobre terreno probado


POR QUÉ EXISTE ESTO:
- Tu conocimiento de entrenamiento puede estar desactualizado o incompleto
- Existen soluciones curtidas en batalla que no conoces
- Las malas decisiones tempranas se agravan hasta convertirse en semanas de retrabajo
- Los métodos y trucos descubiertos por la comunidad suelen superar a los valores por defecto en 5-10x


ANTI-PATRONES A EVITAR:
- ❌ Adivinar la configuración por defecto cuando existen configuraciones óptimas conocidas
- ❌ Construir desde cero cuando ya existen soluciones maduras que resuelven el problema
- ❌ Elegir herramientas bien documentadas pero abandonadas frente a alternativas activas
- ❌ Saltarse la investigación porque «probablemente ya sé suficiente»


MARCADOR: 🔬 (en los elementos del TODO que requieren investigación antes de ejecutar)
RECORDATORIO: Recuerda al usuario invocar /prepara-investigacion para cargar las INSTRUCCIONES de redacción del prompt de investigación y así poder crear un buen prompt.


======


PARA RESUMIR
Proceso
1. El usuario describe el proyecto lo mejor que puede
2. Carga /brainstorming — ida y vuelta colaborativa completa para refinar el concepto hasta un diseño claro. Los desvíos de investigación profunda se fomentan DURANTE el brainstorming siempre que una pregunta toque un terreno donde el conocimiento de la comunidad cambiaría la respuesta. Brainstorming e investigación van intercalados, no en secuencia.
3. Cuando el brainstorming concluye (resumen final del diseño aprobado en el chat), decide qué investigaciones profundas adicionales hacen falta para la fase de ejecución. Consigue la aprobación del usuario, crea los prompts de investigación. El usuario los ejecuta con agentes satélite y trae los resultados de vuelta.
4. Con el diseño validado por el brainstorming + los resultados de investigación en mano, crea el documento de build plan. El prompt de arranque para el siguiente agente DEBE ESCRIBIRSE EN LA CONVERSACIÓN DEL CHAT, NO EN EL DOCUMENTO DEL BUILD PLAN, para que el USUARIO pueda copiarlo y pegarlo fácilmente al siguiente agente, sin tener que ir a buscar el archivo, abrirlo, bajar hasta el final y encontrar el prompt para copiarlo y pegarlo... ¡demasiados pasos!




=============
