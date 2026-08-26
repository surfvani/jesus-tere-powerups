---
name: whatdocs
description: Usar cuando el usuario pida un arreglo, un cambio, una mejora o algo nuevo en la web (o en cualquier proyecto que ya existe) y lo correcto sea entender el sistema ENTERO antes de tocar nada — todavía no se aplica nada. Obliga a un protocolo de investigación primero: confirmar qué se está pidiendo de verdad, mirar la estructura del proyecto (con comandos dirigidos a carpetas concretas, nunca a todo), listar TODOS los documentos necesarios para hacerlo bien (páginas, plantillas, estilos, fotos, plugins, idiomas, formularios, ajustes), leer cada archivo ENTERO (saltarse archivos o partes de archivos está PROHIBIDO), reevaluar tras la primera pasada y leer más si hace falta, y proponer entonces la mejor solución — genérica, limpia, duradera, coherente con lo que ya existe y, sobre todo, que NO sea un duplicado de algo que ya está montado. Termina siempre con la puerta: /simplll + /deacuerdo, y no se toca nada hasta el GO explícito. No usar para erratas evidentes de un segundo, ni cuando el usuario diga explícitamente «hazlo directamente».
---

🛑 FASE DE SOLO INVESTIGACIÓN. NO TOQUES NADA.

Tu objetivo aquí: entender el sistema del todo y proponer una solución. Sin
ediciones, sin subir archivos, sin cambiar ajustes, sin ejecutar nada que
modifique el estado. Solo comandos de lectura (mirar, listar, buscar, contar,
consultar). Si te pillas a ti mismo yendo a por la herramienta Edit o a subir
algo — PARA. Eso es la fase siguiente, y la gobierna `/defcode`.

Ultrathink — piensa con el máximo esfuerzo antes de ejecutar estos pasos, y
piensa en profundidad entre paso y paso.

Antes de ponerte a explorar, cuestiona lo que te han pedido:
- ¿Entiendes lo que se te ha pedido?
- ¿Está bien explicado?
- ¿Tienes alguna duda?
- ¿Falta algo que el usuario debería contarte?
- ¿Hay algo que el usuario esté dando por supuesto y convenga aclarar?

Dilo si detectas algo que se ha dado por supuesto o se ha quedado fuera.

IMPORTANTE — qué cuenta como pregunta legítima en este momento:

SOLO se pregunta por INTENCIÓN o por ALCANCE — cosas que solo el usuario puede responder:
✅ «¿Esto es para todas las páginas, o solo para la de infantil?»
✅ «¿Cambiamos también la versión en valenciano, o solo la castellana?»
✅ «¿Quieres que se vea igual en móvil, o ahí prefieres otra cosa?»
✅ «¿El objetivo es que se arregle lo que ve la familia, o la causa de fondo aunque no se note?»

NO se pregunta nada que se pueda averiguar mirando el proyecto. Esto está PROHIBIDO:
❌ «¿Dónde está X?» → búscalo tú
❌ «¿Qué hace Y?» → léelo
❌ «¿Cómo funciona Z?» → míralo
❌ «¿Qué plugins tenéis instalados?» → consúltalo
❌ «¿Me pasas el archivo de la página?» → encuéntralo tú

La regla: si la respuesta está en el proyecto, no tienes derecho a preguntarla.
Haz el trabajo primero. Las preguntas perezosas hacen perder el tiempo al
usuario y demuestran que no te has puesto todavía.

=========

El bucle de descubrimiento — en orden, y repitiendo si hace falta:

  1. **Repite lo que has entendido — y ponte en marcha.** Di en un párrafo (como
     mucho) qué entiendes que hay que hacer. Si lo has entendido mal, el usuario
     te corrige AHORA (barato) en vez de después de leer veinte archivos (caro).
     Si tienes preguntas de INTENCIÓN o ALCANCE, hazlas aquí. Todo lo demás,
     búscalo tú. Sin preguntas perezosas.

  2. **Hazte con el mapa del terreno.** Empieza por el DOCUMENTATION.md del
     proyecto si existe — léelo entero. Después mira la estructura, pero dirigida
     a las carpetas que importan, nunca al proyecto entero de golpe (es lento y
     te llena la cabeza de ruido).

  3. **Lista TODOS los documentos que necesitas.** Concreto. Nada de «los
     archivos relevantes» — escribe las rutas de verdad.

  4. **Lee cada archivo ENTERO.** No fragmentos. No «las partes relevantes». El
     archivo completo. Saltarse archivos, o saltarse partes de archivos, está
     PROHIBIDO.

  5. **Reevalúa.** Pregúntate: «¿entiendo ya lo suficiente para proponer una
     solución limpia, o necesito ver más?» Si necesitas más → vuelve al paso 3
     con la lista nueva. Repite hasta entenderlo de verdad. Sin atajos.

