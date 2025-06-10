Feature: Gestión y consulta de perfiles de usuario
    Scenario Outline: Como usuario de la plataforma quiero poder consultar y actualizar mi perfil mediante la API para mantener mi información personal y de suscripción actualizada.
        Dado que el usuario está autenticado
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | metodo | endpoint | resultado | codigo |
            | POST | "/api/v1/profiles" | se crea perfil asociado a usuario y devuelve nuevo perfil | 201 Created |
            | GET | "/api/v1/profiles/user/{userId}" | recibe información del perfil del usuario especificado | 200 OK |
            | PUT | "/api/v1/profiles/{userId}" | actualiza perfil del usuario y recibe información actualizada | 200 OK |