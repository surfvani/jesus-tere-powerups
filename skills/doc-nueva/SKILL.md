---
name: doc-nueva
description: Usar cuando Jesús o Tere quieran crear un DOCUMENTATION.md desde cero para un proyecto nuevo — el skill produce un documento Markdown completo que empieza con la sección bloqueada ⚠️ REFERENCIA CRÍTICA DE ESTRUCTURA Y ARQUITECTURA, explica la estructura de archivos (incluidos los grupos de archivos que se dividieron en partes más pequeñas), y da a una futura sesión de IA el contexto suficiente para hacer preguntas informadas. No usar para actualizar una documentación que ya existe (para eso está /doc-actualizar).
---

Crea un archivo de documentación.


Entero, en profundidad, completo, sin omisiones.

Piensa en esto: cuando vuelva a trabajar en este proyecto, le daré a la IA el archivo de documentación y después le pediré que me pida los documentos que necesite ver para hacerse una idea clara del proyecto. Es decir, la Documentación no tiene que tenerlo TODO. Pero tiene que tener lo que es importante, para que la IA gane contexto y pueda hacer preguntas informadas para ampliar conocimiento (lo que necesite para ponerse a trabajar).

De nuevo, piensa en el objetivo principal: un archivo que le dé a la IA todo el contexto necesario para empezar.

AL MISMO TIEMPO, NO SEAS TAN ESQUEMÁTICO QUE PERDAMOS CONTEXTO.

Escribe en Markdown.

El documento nuevo debe contener toda la información necesaria.



====

OBJETIVO DE TAMAÑO — PREGUNTA PRIMERO

Antes de escribir el documento, propón un objetivo de número de líneas y pide aprobación.

ANCLA POR DEFECTO: una documentación inicial suele empezar en ~500-700 líneas. Esa es la base — ajústala arriba o abajo según lo que veas de verdad:

1. ALCANCE DEL PROYECTO — mira la carpeta real del proyecto (árbol de archivos, tipos de archivo, qué hay dentro de los archivos).
   ¿Cuánta superficie tiene que navegar el siguiente agente?

2. ALCANCE DEL TRABAJO DE ESTA SESIÓN — mira el contexto de esta conversación.
   ¿Qué se ha construido / tocado / decidido de verdad en esta sesión?
   ¿Este documento cubre el proyecto ENTERO, o solo la parte de esta sesión dentro de un proyecto más grande?
   ¿Cómo de denso es el conocimiento duramente ganado — muchas trampas descubiertas, o trabajo sin sorpresas?

Después pregunta:

«Proyecto: [resumen en 1 línea de lo que ves].
Esta sesión: [resumen en 1 línea de lo construido / decidido].
Densidad de conocimiento duramente ganado: [baja / media / alta — di por qué].
Objetivo de tamaño propuesto: ~[N] líneas (por defecto ~500-700, ajustado porque [razonamiento]).
¿Lo apruebas, me das otro número, o me orientas?»

Lo que el usuario apruebe es el TECHO DURO. Si te pasas mientras escribes, para y vuelve a apretar el texto antes de terminar.


====

MUY IMPORTANTE — PRIMERA SECCIÓN

## ⚠️ REFERENCIA CRÍTICA DE ESTRUCTURA Y ARQUITECTURA

**📌 NOTA: Esta sección NO debe cambiarse salvo que haya modificaciones reales en la estructura de archivos. NO omitirla al actualizar la documentación. Actualizarla SOLO si se hacen cambios reales en la estructura del proyecto.**

Esta sección debe incluir una estructura clara y detallada de los archivos y de cómo interactúa cada archivo con los demás.

Incluye una descripción breve de cada archivo principal del proyecto (los que importan, no los auxiliares o técnicos).

Incluye una descripción detallada de los grupos modularizados.
A veces un archivo grande se ha dividido en un grupo de archivos más pequeños. La IA se confunde con esto: ve el archivo grande antiguo y se pone a modificar ese archivo.
Asegúrate de documentar de forma clara y detallada la estructura de archivos y cómo se relacionan entre sí, prestando especial atención a los grupos modularizados.
Entiende el proyecto y proporciona una estructura de archivos clara y cómo interactúa cada archivo con los demás.

Para este paso, no asumas nada. Ejecuta `tree -L 3` (filtrando ruido: carpetas de sistema tipo node_modules o .git, archivos multimedia pesados tipo *.wav *.mid, checkpoints, archivos generados automáticamente) para ver la estructura real y actual de los archivos.

NOTA — para qué sirve lo del `tree`: es un comando que dibuja de un vistazo el árbol de carpetas y archivos del proyecto (qué hay y cómo está organizado). Aplica igual de bien a aplicaciones que a cualquier otro tipo de proyecto donde haya archivos (documentos, estrategias, materiales…). Si el ordenador no tiene `tree` instalado, no pasa nada: simplemente investiga el directorio del proyecto por tus propios medios — lista las carpetas y mira qué archivos hay dentro de cada una — hasta tener la misma foto.

Usa lo que encuentres. Si nuestra conversación ya documentó la estructura de archivos, consérvala y actualízala con lo que hayamos modificado esta sesión. Importante: si necesitas ver algún archivo o carpeta adicional, pide.


========

REGLAS ANTI-VERBORREA (aplican en cada sección, sea cual sea el objetivo de tamaño):

- Usa tablas y listas donde encajen. No escribas 3 párrafos cuando una tabla de 4 filas hace el mismo trabajo.
- Nunca dupliques información entre secciones — haz referencia en su lugar («ver § Arquitectura»).
- Cada sección tan apretada como pueda estar sin dejar de ser completa. «Completo» NO significa «verboso».
- Si una sección es naturalmente corta (p. ej., la estructura de un proyecto de 4 archivos), déjala corta. No la rellenes para «parecer exhaustivo».
- Al terminar de escribir, busca explicaciones repetidas del mismo concepto y consolídalas en un solo sitio.
- Las instrucciones maximalistas («entero, en profundidad, completo, sin omisiones») significan COBERTURA, no CANTIDAD DE PALABRAS. Cúbrelo todo. Apretado.

=========

NOTAS FINALES IMPORTANTES
NO TE SALTES NI OMITAS COSAS QUE CREARÁN FALTA DE CONTEXTO MÁS ADELANTE
EL ARCHIVO HA SIDO DISEÑADO MUY CUIDADOSAMENTE TAL Y COMO ESTÁ. NO ELIMINES, OMITAS NI TE SALTES INFORMACIÓN IMPORTANTE. LA MAYORÍA DE LA INFORMACIÓN ES IMPORTANTE Y CRUCIAL Y NO DEBE SER ELIMINADA, OMITIDA, SALTADA NI MODIFICADA, SALVO QUE ACABES DE MODIFICAR ALGO ESPECÍFICO EN EL PROYECTO Y HAGA FALTA DOCUMENTARLO

SECCIÓN DE PRÓXIMOS PASOS: Incluye una sección de Próximos Pasos SOLO si no existe un build plan / documento de traspaso aparte que sea el dueño de la hoja de ruta del proyecto. Si existe un build plan, él es el dueño de «lo que viene ahora» — este documento captura lo que el sistema ES, no lo que está planeado. No dupliques la hoja de ruta aquí.

CONOCIMIENTO DURAMENTE GANADO: A medida que el proyecto evolucione, se añadirá una sección de «Conocimiento duramente ganado y problemas resueltos». Una vez las entradas aterrizan ahí, SE QUEDAN PARA SIEMPRE — son la destilación irreemplazable del tiempo invertido en resolver problemas. Nunca las elimines en futuras actualizaciones.