Cada vuelta del bucle es barata comparada con un arreglo equivocado en una web
que están viendo las familias del colegio.

REGLAS DURAS

OBLIGATORIO:
- Leer entero cada archivo que tenga que ver con esto.
- Ganar todo el contexto que haga falta. Cuanto más, mejor. No supongas — comprueba.

PROHIBIDO:
- Saltarse archivos.
- Saltarse partes de un archivo.
- Dar por supuesto un comportamiento que no has verificado leyendo.
- Dejarte la capa de las plantillas, los estilos o los idiomas (son los asesinos silenciosos).

QUÉ SUELE HABER QUE MIRAR (adáptalo a lo que tengas delante):
- La página o sección concreta: su plantilla, su contenido, sus bloques
- El tema (theme) y sus archivos: plantillas, funciones, estilos
- Los plugins implicados (¿lo que se pide ya lo hace uno que está instalado?)
- **Los otros idiomas de la misma página** (WPML u otro sistema de traducción)
- Formularios, y a dónde envían los datos
- Fotos y archivos subidos: dónde viven, con qué tamaños
- Ajustes de configuración que afecten a lo que se pide
- Ejemplos de contenido ya existente que sigan el mismo patrón

=========

COMPROBACIONES DEL ENTORNO — si aplican al proyecto

Si es una web WordPress:
- Versión de WordPress y del PHP que la ejecuta
- Tema activo
- Plugins instalados y cuáles están activos
- Idiomas configurados
- Si hay caché, y de qué tipo
- Si hay copia de seguridad reciente y sitio de pruebas disponible

Sáltate lo que no aplique. El principio es: conoce el terreno antes de proponer
algo que depende de él.

=========

REGLA DE MEMORIA DEL CHAT

Si un archivo ya está en tu contexto varias veces (porque hemos ido dando
vueltas), usa la ÚLTIMA versión — esa es la actual. Las anteriores son borradores
muertos; no las uses.

Si no tienes claro cuál es la actual, PREGUNTA antes de suponer.

=========

Ultrathink. Piensa en profundidad entre paso y paso.

====

Cuando termines de investigar, propón tu solución.

La solución TIENE que cumplir TODO esto:

  1. **Genérica.** Arregla este problema Y evita que vuelva a pasar este tipo de problema. No un parche de una vez.
  2. **No empeora nada.** No estropea nada de lo que ahora funciona.
  3. **No rompe otra cosa.** Sin daños colaterales en otra parte del proyecto.
  4. **No es una tirita.** Va a la causa, no al síntoma.
  5. **No es un frankenstein.** No pega con celo cosas que no encajan entre sí.
  6. **No es un «ya lo arreglaremos bien más adelante».** Se hace bien ahora.
  7. **No es un truco.** Nada de atajos ingeniosos que dentro de seis meses nadie entienda.
  8. **Duradera.** Aguanta los próximos doce meses de cambios.
  9. **Aguanta el crecimiento.** Sigue funcionando con diez veces más páginas, fotos o visitas.
  10. **Limpia.** Se lee bien y sigue las costumbres que ya tiene el proyecto.

LA REGLA QUE MANDA POR ENCIMA DE TODO — coherente con lo que ya existe:
La solución tiene que encajar de forma limpia y lógica con cómo está montado todo
lo demás. Si no parece parte natural del proyecto, no es la solución correcta —
vuelve atrás y mira mejor.

LO INNEGOCIABLE — nada de duplicados:
TIENES que verificar que la solución NO sea un DUPLICADO de algo que ya existe.
Reinventar una rueda que ya está montada es mala arquitectura y está PROHIBIDO.

Antes de proponer, pregúntate: «¿ya hay en este proyecto un plugin, una plantilla,
un bloque o una forma de hacer que resuelva este tipo de problema?» Si la hay,
ÚSALA (o amplíala). No montes un sistema paralelo.

Ultrathink y dame la mejor solución (o varias opciones, si de verdad hay que
sopesar ventajas e inconvenientes).

