Feature: Gestión de mensajería
    Scenario Outline: Como usuario de la plataforma quiero poder enviar mensajes a través de salas para poder mantener comunicación en tiempo real con otros usuarios.
        Dado que el usuario <estado> de la plataforma
        Cuando <accion>
        Entonces <resultado>
        
        Examples:
            | estado | accion | resultado |
            | está autenticado o es visitante | emite evento JoinRoom a una sala no creada | la sala es creada con los IDs de los usuarios y se une a ella |
            | se encuentra unido a una sala de chat | emite el evento SendMessage | el mensaje es guardado en la base de datos y devuelto al usuario externo |