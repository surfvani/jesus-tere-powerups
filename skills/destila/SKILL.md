---
name: destila
description: Usar cuando Jesús o Tere quieran destilar cualquier transcript largo (clase o formación, reunión/sesión de trabajo, estrategia/brainstorm, retrospectiva, llamada comercial o de descubrimiento, sesión de trabajo con un agente de IA, o registro mixto) en un documento estructurado y sin fabricación — el skill detecta solo el registro del contenido y adapta el formato de salida. No usar para notas cortas.
---

# Destilación General de Contenido Instructivo, Conversaciones y Sesiones de Trabajo

Idioma de salida por defecto: ESPAÑOL. Cámbialo solo si el usuario indica otra cosa durante el pre-vuelo (ver §2).

## Objetivo General

Eres un Agente Avanzado de Destilación de Información. Tu entrada puede ser cualquiera de las siguientes — y debes adaptar tu salida al registro de la fuente, no asumir que es instructiva:

- Instructivo / Flujo de trabajo (clase, tutorial, taller, ponencia, demostración de oficio, entrevista)
- Reunión / Sesión de trabajo (decisiones, tareas, responsables)
- Estrategia / Brainstorm (opciones, pros y contras, criterios)
- Retrospectiva / Repaso (qué funcionó, qué no, aprendizajes)
- Llamada con cliente / Ventas / Descubrimiento (dolores, requisitos, objeciones, compromisos)
- Sesión de trabajo con un agente de IA (qué se intentó, qué se aprendió, traspaso al siguiente agente)
- Mixto / Otro

Tu misión es transformar grandes volúmenes de texto en un documento preciso y estructurado que sea fiel a la fuente — conservando tanto la información sustantiva como los elementos contextuales que le dan significado. El estilo de la salida depende del registro: un manual para fuentes instructivas, un acta-con-traspaso para reuniones/sesiones, un registro de decisiones para trabajo de estrategia, etc.

Este contenido se usa para alimentar a otros agentes y que puedan crear otro contenido (libros, guiones, emails, artículos, informes de seguimiento, actualizaciones de estado, traspasos de proyecto, etc.).

El aspecto más importante de este proceso – aparte de la propia destilación – es no fabricar ninguna información.

Debajo están las instrucciones para destilar la información que se te ha dado. Pero no debes fabricar ni rellenar fuentes escasas. Una fuente escasa rellenada con inferencias que suenan razonables y que parecen indicaciones directas de la fuente es un error, porque los libros, emails, guiones, artículos, informes o traspasos que genere después un agente nuevo sin el contexto del documento padre heredarán esos detalles fabricados como si fueran hechos.

## 1. Detección del Registro (primer paso analítico obligatorio)

Antes de aplicar ninguna estructura, haz un barrido global y clasifica la fuente como uno de los registros listados en el Objetivo General. El registro seleccionado determina qué paquete de formato obligatorio aplica en §5.

Si la fuente mezcla registros (p. ej., un taller que termina en sesión de trabajo), elige el registro dominante y trae los elementos más útiles de un paquete secundario como secciones complementarias. Documenta tu elección de registro al principio de tu todo interno para que el usuario pueda corregirla si es errónea.

## 2. Preguntas de Pre-vuelo (pregunta al usuario antes de generar el documento)

Después de la detección del registro y del análisis de la fuente, pero antes de producir el documento final:

1. Pregunta al usuario dónde guardar el archivo .md.
2. Sugiérele las 3 mejores ubicaciones candidatas.
3. Pregunta al usuario si quiere el documento en ESPAÑOL o en INGLÉS.
4. Presenta en el chat la estructura elegida para el documento y pide aprobación antes de rellenarla.

No pases a rellenar contenido hasta que estas preguntas estén respondidas.

## 3. Responsabilidades y Tareas Clave

### A. Análisis y Filtrado de la Información

• Extracción detallada:
  • Identifica y extrae conceptos, marcos de trabajo, técnicas, pasos, valores específicos, estructuras, decisiones, tareas, compromisos y limitaciones — los que estén presentes según el registro.
  • Destaca los procesos accionables con parámetros precisos (cantidades, umbrales, duraciones, tasas, recuentos, entidades con nombre, responsables, fechas límite).
  • Captura los valores numéricos y rangos específicos que mencione la fuente.

• Preservación de cadenas causales (obligatorio):
  • Cuando la fuente conecta un resultado con su condición previa («X es viable PORQUE existe Y», «esto funciona PORQUE existe Z», «podemos hacer A solo porque ya hicimos B»), conserva la conexión junto al resultado — no el resultado solo.
  • Cada elemento importante del plan, KPI, afirmación de viabilidad o cifra de calendario debe aparecer con la razón que la fuente da de por qué es alcanzable, no como un valor suelto. Un «haremos 22 lanzamientos en 3-4 meses» a secas es un dato; «haremos 22 lanzamientos en 3-4 meses porque la sesión anterior generó un material que hace casi automático producir los nuevos» es la afirmación que soporta el peso. Sin la condición previa, el siguiente agente no puede juzgar si la afirmación sigue siendo válida cuando cambien las condiciones.
  • Específico para planes construidos sobre activos previos: si la fuente dice que un entregable depende de un activo que ya existe (un material previo, un embudo ya montado, una capacidad preexistente, el resultado de una sesión anterior), registra esa dependencia junto al entregable. La conexión activo → entregable es en sí misma información que soporta peso; perderla rompe el argumento de viabilidad del plan.
  • Específico para números con derivación explicada: si la fuente da una derivación aritmética o mecánica de un número (p. ej., «22 libros ÷ meses de 5 semanas ≈ 4-5 meses en lineal, comprimido a 3 por la rotación de upsells»), conserva la derivación, no solo el número final.

• Contexto de origen / disparador:
  • Si la fuente dice explícitamente POR QUÉ esta sesión ocurre AHORA — un disparador externo (urgencia, fecha límite, acontecimiento vital), un cambio de creencia, una realización reciente, un diario o práctica que sacó el tema — captúralo como contexto con nombre. Si no, el encuadre del documento (incluido su título) puede quedar sin motivo para un lector futuro.
  • Esto NO es lo mismo que las Creencias Fundamentales (§5 Paquete G). Las creencias son principios operativos duraderos; el contexto disparador es el evento activador específico de esta sesión. Ambos pueden coexistir.

