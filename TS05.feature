Feature: Gestión y consulta de comentarios en locales
    Scenario Outline: Como usuario de la plataforma quiero poder registrar y consultar comentarios sobre los locales mediante la API para compartir opiniones y conocer experiencias de otros usuarios respecto a los locales.
        Dado que el usuario <estado> de la plataforma
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | metodo | endpoint | resultado | codigo |
            | está autenticado o es visitante | GET | "/api/v1/comment/local/{localId}" | recibe lista de comentarios del local especificado | 200 OK |
            | está autenticado | POST | "/api/v1/comment" | se crea comentario exitosamente y recibe información del comentario | 201 Created |