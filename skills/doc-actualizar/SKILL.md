---
name: doc-actualizar
description: Usar cuando Jesús o Tere quieran actualizar un DOCUMENTATION.md existente después de una sesión de trabajo, una implementación, un arreglo o una mejora — conserva toda la información crítica, añade los aprendizajes nuevos y los obstáculos superados con sus soluciones, elimina solo el contenido totalmente obsoleto, y busca quedar ~1% más corto para que una sesión de IA nueva pueda retomar el trabajo sin pérdida de contexto. No usar para crear una documentación desde cero (para eso está /doc-nueva).
---

bien, vamos con la documentación

primero

lista todo lo que hemos hecho en esta sesión

después organiza dónde debería ir cada cosa que hemos hecho

después valida:

¿Es esto todo lo que hemos hecho durante esta sesión?
¿Falta algo en esta lista?
relee la conversación entera (la sesión) y si te has dejado algo, inclúyelo en la lista

===

Ahora vamos a actualizar la documentación

ENCUENTRA el documento. LÉELO FRESCO DESDE EL DISCO antes de actualizarlo — aunque creas que ya lo tienes en memoria. En sesiones largas la versión en memoria puede estar resumida o desactualizada, y estás a punto de sobrescribir el archivo real. Relee siempre desde disco primero para tener el estado actual.

ACTUALÍZALO: El archivo debe contener exactamente la misma documentación que acabas de leer... pero actualizada con todas las novedades, implementaciones y mejoras que hemos hecho

Entero, en profundidad, completo, sin omisiones. El documento nuevo debe contener la misma información más las actualizaciones, quedando alrededor de un 1% más corto. Si no llegas al 1%, no pasa nada — acercarte significa que has hecho una pasada real de optimización, que es de lo que se trata.

Al final del día... piensa en esto: cuando vuelva a trabajar en este proyecto, le daré a la IA el archivo de documentación para cargarle el contexto, y después le pediré que me pida los documentos que necesite ver para hacerse una idea clara del proyecto. Es decir, la Documentación no tiene que tenerlo TODO. Tiene que tener lo que es importante, para que la IA gane contexto y pueda hacer preguntas informadas para ampliar conocimiento (lo que necesite para ponerse a trabajar en el proyecto)

Además, puedes deshacerte de las partes de información que ya están obsoletas por el motivo que sea. O quizá problemas que estaban abiertos y ya están resueltos. Deja igualmente el problema que tuvimos y cómo lo resolvimos, pero si hay algún hilo abierto que ya no necesita estar ahí (en cuanto a problemas), puedes quitar esa parte.

De nuevo, piensa en el objetivo principal: un archivo que le dé a la IA contexto SUFICIENTE para empezar.

AL MISMO TIEMPO, NO SEAS TAN ESQUEMÁTICO QUE PERDAMOS CONTEXTO.

Escribe en Markdown

El documento nuevo debe contener la misma información más las actualizaciones, quedando alrededor de un 1% más corto. Si no puedes clavar exactamente el 1%, acercarte está bien — el objetivo de la cifra es forzar una pasada real de optimización, no clavar un número concreto.

Cómo hacerlo un 1% más corto — elimina solo cosas que a estas alturas del desarrollo están completamente obsoletas (problemas resueltos que no dejaron ningún aprendizaje útil, cosas que ya no existen, enfoques abandonados) o resume áreas que ya no necesitan tanto detalle en este punto del desarrollo. NO elimines el conocimiento duramente ganado ni las entradas de problemas resueltos — esas se quedan para siempre.

====

Ya has visto lo útil que es tener documentados los retos y obstáculos que hemos superado. Esas soluciones vienen genial en el futuro, cuando nos los volvemos a encontrar y tú no tienes contexto. Ahorra muchísimo ensayo y error. Asegúrate de documentarlos

===========

LOS ARCHIVOS SE ACTUALIZAN, NO SE CREAN
ENCUENTRA EL ARCHIVO MENCIONADO ARRIBA
ACTUALÍZALO, NO CREES UN ARCHIVO NUEVO

========

SOLO SI esta sesión ha producido una hoja de ruta clara de lo que viene después Y no existe un build plan / documento de traspaso aparte que sea dueño de esa hoja de ruta: añade o actualiza una sección breve de Próximos Pasos. Si no, sáltatela — los Próximos Pasos pertenecen al build plan o al prompt de traspaso, no a este documento de referencia. Este documento captura lo que el sistema ES, no lo que viene después.

Antes de terminar, haz una investigación final de la estructura de archivos si algo de la arquitectura ha cambiado esta sesión. Ejecuta `tree -L 3` filtrando ruido (carpetas de sistema, multimedia pesado, archivos generados) para confirmar que la documentación refleja el estado real. (Si el ordenador no tiene `tree` instalado, no pasa nada: investiga el directorio por tus propios medios y mira qué archivos hay dentro de cada carpeta.)

