Feature: Gestión y consulta de usuarios
    Scenario Outline: Como administrador de la plataforma quiero poder consultar y actualizar la información de los usuarios mediante la API para gestionar eficientemente la información de los usuarios registrados.
        Dado que el usuario está autenticado <rol>
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | rol | metodo | endpoint | resultado | codigo |
            | con rol de administrador | GET | "/api/v1/users/{userId}" | recibe información detallada del usuario | 200 OK |
            |  | PUT | "/api/v1/users/{userId}" | actualiza usuario y recibe información actualizada | 200 OK |
            | con rol de administrador | GET | "/api/v1/users" | recibe información de todos los usuarios | 200 OK |
            |  | GET | "/api/v1/users/get-username/{userId}" | recibe nombre de usuario especificado | 200 OK |
            |  | GET | "/api/v1/users/user-exists/{userId}" | recibe verificación de existencia del usuario | 200 OK |