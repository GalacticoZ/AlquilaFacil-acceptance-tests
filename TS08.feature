Feature: Gestión y consulta de notificaciones
    Scenario Outline: Como usuario de la plataforma quiero poder consultar y eliminar mis notificaciones mediante la API para mantenerme informado y gestionar los avisos relevantes de forma eficiente.
        Dado que el usuario está autenticado
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | metodo | endpoint | resultado | codigo |
            | GET | "/api/v1/notification/{userId}" | recibe lista de notificaciones del usuario especificado | 200 OK |
            | DELETE | "/api/v1/notification/{notificationId}" | elimina notificación especificada correctamente | 200 OK |