EMPIEZA CREANDO UNA LISTA DE TAREAS

Usa las herramientas de tareas — `TaskCreate` un punto por paso, `TaskUpdate`
para ir moviéndolos a en curso / completado, `TaskList` para releer la lista —
y monta tu plan de investigación antes de leer nada.

Ejemplo de forma:

     ☐ Repetir al usuario lo que he entendido — confirmar que es eso
     ☐ Leer entero el DOCUMENTATION.md del proyecto
     ☐ Mirar la estructura de [carpeta concreta]
     ☐ Listar todos los documentos que necesito
     ☐ Leer [ruta concreta] — para entender [qué exactamente]
     ☐ Leer [ruta concreta] — para entender [qué exactamente]
     ☐ Comprobar las otras versiones de idioma de lo que se va a tocar
     ☐ Ver si este tipo de problema ya está resuelto en otro sitio del proyecto
     ☐ Reevaluar tras la primera pasada — ¿necesito leer más?
     ☐ Si sí: listar los nuevos, leerlos enteros
     ☐ Decir al usuario qué archivos he revisado
     ☐ Preguntar al usuario lo que solo él puede responder (nada de preguntas perezosas)
     ☐ Proponer la mejor solución — limpia, coherente, genérica, duradera, NO duplicada

=========

CUANDO PROPONGAS LA SOLUCIÓN — formato obligatorio

Cierra la fase de investigación con un bloque de PROPUESTA con esta forma exacta.
Esto es lo que el usuario aprueba o corrige, y lo que `/defcode` usará después
como especificación:

```
=== PROPUESTA DE SOLUCIÓN ===

PROBLEMA:
[1-2 frases — qué está roto o qué falta de verdad, y por qué pasa]

ENFOQUE PROPUESTO:
[La solución limpia, en un párrafo. Qué cambia, cómo, y por qué encaja aquí.]

ARCHIVOS QUE SE VAN A TOCAR:
- [ruta] — [qué cambia]
- [ruta] — [qué cambia]

ARCHIVOS QUE NO SE VAN A TOCAR (pero he mirado):
- [ruta] — [por qué se queda como está]

POR QUÉ ESTO NO ES UN DUPLICADO:
[Nombra lo que ya existe y has comprobado. Di por qué ninguno lo resuelve ya.]

OTROS IDIOMAS AFECTADOS:
- [página / versión] — [qué hay que hacer en cada una]

COMPROBACIONES QUE HARÉ AL TERMINAR:
- [qué se mirará para saber que funciona de verdad]

OTRAS OPCIONES QUE HE CONSIDERADO (solo si de verdad hay que elegir):
- Opción B: [enfoque] — [por qué la he dejado en segundo lugar]

PREGUNTAS ABIERTAS PARA EL USUARIO:
- [pregunta, si la hay]

=========
```

SECUENCIA FINAL OBLIGATORIA — todo en el mismo turno, sin esperar, sin preguntar:

1. Carga el skill `/simplll` y el skill `/deacuerdo` (las llamadas primero —
   cargarlos es preparación, no es entregar nada).
2. DESPUÉS escribe UN único mensaje final — sin ninguna llamada de herramienta
   después — que contenga, en este orden exacto:
   a. El bloque === PROPUESTA DE SOLUCIÓN ===
   b. La explicación en lenguaje llano de `/simplll`. Cargar el skill NO es el
      trabajo: el trabajo es la explicación entregada.
   c. La apertura de la puerta de `/deacuerdo`: anuncia la puerta, pon sobre la
      mesa tus asunciones más dudosas, y haz tu primera pregunta.
3. Y entonces PARA y espera al usuario.

⚠️ REGLA DE ENTREGA — aquí falló un agente de verdad. El texto escrito entre
llamadas de herramienta puede no llegar a verse, y lo que piensas no se ve nunca.
El texto a mitad de turno NO cuenta como entregado. Las tres piezas (a + b + c)
tienen que aparecer juntas en ese único mensaje final. Si falta alguna,
`/whatdocs` NO ha terminado — da igual lo que se hubiera «escrito» antes.

`/defcode` está BLOQUEADO hasta que la puerta de `/deacuerdo` se cierre con un GO
explícito. Cuando se cierre, el MISMO agente (tú) continúa con `/defcode` — sin
agente nuevo, sin perder el contexto.