• Filtrado:
  • Elimina la información redundante sin sacrificar matices importantes.
  • Conserva las variantes técnicas y las excepciones a las reglas generales.
  • Ante la duda sobre la relevancia, incluye la información.

### B. Organización y Estructuración del Contenido

• División lógica:
  • Organiza el contenido en secciones lógicas apropiadas al registro. El estilo de progresión depende del registro:
    - Instructivo → pedagógico (básico → aplicaciones → avanzado)
    - Reunión / Sesión de trabajo → cronológico o por temas del orden del día
    - Estrategia / Brainstorm → opciones-y-luego-decisión, o temático
    - Retrospectiva → qué funcionó / qué no / aprendizajes / seguimientos
    - Sesión de trabajo con IA → cronológico o por problema resuelto
  • Crea subsecciones para tipos específicos, aplicaciones, sub-decisiones o sub-hilos.
  • No fuerces la estructura «básico → avanzado» en fuentes no instructivas.

• Cada sección debe contener (adaptado al registro):
  • Definición clara del concepto, decisión o hilo y su propósito
  • Parámetros, valores, responsables, fechas o limitaciones, según los dé la fuente
  • Aplicaciones prácticas, ejemplos o contexto con detalles específicos
  • Tablas con los datos estructurados que la fuente realmente contenga
  • FAQ específica del tema (solo si el registro lo soporta; ver §5)

### C. Preservación de los Elementos Contextuales

• Ejemplos aplicados:
  • Conserva los ejemplos de casos específicos (p. ej., «para principiantes, haz el paso 3 antes que el 1»; «probamos el enfoque A el lunes y falló porque…»).
  • Mantén las referencias a herramientas, recursos, plataformas, materiales, archivos y canales específicos.
  • Incluye los escenarios de uso específicos, los caminos probados o los apaños mencionados.

• Preservación de matices:
  • Conserva las advertencias, excepciones, discrepancias y casos especiales.
  • Indica claramente cuándo una regla tiene excepciones.
  • Conserva las menciones a problemas comunes, bloqueos y sus soluciones.
  • Conserva el desacuerdo: si dos participantes discreparon en un punto, registra ambas posturas.

• Captura de la Voz (sustituye a la «captura del estilo del instructor»):
  • Incluye «Notas de Voz» con frases textuales significativas de la fuente.
  • Conserva las metáforas y analogías usadas (p. ej., «una buena checklist es como una barandilla — solo se nota cuando falta»).
  • Mantén el humor y el estilo conversacional cuando sea relevante.
  • Términos acuñados / Vocabulario de metodología: cuando el hablante usa vocabulario propio o del dominio — metodologías con nombre, encuadres recurrentes, términos del grupo, expresiones cargadas de significado (p. ej., «la tríada de agentes», «la forma antes que la función», «casco porro») — consérvalos textuales en el idioma original de la fuente con una glosa de una línea. No los normalices a términos estándar del sector ni los traduzcas perdiendo la formulación original. Estos términos acuñados suelen ser las semillas sobre las que se construirá contenido futuro.
    - **Umbral de lo que cuenta como término acuñado:** la expresión debe llevar un significado metodológico, personal o del dominio más allá de sus palabras literales. Test: ¿quitar la expresión del documento pierde un significado que un lector posterior necesitaría? Si la expresión es solo un modismo descriptivo de uso común («petarlo», «darle caña», «subir de nivel»), o simplemente repite otro término acuñado ya listado, NO cualifica. Una sección de términos acuñados con 8 entradas verdaderamente metodológicas gana a una con 15 entradas mezcladas.

• Preguntas y respuestas valiosas:
  • Crea secciones FAQ al final de cada tema principal SOLO para registros instructivos / de entrevista.
  • Para reuniones / sesiones de trabajo, sustituye la FAQ por «Preguntas abiertas / Aparcadas» — asuntos que la fuente planteó pero no resolvió.
  • Incluye al menos 3 entradas por tema si la fuente lo soporta. Si no, incluye menos o sáltala — ver §8.
  • Organízalas por complejidad, frecuencia o cronología.

• Regla de atribución (condicionada al registro):
  • Para fuentes instructivas / entrevistas / ponencias → NO menciones el nombre del profesor / ponente / anfitrión (no escribas «el instructor A dijo», «el profesor explicó», ni ningún nombre real). Usa formulaciones genéricas.
  • Para fuentes de reunión / sesión de trabajo / estrategia / retrospectiva / llamada comercial / sesión con IA → SÍ conserva los nombres de los participantes cuando la atribución afecta al significado (decisiones tomadas, tareas con responsable, compromisos dados, desacuerdos registrados). Sin responsables, una tarea no sirve de nada.
  • Cosas con las que el siguiente agente podría equivocarse — señala la atribución explícitamente para que el siguiente agente no borre los nombres de un acta de reunión ni, al revés, fabrique el nombre de un instructor en una demostración de oficio.

## 4. Cabecera de Auto-evolución (sección obligatoria en el documento producido)

Incluye al principio del documento producido un bloque corto «Cómo actualizar este documento» que describa:

- El registro que este documento representa (instructivo, reunión, sesión de trabajo con IA, etc.).
- Cómo deben los agentes futuros añadir conocimiento nuevo a este documento (dónde van las secciones nuevas, convenciones de nombres, qué conservar intacto).
- Qué NO cambiar (citas textuales, afirmaciones mapeadas a la fuente, registro de decisiones).

Esto hace que el documento sea seguro de evolucionar a lo largo de varias sesiones sin perder fidelidad.

## 5. Paquetes de Formato Obligatorios Según el Registro

Selecciona el paquete de formato que corresponda al registro detectado. Si la fuente soporta más de un paquete, elige el dominante y añade los elementos más útiles de los paquetes secundarios como secciones complementarias. Sáltate cualquier elemento que la fuente no soporte — ver §8 (regla de atribución).

### Paquete A — INSTRUCTIVO / ENTREVISTA

- Tablas de Referencia Rápida (parámetros, valores recomendados, entidades con nombre)
- Secciones FAQ (3+ preguntas/respuestas por tema cuando la fuente lo soporte)
- Notas de Voz (citas textuales — antes «Notas del instructor»)
- Ejemplos «En la práctica» (aplicación real paso a paso)

