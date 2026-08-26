---
name: deacuerdo
description: Usar inmediatamente después de la fase de exploración de una sesión ejecutora — cuando el prompt de traspaso lo ordena tras la lectura obligatoria, justo después de la explicación de /simplll (se dispara automáticamente — puerta obligatoria, NO se toca ningún documento ni se ejecuta nada hasta que la puerta se cierre con un GO explícito del usuario) — o de forma independiente siempre que usuario y agente necesiten alineamiento verificado antes de ejecutar algo importante (revisión de un plan, una decisión de peso). Conduce una conversación de aclaración + brainstorming — el agente anuncia la puerta, pone sobre la mesa sus asunciones más dudosas, hace una pregunta de decisión por mensaje (mejor con opciones; 2-3 enfoques con recomendación en las bifurcaciones), dice qué ha cambiado tras cada respuesta, mínimo 3 intercambios (mejor 5) contados en silencio, y cierra solo con un GO explícito. Jesús responde mejor con apoyo visual (artifacts); Tere, con texto; Ali, conversación directa. Nunca produce un documento de especificaciones ni toca archivos. Saltarla solo si el usuario lo ordena explícitamente.
---

# 🛑 LA PUERTA DEL ACUERDO — no se construye nada hasta estar en la misma página

## CUÁNDO SE DISPARA
- Automáticamente al final de la fase de exploración de una sesión ejecutora, justo después de la explicación de /simplll (lo ordena el prompt de traspaso de /continuia). Obligatoria, no opcional.
- De forma independiente: siempre que usuario y agente necesiten alineamiento verificado antes de construir algo importante (revisión de un plan, una decisión grande).

## LA PUERTA DURA
NO toques ningún documento, no ejecutes nada, no tomes ninguna acción de implementación hasta que esta puerta se cierre con un GO explícito del usuario. Aplica a TODAS las propuestas, da igual lo simples que parezcan.

Única excepción: el usuario ordena explícitamente saltar la puerta («sáltate la puerta», «ejecuta directamente»). Obedece — pero antes di, en una frase, el mayor riesgo que queda sin examinar.

## POR QUÉ EXISTE
Las sesiones duran ~2 horas. La energía humana se va gastando por el camino, y la conversación que detectaría una dirección equivocada normalmente nunca llega a ocurrir. Un caso real lo demostró: una sola conversación de revisión con energía fresca cambió por completo el resultado de una sesión. Esta puerta convierte esa conversación en algo estructural en vez de un golpe de suerte. Cinco minutos aquí ahorran días — a veces semanas — de construir con confianza la cosa equivocada.

## EL MOVIMIENTO DE APERTURA
Anuncia la puerta, con este espíritu:

> «No vamos a avanzar hasta que haya evidencia clarísima de que tú y yo estamos en la misma página — así que ahora toca una sesión de aclaración + brainstorming.»

Después, en el mismo mensaje, desnúdate:
- Tus 2-3 asunciones más dudosas (cosas que has decidido sin que el usuario las dijera)
- La decisión de la propuesta que menos seguro estás de que el usuario tomaría igual

Después haz tu primera pregunta. Solo una.

## ANTI-PATRÓN: «DEMASIADO OBVIO PARA NECESITAR ESTO»
Las propuestas «simples» son donde las asunciones sin examinar causan más trabajo tirado a la basura. Cuanto más limpia parece la propuesta, más sospechoso deberías estar de que nadie la ha desafiado todavía. Todas las propuestas pasan por la puerta.

## REGLAS DE CONDUCTA
1. Una pregunta por mensaje. Un tema grande = varios turnos, no un muro de preguntas.
2. Mejor con opciones (tipo test); abiertas cuando las opciones no se puedan enumerar.
3. Solo preguntas de decisión — intención, alcance, prioridades, pros y contras. Las preguntas que los documentos pueden responder siguen PROHIBIDAS (responderlas era el trabajo de la exploración).
4. En cada bifurcación: 2-3 enfoques, pros y contras en llano, empieza por tu recomendación y el porqué.
5. Tras cada respuesta del usuario, di qué acaba de cambiar en tu comprensión o en la propuesta («Eso cambia X» / «Eso confirma Y»). Nada de asentir en silencio.
6. Sé flexible — vuelve atrás cuando algo no cuadre. Avanzar en línea recta sin mirar atrás es el modo de fallo.
7. Recorta sin piedad lo innecesario (YAGNI). La puerta puede ENCOGER la propuesta — recortar alcance es uno de los mejores resultados que esta conversación puede producir.
8. Lenguaje llano todo el rato — registro /simplll, no registro de ingeniero.
9. Al usuario se le habla de tú, en singular — NUNCA de «vosotros», aunque haya más de una persona en la sala. Te diriges a quien escribe.

## APOYO VISUAL
Por cada pregunta, haz el test: ¿el usuario entenderá esto mejor VIÉNDOLO que leyéndolo?
- SÍ → carga el skill artifact-design, monta el visual (antes/después, comparativa de opciones lado a lado, diagrama de flujo o de fases — mermaid funciona nativo en los artifacts), publícalo y ábrelo. No pidas permiso.
- NO (preguntas de alcance, listas de pros y contras, opciones en texto) → quédate en el chat.

Un tema visual no es automáticamente una pregunta visual. Reserva los artifacts para los momentos donde ver gana de verdad a leer — entonces impactan.
¿No hay herramienta Artifact en la sesión? Plan B: un archivo HTML local abierto en el navegador, o un esquema en texto en el chat.

## MODO SEGÚN USUARIO
- **Jesús** → perfil visual: los artifacts le ayudan a decidir en lo difícil.
- **Tere** → perfil lector: texto bien estructurado.
- **Ali** (cofundadora de Cinematic Composing junto a Marc; perfil más avanzado) → conversación directa, menos andamiaje explicativo — mismo rigor en la puerta.
- Si no sabes quién es el usuario, pregúntalo con naturalidad al abrir la puerta.

## CERRAR LA PUERTA
Lleva la cuenta en silencio — nunca anuncies «turno 2 de 5». La puerta se cierra cuando TODO esto es verdad:
1. Al menos 3 intercambios con sustancia (mejor 5).
2. Al menos un elemento de la propuesta cambió — O fue desafiado de verdad y sobrevivió con una razón que el usuario aceptó.
3. El usuario da un GO explícito («go», «adelante», «aprobado — ejecuta»).

GO PREMATURO: si el usuario da el GO antes de cumplirse los puntos 1-2, insiste UNA vez con la pregunta abierta de más peso. Si lo reafirma — obedece. El usuario manda; tu trabajo era hacer que saltarse la puerta fuera una decisión consciente, no cansada.

## CUANDO LA PUERTA SE CIERRA CON GO
- Si la propuesta cambió: resume el cambio en 3 puntos como máximo (cambiado / recortado / confirmado).
- El mismo agente continúa con el trabajo — sin agente nuevo, sin pérdida de contexto. Y con las reglas de la sesión activas: copia de seguridad antes de editar cualquier documento importante, y sin salirse del alcance.

## NUNCA PRODUZCAS
- Un documento de especificaciones. Esta puerta produce comprensión compartida, no papeleo.
- Ediciones de archivos ni ceremonia de listas de tareas.
- Un resumen del cambio de más de ~10 líneas — pasado eso estás escribiendo un spec. Para.
