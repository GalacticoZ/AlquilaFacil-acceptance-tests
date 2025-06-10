Feature: Consulta de mensajes
    Scenario Outline: Como usuario de la plataforma quiero poder consultar los mensajes enviados por los usuarios a través del servicio de mensajería para gestionar el historial de conversación.
        Dado que el usuario <estado> de la plataforma
        Cuando realiza petición GET a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | endpoint | resultado | codigo |
            | está autenticado o es visitante | "/api/v1/messages/{roomId}" | recibe lista con todos los mensajes de la sala especificada | 200 OK |
            | consulta sala sin mensajes registrados | "/api/v1/messages/{roomId}" | recibe lista vacía | 404 NotFound |