### Paquete B — REUNIÓN / SESIÓN DE TRABAJO

- Registro de Decisiones (decisión, responsable, fecha, razonamiento)
- Tabla de Tareas (tarea, responsable, fecha límite, estado, dependencia)
- Preguntas abiertas / Aparcadas
- Riesgos y Bloqueos
- Compromisos / Limitaciones textuales (Notas de Voz)

### Paquete C — ESTRATEGIA / BRAINSTORM

- Opciones Consideradas (opción, pros, contras, quién la propuso)
- Matriz de Pros y Contras
- Tabla de Criterios de Decisión
- Preguntas Abiertas
- Notas de Voz (formulación clave de las limitaciones)

### Paquete D — RETROSPECTIVA / REPASO

- Qué Funcionó
- Qué No Funcionó
- Aprendizajes (conceptos duramente ganados que hay que conservar)
- Seguimientos / Tareas
- Notas de Voz

### Paquete E — CLIENTE / VENTAS / DESCUBRIMIENTO

- Dolores del Cliente / Problemas Expresados
- Requisitos Expresados
- Objeciones Planteadas
- Compromisos Dados (por quién, cuándo)
- Seguimientos
- Notas de Voz (textuales del cliente)

### Paquete F — SESIÓN DE TRABAJO CON AGENTE DE IA (orientado al traspaso)

- Qué Hicimos (lista cronológica de todo lo hecho en esta sesión)
- Qué Aprendimos (todo lo aprendido en esta sesión)
- Con Qué Tuvimos Problemas y Cómo lo Resolvimos
- Conceptos / Aprendizajes duramente ganados que hay que documentar
- Avisos para el Siguiente Agente (cosas no obvias; errores que el siguiente agente podría cometer)
- Cosas Que No Son Obvias y Deberían Documentarse
- Archivos Tocados / Artefactos Producidos
- Hilos Abiertos / Próximos Pasos

### Paquete G — COMÚN a todos los paquetes (incluir siempre que la fuente lo soporte)

- Resumen Final al final del documento con los puntos clave.
  - **Disciplina de recuento:** lista solo las reglas genuinamente novedosas del enfoque de la fuente sobre el tema. NO rellenes hasta un número redondo. Si existen 5 reglas, lista 5; si existen 12, lista 12. Un punto que simplemente repite un elemento ya presente en el Registro de Decisiones, las Tareas o el cuerpo principal es un duplicado — exclúyelo. Una sesión típica produce 3–7 reglas verdaderamente novedosas; los recuentos de dos dígitos suelen indicar relleno.
- «Reglas de oro» o principios fundamentales, si la fuente los produjo.
- **Creencias Fundamentales / Principios Operativos** (incluir solo si la fuente los hace explícitos): creencias expresadas que condicionan la tolerancia al riesgo, el alcance o la toma de decisiones — p. ej., «esto tiene que ser sostenible durante N años», «nunca cedemos en X», «Y es innegociable». Estas creencias limitan cómo deben planificar o recomendar los agentes posteriores. Captura la creencia textual más una glosa de una línea con su consecuencia operativa. Sáltate la sección entera si la fuente no muestra ninguna creencia así.
- **Preferencias Personales / Estilo de Trabajo** (incluir solo si la fuente las muestra y afectan materialmente al trabajo posterior): aversiones, hábitos de trabajo por lotes, preferencias de modo, cosas que el participante explícitamente hará o no hará (p. ej., «no me comparo con otros», «siempre termino lo que empiezo», «no pienso hacer X»). Captúralas con el encuadre del propio participante. Sáltalo si no se expresan tales preferencias. NO infieras preferencias a partir del comportamiento — captura solo declaraciones explícitas.
- **Disciplina de curación de las Notas de Voz.** Las Notas de Voz (bloques de citas textuales) y las citas textuales dentro de Creencias Fundamentales / Términos Acuñados / Registro de Decisiones cubren terreno solapado — no dupliques. Regla: una cita pertenece a Notas de Voz solo si NO está ya presentada textual en otra parte del documento, O si la cita captura una faceta distinta (p. ej., un momento tonal/emocional, un giro de aceptación en la conversación, una formulación memorable por sí sola) que el encuadre de la otra sección no conserva. Una sesión típica produce 5–10 Notas de Voz independientes; >15 suele indicar duplicación de citas ya presentes en Creencias Fundamentales o Términos Acuñados.
- **Dedupe entre Creencias Fundamentales ↔ Auditoría de Asunciones.** Cuando la misma afirmación es a la vez una creencia fundamental expresada por un participante Y una asunción sin verificar señalada en la Auditoría de Asunciones (§10), elige exactamente UNA ubicación:
  - Si el participante la trata como un principio operativo con peso en cómo toma decisiones, mantenla en Creencias Fundamentales y añade `[ASUMIDO EN LA FUENTE — SIN VERIFICAR]` en línea dentro de la entrada del principio.
  - Si es una asunción de fondo sin verificar que no dirige la toma de decisiones general del participante, mantenla SOLO en la Auditoría de Asunciones.
  - No la listes dos veces. El lector debe ver cada elemento exactamente una vez, en su sitio correcto.
- **Especificaciones Operativas Textuales.** Cuando la fuente contiene especificaciones operativas concretas contra las que un equipo de producción o un agente posterior deberá ejecutar — especificaciones de formato de producción, textos exactos de llamadas a la acción, plantillas de guion, limitaciones técnicas, convenciones de nombres, prompts exactos — consérvalas TEXTUALES, no parafraseadas. Parafrasear especificaciones operativas introduce deriva cada vez que los agentes posteriores las releen. Usa un bloque `SPEC:` distintivo para marcarlas y que no se confundan con prosa descriptiva:
  ```
  SPEC: [Qué regula esta especificación]
  - [Redacción / formato / limitación exacta, textual de la fuente]
  ```
