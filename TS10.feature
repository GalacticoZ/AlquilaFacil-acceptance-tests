Feature: Consulta de planes de suscripción
    Scenario Outline: Como usuario de la plataforma quiero poder consultar los planes de suscripción disponibles mediante la API para conocer las opciones y elegir el plan que mejor se adapte a mis necesidades.
        Dado que el usuario <estado> de la plataforma
        Cuando realiza petición GET a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | endpoint | resultado | codigo |
            | está autenticado o es visitante | "/api/v1/plan" | recibe lista con todos los planes de suscripción | 200 OK |
            | consulta cuando no hay planes registrados | "/api/v1/plan" | recibe lista vacía | 404 NotFound |