RESUMEN
Tu trabajo es crear una documentación actualizada y completa que incluya:
- El estado actual completo
- Todo el conocimiento duramente ganado y las entradas de problemas resueltos (se quedan para siempre)
- Todo el contexto necesario para una sesión de IA nueva
- Próximos Pasos SOLO si ningún build plan / documento de traspaso es dueño de la hoja de ruta (ver la regla condicional de arriba)

Asegúrate de incluir toda la información necesaria para que el siguiente chat de IA tenga todo el contexto para operar al máximo

===================

REGLAS ANTI-VERBORREA (aplican en cada sección, sea cual sea la longitud):

- Usa tablas y listas donde encajen. No escribas 3 párrafos cuando una tabla de 4 filas hace el mismo trabajo.
- Nunca dupliques información entre secciones — haz referencia en su lugar («ver § Arquitectura»).
- Cada sección tan apretada como pueda estar sin dejar de ser completa. «Completo» NO significa «verboso».
- Al actualizar, busca explicaciones repetidas del mismo concepto y consolídalas en un solo sitio.
- Las instrucciones maximalistas («entero, en profundidad, completo, sin omisiones») significan COBERTURA, no CANTIDAD DE PALABRAS. Cúbrelo todo. Apretado.

=========

NOTAS FINALES IMPORTANTES
NO TE SALTES NI OMITAS COSAS QUE CREARÁN FALTA DE CONTEXTO MÁS ADELANTE
EL ARCHIVO HA SIDO DISEÑADO MUY CUIDADOSAMENTE TAL Y COMO ESTÁ. NO ELIMINES, OMITAS NI TE SALTES INFORMACIÓN IMPORTANTE. LA MAYORÍA DE LA INFORMACIÓN ES IMPORTANTE Y CRUCIAL Y NO DEBE SER ELIMINADA, OMITIDA, SALTADA NI MODIFICADA, SALVO QUE ACABES DE MODIFICAR ALGO ESPECÍFICO EN EL PROYECTO Y HAGA FALTA DOCUMENTARLO

=============

La clave es mantener el contexto suficiente para que la siguiente IA pueda entender:
  - De qué va el proyecto y cómo funciona esta implementación
  - La arquitectura específica
  - Cómo ejecutar y modificar las cosas
  - Qué limitaciones existen, por qué, y cómo las resolvimos

Actualiza la documentación. Mantenla ágil, con instrucciones de puesta en marcha claras para la IA nueva. Debe seguir siendo completa pero eficiente en tokens.

======

No elimines información crítica que nos costó mucho descubrir.

========

NO reescribas la documentación entera. Solo haz actualizaciones

========

Verificación:
- ¿Es esta la misma documentación pero con actualizaciones y progreso? Si sí, has hecho un buen trabajo.
- ¿Estás seguro de que, si borro tu contexto ahora mismo, podrías continuar donde lo dejamos solo leyendo esta documentación?

Piensa en profundidad. Piensa mucho antes de ejecutar estos pasos. Piensa en profundidad entre pasos.

EMPIEZA CREANDO UN TODO ... por ejemplo:

     ☐ Leer el archivo de DOCUMENTACIÓN actual FRESCO DESDE DISCO (no fiarse de la copia en memoria)
     ☐ Leer la conversación con cuidado para entender todos los cambios hechos
     ☐ Hacer la actualización dirigida #1
     ☐ Hacer la actualización dirigida #2
     ☐ Hacer la actualización dirigida #3
     etc
     ☐ Pensar si hay que añadir/actualizar la sección de Próximos Pasos (SOLO si ningún build plan / doc de traspaso es dueño de la hoja de ruta)
     ☐ Pensar si hay que actualizar la Estructura de Directorios
     ☐ Pensar si hay que actualizar el contexto Inicial
     ☐ Analizar la Documentación entera para ver si hay partes que optimizar, reducir o eliminar A CAUSA DE la implementación que acabamos de hacer, para ayudar a mantener la documentación contenida y potencialmente reducir la longitud un 1% (quedarse corto del 1% está bien — lo importante es la pasada de optimización)
     ☐ Pensar, antes de reducir, si esas reducciones generarán falta de contexto
     ☐ Nunca eliminar conocimiento duramente ganado ni entradas de problemas resueltos
     ☐ Ejecutar los pasos de verificación

  no infles el documento con relleno y grasa. mantenlo apretado y eficiente en tokens

====

cuando termines

¿están todos los puntos de la lista incluidos, o en la documentación o en el documento de plan (el sitio que corresponda)?

lista cada punto de la lista otra vez (la lista entera), indica dónde debería ir, y después dime si ha sido incluido (sí/no)