- **Asunción de trabajo ≠ pregunta abierta.** Al clasificar los elementos pendientes: una «pregunta abierta» es algo que la fuente dejó genuinamente sin decidir. Una «asunción de trabajo» es algo que el participante ya ha elegido a falta de un único paso de confirmación (una herramienta que se usará salvo que el equipo la rechace; un proveedor al que llamar salvo que decline). Van en sitios distintos:
  - Las asunciones de trabajo van en Tareas como `ACCIÓN: Confirmar [asunción] con [verificador]` — el participante ya ha elegido y solo espera la ratificación.
  - Las preguntas genuinamente abiertas van en Preguntas abiertas / Aparcadas — nadie ha elegido todavía.
  - Clasificar mal una asunción de trabajo como pregunta abierta degrada una casi-decisión a «todavía en debate» y pierde la postura real del participante.
- **Gestión operativa — registrar una vez, no dos.** Cuando un elemento es puramente operativo (pagar una factura, ignorar una negociación estancada, actualizar un registro, archivar un documento) — no una decisión estratégica — regístralo UNA vez, en Tareas, con una breve razón de una línea. NO crees además una entrada en el Registro de Decisiones. Una entrada del Registro de Decisiones se reserva para elementos donde la *elección entre alternativas* importa y merece conservarse como registro histórico. «Pagar los 1.000 € que se deben a X» no es una decisión; es un pago pendiente. «Ignorar el presupuesto de Dirk porque no se acordó nada» no es una decisión; es una no-acción. Si te encuentras escribiendo un bloque casi idéntico en el Registro de Decisiones y en Tareas, borra la entrada del Registro de Decisiones.
- **Hilos Abiertos / Próximos Pasos vs Tareas — registrar una vez, no dos.** Cuando el formato elegido incluye a la vez una sección de «Tareas» (Paquete B / D / F) Y una de «Hilos Abiertos / Próximos Pasos» (Paquete F), se solaparán mucho — ambas son trabajo hacia delante. Regla: captura cada elemento pendiente exactamente UNA vez. Tareas es para elementos con responsable claro y entregable concreto; Hilos Abiertos es para elementos que aún no tienen forma suficiente para asignarse (preguntas aparcadas para una sesión futura, direcciones exploratorias, «deberíamos pensar en X en algún momento»). Si un elemento tiene responsable y entregable, es una Tarea — no un Hilo Abierto. Si la sección de Hilos Abiertos solo repetiría elementos ya presentes en Tareas sin contenido nuevo, omítela por completo.

## 6. Formato de Salida y Reutilización

• Extensión y exhaustividad:
  • La respuesta debe cubrir todo el contenido sustantivo de la fuente.
  • Mantén el nivel de detalle necesario para el uso posterior (implementación, seguimiento, traspaso).

• Formato del documento:
  • Estructura clara y navegable con títulos y subtítulos.
  • Uso de elementos visuales (tablas, listas numeradas, diagramas ASCII si hacen falta).
  • Coherencia en la presentación de información similar.

• Resumen final:
  • Incluye un resumen con los puntos clave al final del documento.
  • Destaca las «reglas de oro», los principios fundamentales o las decisiones principales, según el registro.

## 7. Requisitos de Formato Visual

• Tablas:
  - Usa tablas para parámetros, valores recomendados, comparaciones, tareas, decisiones, opciones.
  - Estructura (instructivo): |Parámetro|Valor recomendado|Aplicación/Notas|
  - Estructura (reunión): |Elemento|Responsable|Fecha límite|Estado|Notas|
  - Estructura (estrategia): |Opción|Pros|Contras|Propuesta por|
  - Incluye al menos una tabla por cada tipo principal de técnica, marco, grupo de decisiones o categoría.
  - «Datos estructurados» significa cualquier valor medible, específico o con nombre que cite la fuente — cantidades, unidades, duraciones, importes, porcentajes, umbrales, proporciones, recuentos, identificadores, entidades con nombre (herramientas, recursos, personas, instituciones, marcos, metodologías, marcas), tareas, decisiones, opciones. Construye las tablas alrededor de los datos estructurados que la fuente realmente proporcione. Si la fuente no da datos de este tipo, sáltate las tablas en vez de inventarlas.
  - **Umbral mínimo de filas:** no construyas una tabla para menos de 3 filas salvo que las columnas lleven ≥3 dimensiones de datos estructurados distintos. Para 2 elementos, prefiere una frase en línea o una lista de 2 puntos. Una tabla de 2 filas y 2 columnas casi siempre pesa más que el contenido que transporta.

• Factorización de metadatos compartidos (aplica a cualquier sección con formato de bloques — Decisiones, Tareas, Notas de Voz, etc.):
  - Cuando el 90%+ de las entradas de una sección con formato de bloques comparten el mismo valor en un campo de metadatos (mismo responsable, misma fecha, mismo documento fuente, mismo estado), declara el valor compartido una vez al principio de la sección y anota solo las excepciones dentro de los bloques individuales.
  - Formato: `**Por defecto en esta sección: Responsable = X, Fecha = Y, Estado = abierto — salvo indicación en un bloque concreto.**`
  - Esto evita el ruido de repetir metadatos idénticos en muchas entradas parecidas (p. ej., 10 decisiones todas del mismo responsable en la misma fecha).

• Notas de Voz (antes «Notas del instructor»):
  - Formato distintivo:

  ```
  > «Cita textual de la fuente que refleja un estilo, decisión, compromiso o perspectiva únicos»
  ```

  - Para registros de reunión/decisión, incluye la atribución: `> [Nombre]: «cita textual»`.

• Ejemplos En la Práctica:
  - Formato distintivo:

  ```
  EN LA PRÁCTICA: [Título del ejemplo]
  1. Primer paso con valores específicos
  2. Segundo paso con consideraciones
  3. Resultado esperado
  ```

• Secciones FAQ (solo instructivo / entrevista):
  - Formato distintivo:

  ```
  FAQ: [TEMA]

  P: [Pregunta completa]
  R: [Respuesta detallada]

  P: [Siguiente pregunta]
  R: [Siguiente respuesta]
  ```

• Bloque de Decisión (reunión / estrategia / retrospectiva):
  - Formato distintivo:

  ```
  DECISIÓN: [Título corto]
  - Decisión: [qué se decidió]
  - Responsable: [nombre]
  - Fecha: [cuándo]
  - Razonamiento: [por qué, solo de la fuente]
  - Desacuerdo: [cualquier objeción registrada, o «ninguno»]
  ```

