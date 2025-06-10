Feature: Gestión y consulta de suscripciones
    Scenario Outline: Como usuario de la plataforma quiero poder crear y consultar suscripciones mediante la API para gestionar mi acceso a los servicios de la plataforma y mantener mis suscripciones actualizadas.
        Dado que el usuario <estado> de la plataforma
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | metodo | endpoint | resultado | codigo |
            | está autenticado o es visitante | POST | "/api/v1/subscriptions" | se crea suscripción exitosamente y recibe información | 201 Created |
            | está autenticado con rol de administrador | GET | "/api/v1/subscriptions" | recibe lista de todas las suscripciones | 200 OK |