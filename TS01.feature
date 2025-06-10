Feature: Autenticación y registro de usuarios
    Scenario Outline: Como usuario de la plataforma quiero poder iniciar sesión y registrarme mediante la API de autenticación para acceder a las funcionalidades de la aplicación de manera segura.
        Dado que el usuario <estado> en la plataforma
        Cuando <accion> con <credenciales>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | accion | credenciales | resultado | codigo |
            | está registrado | realiza petición POST a "/api/v1/authentication/sign-in" | credenciales válidas | recibe token JWT e información del usuario | 200 OK |
            | no tiene cuenta | realiza petición POST a "/api/v1/authentication/sign-up" | datos de registro válidos | se crea cuenta y recibe confirmación | 200 OK |