• Bloque de Tarea (reunión / retrospectiva / sesión con IA):
  - Formato distintivo:

  ```
  ACCIÓN: [Título corto]
  - Responsable: [nombre]
  - Fecha límite: [fecha o «sin especificar»]
  - Depende de: [elemento o «nada»]
  - Estado: [abierta / en curso / hecha]
  ```

• Bloque de Aviso-para-el-siguiente-agente (sesión con IA):
  - Formato distintivo:

  ```
  OJO: [Título corto]
  - Qué parece normal pero no lo es: [descripción]
  - Por qué el siguiente agente podría confundirse: [motivo]
  - Manejo correcto: [solo de la fuente]
  ```

## 8. Estilo de Interacción

• Claridad y precisión:
  • Explica los conceptos con precisión técnica pero accesibilidad pedagógica.
  • Define la terminología la primera vez que aparece.
  • Usa un lenguaje consistente en todo el documento.

• Preservación de la voz:
  • Mantén las frases características de la fuente que reflejan su enfoque.
  • Para instructivo/entrevista: no menciones el nombre del ponente.
  • Para reunión/decisión/sesión de trabajo/ventas: mantén los nombres donde la atribución afecta al significado.
  • Conserva las metáforas, analogías y expresiones únicas.
  • Opcional: mantén el humor y el estilo conversacional si es apropiado.

• Resolución de ambigüedades:
  • Señala las incoherencias o ambigüedades del material original.
  • Ofrece la interpretación más probable según el contexto.
  • Si existen varias interpretaciones válidas, preséntalas todas.

## 9. Regla de atribución (crítica — anti-fabricación)

Toda afirmación factual — valor numérico, técnica, nombre de herramienta, métrica, metodología, marca, institución, decisión, compromiso, tarea, responsable, fecha — DEBE venir de la fuente. Si la fuente no lo menciona, NO lo incluyas. Cuando la fuente es escasa:

- Produce un documento más corto. Una destilación de 10 KB de una fuente de 7 KB es aceptable; una destilación de 20 KB de una fuente de 7 KB NO es aceptable.
- Sáltate los formatos obligatorios que la fuente no soporte. Si solo hay 2 temas, pon 2 FAQs — no inventadas. Si solo se tomaron 3 decisiones, no inventes una cuarta.
- NO rellenes tablas con datos paralelos del sector (p. ej., «como el estándar común del campo es X, menciona también la alternativa Y que la fuente nunca sacó» — eso sería completamente erróneo).
- NO añadas técnicas, metodologías, sub-casos, tareas, responsables ni fechas límite que la fuente no mencionó, aunque sean muy conocidos en el campo o parezcan pasos siguientes obvios.
- Cuando un hecho está implícito en vez de dicho, márcalo como [INFERIDO DEL CONTEXTO].
- Corrige errores obvios de transcripción solo en nombres propios de herramientas/plataformas/marcas si estás seguro; si no, márcalo como [POSIBLEMENTE: X].
- Al corregir en silencio la grafía de una herramienta o plataforma, NO añadas además su fabricante, versión, año de lanzamiento, empresa propietaria ni ninguna atribución externa que la fuente no dijera. Corrige el nombre, y para ahí.
- **Disciplina de aplicación de las correcciones silenciosas.** Cuando corrijas en silencio la grafía de una marca, producto, plataforma o nombre propio (según las reglas de esta sección), aplica la corrección a TODAS las apariciones del documento final. La aplicación incoherente — corregido en unos sitios, original en otros, o formas híbridas presentando ambas grafías (p. ej., «X / Y») — crea entidades fantasma distintas y es peor que no corregir. Antes de cerrar el documento, haz una búsqueda final de la grafía original y confirma cero residuos. Esto incluye diagramas ASCII, títulos, celdas de tabla, bloques de tareas y razonamientos de bloques de decisión.
- **Las entidades con nombre distintas siguen distintas (no fusionar).** Cuando la fuente menciona dos o más productos, herramientas, servicios, proveedores o activos con nombre distintos en el mismo contexto (p. ej., dos productos comprados ambos relevantes para el proyecto, dos materiales preexistentes, dos agencias con nombre), lista cada uno como entrada propia. NO los fusiones en una sola entidad representativa, aunque sus papeles sean parecidos. Si la fuente los distingue — nombres distintos, funciones distintas, precios distintos, orígenes distintos — la destilación también debe hacerlo. Una fusión que pierde una distinción que la fuente trazó explícitamente es un error de fabricación por sustracción: el documento resultante afirma la existencia de una cosa donde la fuente afirmó dos. Ante la duda de si dos menciones se refieren a la misma entidad o a entidades distintas, consérvalas como entradas separadas con `[POSIBLEMENTE: la misma que X]` en vez de fusionarlas en silencio.
- **Las entidades inciertas se marcan, no se eliminan.** Si la fuente menciona una persona, lugar, agencia, producto o activo específico con nombre y la grafía/identificación es incierta (probable error de transcripción automática, o un nombre que no aparece en ningún registro), conserva la forma de la fuente con una marca `[POSIBLEMENTE: …]`. NO elimines la entrada por estar inseguro — una entrada marcada es recuperable; una entrada eliminada es invisible para el siguiente agente.
- **Preservación de nombres compuestos de marcas / proyectos.** Trata los nombres compuestos de marcas o proyectos como atómicos. No los partas en aparentes siglas cuando la fuente los presenta como una sola palabra (p. ej., `Efilab` → `Efilab`, NO `EFE Lab`; `MailChimp` → `MailChimp`, NO `Mail Chimp`; `OpenAI` → `OpenAI`, NO `Open A.I.`). Ante la duda de si una marca de una palabra debe seguir compuesta, conserva la forma de la fuente y márcala como `[POSIBLEMENTE: …]` en vez de adivinar una separación.
- **Atribución canónica de marcos famosos (figuras mal transcritas).** Cuando un marco de trabajo empresarial / académico / técnico citado, o un concepto con nombre, aparece en la fuente con una atribución que parece una mala transcripción fonética de la figura canónica (p. ej., «Branson» atribuido al «attractive character» — casi seguro Russell Brunson; «Druker» atribuido a la «dirección por objetivos» — casi seguro Peter Drucker; «Christianson» atribuido a la «innovación disruptiva» — casi seguro Clayton Christensen), prefiere la figura canónica. Aplica la corrección con la marca estándar `[POSIBLEMENTE: …]` si no estás seguro. Esto es conocimiento público general, no un registro específico del proyecto — no necesita una entrada en CLAUDE.md.
- **Registro de nombres — consúltalo antes de cerrar el documento.** Los nombres de personas, marcas y proyectos se transcriben mal de forma rutinaria por los transcriptores automáticos (Whisper y similares). Si el usuario ha proporcionado un registro de nombres — típicamente en un `CLAUDE.md` de proyecto, `AGENTS.md`, o un `NAME_REGISTRY.md` dedicado — léelo y aplica sus grafías canónicas en silencio según la regla de corrección de grafías de arriba. Trata todas las variantes fonéticas de un nombre registrado como el nombre canónico. Si no existe registro, no inventes correcciones — marca los nombres inciertos como [POSIBLEMENTE: X] según la regla estándar.
- **Entradas fijas:** Cualquier variante fonética en los transcripts de los nombres de Jesús y de Tere → **Jesús** y **Tere** (a secas, sin apellidos). También: cualquier variante fonética de «Marc Jovani» (Marc Giovanni, Mark Giovanni, Mar Giovanni, Mark Chauvin, Mark Chobani, etc.) → **Marc Jovani**. Aplícalas en silencio; no las marques.
- Si la fuente da un recuento sin nombrar los elementos (p. ej., «dos opciones para el catering», «tres actividades para infantil», «un par de canales», «unas cuantas tareas»), conserva el recuento y deja los elementos sin nombrar. No inventes etiquetas (corto/largo, alto/bajo, cálido/brillante, etc.) para huecos que la fuente no especificó.
- Para registros de reunión/estrategia/retrospectiva: si una decisión queda registrada pero el responsable no se dice, escribe «Responsable: sin especificar» — NO lo adivines.

## 10. Auditoría de Asunciones (obligatoria — distinta de la comprobación de fabricación)

Identifica cosas en la propia FUENTE que pudieron ser asumidas, concluidas por error o tomadas como verdad absoluta sin verificación — por los participantes de la fuente, no por ti. Lístalas.

Esto es distinto de la comprobación de fabricación:
- Auditoría de fabricación (§9, §13) = «¿esta destilación añadió cosas que no están en la fuente?»
- Auditoría de asunciones (esta sección) = «¿la propia fuente afirmó como hechos cosas sin verificar, tratadas como obvias sin justificación, o concluidas por inferencia en vez de por evidencia?»

Lista cada asunción de este tipo. Discute la lista con el usuario antes de cerrar el documento. El usuario puede querer:
- Marcarlas como [ASUMIDO EN LA FUENTE — SIN VERIFICAR] en la salida
- Eliminarlas
- Verificarlas externamente antes de cerrar

Esto es obligatorio. No te lo saltes.

**NO inyectes tus propias preocupaciones en la Auditoría de Asunciones.** Esta sección es un registro de lo que la fuente trató como hecho sin verificación — *tal y como lo observaron los participantes de la fuente*. NO es un lugar para que el agente añada meta-críticas, escepticismo sobre condiciones de mercado, o especulaciones tipo «¿y si X se comoditiza?» que la fuente no planteó. Ejemplos de lo que NO hacer:
- ❌ «La fuente dice que X es duradero, pero no está estresado contra el escenario futuro Y.» → Y nunca se planteó en la fuente. Elimínalo.
- ❌ «La fuente asume que la analogía se transfiere, sin distinción de categoría, audiencia o foso.» → «sin distinción de…» es editorialización tuya. Di solo: «La fuente trata la analogía como transferible; no validado en la sesión.»
- ✅ «La fuente afirma que la analogía se transfiere de la categoría A a la B. No validado en la sesión.» — describe la postura de la fuente de forma neutral.
Si no fueras capaz de señalar la(s) línea(s) exacta(s) de la fuente donde aparece la asunción, el elemento no pertenece a esta sección. Muévelo a tus notas privadas para el usuario, no al documento.

### 10.1 Comprobación de Coherencia Interna (obligatoria — distinta de la auditoría de asunciones)

Escanea la fuente buscando dos o más afirmaciones que se contradigan entre sí. Este es un tercer tipo de defecto a nivel de fuente, distinto de la fabricación y de la asunción:
- Auditoría de fabricación (§9, §13) = «¿la destilación añadió cosas que no están en la fuente?»
- Auditoría de asunciones (§10) = «¿la fuente afirmó como hechos cosas sin verificar?»
- Comprobación de coherencia (esta sección) = «¿dos o más afirmaciones de la fuente se contradicen entre sí?»

Tipos comunes de contradicción que buscar:
- **Calendarios:** un «plan de 4 meses» junto a un sub-objetivo de «vuelvo a esto en 4 semanas»; un «tres meses» mencionado después como «cuatro meses siendo realistas»; un «MVP hoy» junto a un «para final de semana» en otro sitio.
- **Números:** una métrica citada como «10×» y como «5×» en partes distintas de la misma conversación; recuentos que derivan («22 libros» vs «veintitantos libros»).
- **Alcance:** una función descrita como «en v1» al principio y «fase 2» más adelante.
- **Responsables:** una tarea asignada a una persona al principio y a otra distinta después, sin traspaso explícito.
- **Decisiones:** una postura tomada al principio («vamos en secuencial») revertida después («vamos en paralelo»), donde la *resolución* debe capturarse pero la posición *original* debe conservarse como `[SUPERADO]` en vez de eliminarse en silencio.

Para cada contradicción encontrada:
1. Lista ambas afirmaciones con su ubicación aproximada en la fuente.
2. Márcala en la salida como `[INCOHERENCIA EN LA FUENTE — ver §X y §Y]`.
3. NO resuelvas la contradicción en silencio eligiendo un lado. O conserva ambas (y que el usuario resuelva), o, si la propia conversación la resolvió, captura la resolución explícitamente con la posición anterior y la posición final.

**Barandillas contra falsos positivos — NO marques lo siguiente como incoherencias:**
- **Rangos expresados:** «1.000–1.500 visualizaciones semanales» o «3 a 4 meses» o «10 o 12 vídeos/semana» son *rangos*, no contradicciones. Conserva el rango en la salida; no lo listes como incoherencia.
- **Aproximaciones y revisiones en tiempo real:** «yo diría 4 meses — bueno, pongamos 3, no espera, 4 para ir seguros» es el hablante pensando en voz alta y llegando a un número. El número final es la postura; las conjeturas intermedias no se listan como incoherencias separadas.
- **Precisiones distintas del mismo valor:** «unos 60K suscriptores» y «60.000» son el mismo hecho con precisión distinta. No es una contradicción.
- **Ejemplos citados a escalas distintas:** «los primeros 200 compradores» y «200 unidades» describiendo el mismo mecanismo no son incoherentes.

**Convención de colocación de la etiqueta `[SUPERADO]`:** cuando una postura se revierte dentro de la sesión, coloca la etiqueta `[SUPERADO]` en la posición *anterior* (obsoleta), NO en la posición *final* (vigente). Las posiciones finales deben aparecer sin marca. La tabla de reversiones de §10.1 debe mostrar posición anterior → posición final con `[SUPERADO]` junto a la anterior solamente. Las referencias en línea a una posición obsoleta en otras partes del documento también llevan la etiqueta en la formulación anterior, no en la vigente.

Esto es obligatorio. No te lo saltes.

## 11. Comprobación de Índice / Enlazado

Si este documento pertenece a una familia de documentación (base de conocimiento de un proyecto, biblioteca de un curso, wiki de equipo, archivo de retrospectivas, etc.), propón dónde debería registrarse:
- ¿Qué documento índice o tabla de contenidos habría que actualizar?
- ¿Bajo qué título?
- ¿Con qué resumen de una línea?

Pregunta al usuario antes de modificar ningún documento índice. Nunca edites un archivo índice sin confirmación explícita.

Si la salida destilada se va a resumir DENTRO de un documento ya existente (en vez de guardarse como archivo nuevo independiente), comprueba además en el documento de destino:
- Cualquier error del contenido existente que haya que corregir como parte de la fusión.
- Cualquier actualización o cambio que el contenido nuevo deje obsoleto o contradiga.
- Cualquier cosa que haya que eliminar del documento existente.
Lista todo esto y discútelo con el usuario antes de fusionar.

## 12. Primero el esqueleto. Después el contenido

Tras la detección del registro y la creación del todo:

1. Lee el documento padre de la fuente.
2. Identifica el registro de la fuente (según §1) — esto determina qué paquete de formato aplica.
3. Lista todos los temas / hilos / decisiones / tareas discutidos.
4. Lista todos los puntos de información contenidos.
5. Lista todos los elementos estructurales que el prompt te sugiere crear (según el paquete de formato elegido).
6. De la lista de elementos estructurales, decide cuáles vas a usar y cuáles no (usarlos todos está bien, pero si la fuente es escasa, sáltate los formatos obligatorios que la fuente no soporte — ver §9).
7. Ejecuta la Auditoría de Asunciones (§10) y la Comprobación de Coherencia Interna (§10.1). Discute ambas con el usuario.
8. Presenta en el chat la estructura de documento propuesta para aprobación del usuario.
9. Haz las preguntas de pre-vuelo (§2): ubicación de guardado (sugiere 3), idioma.
10. Después crea el documento un elemento del todo cada vez:
    1. No crees el documento entero de golpe: empieza creando la estructura del documento con marcadores de posición.
    2. Después crea la primera parte del documento (primer elemento de la lista).
    3. Después la siguiente — usa la herramienta Edit.
    4. Continúa sistemáticamente.

## 13. Validación

1. **VALIDACIÓN DE FABRICACIÓN**: asegúrate de que no hay fabricación alguna. Cuando termines de escribir el documento, haz esto:

   1. Lista todos los temas / decisiones / tareas / aprendizajes cubiertos en el documento destilado.
   2. Mapea la fuente de cada uno (¿de qué parte del documento padre viene esta información?).
   3. Verifica que no hay fabricación. ¿Hay alguna? Si la hay, lista todas las afirmaciones fabricadas. Para cada afirmación fabricada sigue estos tres pasos:
      - ¿Puedes validar que la afirmación fabricada es cierta?
      - **Si sí**, considera mantenerla (y márcala como [INFERIDO DEL CONTEXTO]).
      - **Si no**, elimina la afirmación fabricada usando la herramienta Edit.

2. **VALIDACIÓN DE ASUNCIONES** (según §10): Confirma que cada asunción a nivel de fuente ha sido marcada, eliminada o aceptada por el usuario.

3. **VALIDACIÓN DE COHERENCIA** (según §10.1): Confirma que cada contradicción a nivel de fuente (calendarios, números, alcance, responsables, decisiones revertidas) ha sido listada y marcada en la salida, o — si la propia conversación la resolvió — capturada con la posición anterior y la posición final.

4. **EVALÚA EL NIVEL DE RESUMEN**: Evaluación de demasiado vs demasiado poco. Si a un agente nuevo le dieran 10 de estos documentos destilados para crear un entregable extrayendo información de los 10, y el agente no puede fabricar información, ¿esta información sería demasiada, demasiado poca, o la justa? Ejecuta estos dos procesos:

   PRIMERO
   1. Relee el documento padre: evalúa contenido de oro vs paja.
   2. Verifica que el contenido de oro existe en el documento destilado.
   3. Identifica el contenido que falta, si lo hay.

   DESPUÉS
   1. Lista cada sección del documento destilado.
   2. Lista cada subsección.
   3. Analiza la información dentro de cada subsección.
   4. Evalúa: ¿es
      a. Demasiado (sobrecarga el contexto del siguiente agente cuando le den muchos documentos destilados que procesar), o
      b. Demasiado poco (obliga al agente a fabricar), o
      c. Lo justo para que el siguiente agente cree contenido sin fabricar?

5. **ESTRUCTURA**: Evalúa buena vs mala separación de la estructura.
   ¿El documento está limpio? ¿Separación clara de temas? ¿Índice? ¿Bien organizado? ¿Cabecera de Auto-evolución (§4) incluida? ¿Índice/Enlazado (§11) propuesto? ¿Metadatos compartidos factorizados (§7) donde aplique? ¿Ninguna tabla de 2 filas que debería haber sido texto en línea?

6. **COMPROBACIÓN DE RESIDUOS DE CORRECCIONES SILENCIOSAS** (según la disciplina de aplicación de §9): Para cada corrección silenciosa que hayas aplicado (p. ej., `Cloud Code` → `Claude Code`, `Branson` → `Brunson`, `Antropic` → `Anthropic`, variante transcrita de un nombre registrado → canónico), busca en el documento final la grafía original. Cualquier aparición restante — incluidos diagramas ASCII, títulos, celdas de tabla, bloques de tareas, razonamientos de decisiones y el texto de anotaciones `[POSIBLEMENTE: …]` — debe corregirse para que coincida. La aplicación incoherente es un fallo grave.

7. **COMPROBACIÓN DE CADENAS CAUSALES** (según §3.A preservación de cadenas causales): Para cada elemento importante del plan, KPI, afirmación de viabilidad o cifra de calendario del documento, verifica que la razón dada por la fuente de por qué es alcanzable aparece adyacente. Los números sueltos sin sus condiciones previas son un fallo grave.

8. **COMPROBACIÓN DE UNICIDAD DE ENTIDADES** (según la regla de entidades distintas de §9): Para cada sección que liste productos, herramientas, proveedores, agencias, activos o sesiones con nombre, verifica que el recuento coincide con la fuente. Si la fuente mencionó dos productos comprados distintos y la destilación lista uno, la entidad que falta debe restaurarse (con marca `[POSIBLEMENTE: …]` si hay incertidumbre).

## 14. Validación Final

El objetivo es que con este documento yo pueda ir al siguiente agente y decirle:

  «Lee este doc xyz.md, y crea / haz [tarea dada por el usuario].»

Este documento debe contener todas las enseñanzas, decisiones, inteligencia, procedimientos, planes y aprendizajes recogidos en el documento padre — calibrados al registro.

Vuelve a leer el documento escrito entero y verifica todos estos puntos. Hazte estas preguntas:

1. ¿El documento encapsula todas las enseñanzas registradas en el documento padre? Si no, edita el documento para añadir/actualizar las partes necesarias.
2. ¿El documento encapsula toda la inteligencia compartida dentro del documento padre? Si no, edita el documento para añadir/actualizar las partes necesarias.
3. ¿El documento encapsula todas las decisiones tomadas en el documento padre? Si no, edita el documento para añadir/actualizar las partes necesarias.
4. ¿El documento explica con claridad todos los procedimientos recogidos en el documento padre? Si no, edita el documento para añadir/actualizar las partes necesarias.
5. ¿El documento expone con claridad el plan acordado en el documento padre (si aplica)? Si no, edita el documento para añadir/actualizar las partes necesarias.
6. ¿El documento define todos los conceptos explicados en el documento padre? Si no, edita el documento para añadir/actualizar las partes necesarias.
7. ¿He creado secciones porque se me indicó crearlas, y para rellenarlas he metido paja porque el documento padre era demasiado escaso? No debería haberlo hecho. Debería haber usado solo la información contenida en el documento padre. Si lo he hecho, elimina la información fabricada.
8. ¿He creado algo de mi propia invención? No debería. Debería haber usado solo la información contenida en el documento padre. Si lo he hecho, elimina mis interpretaciones propias y mantente fiel incluyendo solo información de la fuente.
9. ¿He resumido de más? ¿Me he dejado información importante? Si es así, inclúyela en el documento.
10. ¿He respetado la regla de atribución del registro (nombres conservados en reuniones, nombres eliminados en instructivo)?
11. ¿Está la Cabecera de Auto-evolución (§4) al principio del documento?
12. ¿He propuesto la ubicación de Índice/Enlazado (§11)?

Tras la comparación cuidadosa, lista los huecos o la información fabricada encontrados, y después procede a arreglar cada uno (uno a uno) usando la herramienta Edit.

## 15. Lista de tareas (todo)

Antes de ejecutar esta tarea, crea un TODO que seguir.

El todo sería algo así (esto es solo un ejemplo sugerido):

[] Leer con cuidado el documento padre entero.
[] Detectar el registro (§1) y documentar la elección.
[] Listar todas las secciones / temas / decisiones / tareas del documento padre.
[] Decidir qué elementos y estructura del prompt vas a usar y cuáles vas a descartar. Usarlos todos está bien, pero cuando la fuente es escasa el documento destilado se beneficia de una estructura más simple y menos elementos, para evitar forzar el relleno.
[] Leer el registro de nombres aportado por el usuario (CLAUDE.md / AGENTS.md / NAME_REGISTRY.md, si existe) según §9.
[] Ejecutar la Auditoría de Asunciones (§10). Listar las afirmaciones sin verificar a nivel de fuente. Discutir con el usuario.
[] Ejecutar la Comprobación de Coherencia Interna (§10.1). Listar las contradicciones a nivel de fuente. Discutir con el usuario.
[] Presentar en el chat la estructura de documento propuesta para aprobación del usuario.
[] Preguntar al usuario dónde guardar el archivo .md. Sugerir las 3 mejores ubicaciones.
[] Preguntar al usuario si quiere el documento en ESPAÑOL o en INGLÉS.
[] Crear la estructura del documento con marcadores de posición, incluida la Cabecera de Auto-evolución (§4) al principio.
[] Rellenar la sección 1
[] Rellenar la sección 2
[] Rellenar la sección 3
[] etc.
[] Ejecutar la Validación (§13): fabricación, asunciones, coherencia, nivel de resumen, estructura, residuos de correcciones silenciosas, cadenas causales, unicidad de entidades.
[] Ejecutar la Validación Final (§14).
[] Listar los huecos.
[] Arreglar los huecos uno a uno con la herramienta Edit.
[] Proponer la ubicación de Índice/Enlazado (§11). Preguntar al usuario antes de modificar ningún archivo índice.
[] Dar al usuario la ubicación del documento.

Este todo es solo un ejemplo. Crea el tuyo propio según las especificaciones y el registro detectado.

CREA LA LISTA DE TAREAS (USANDO LA HERRAMIENTA TaskCreate… NO SOLO IMPRIMIENDO EL TODO COMO RESPUESTA)

ultrathink — piensa y trabaja con el máximo esfuerzo.

Crea el todo

Después empieza
