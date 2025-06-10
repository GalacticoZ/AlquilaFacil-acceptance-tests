Feature: Consulta de categorías de locales
    Scenario Outline: Como usuario de la plataforma quiero poder consultar las categorías de locales mediante la API para conocer las diferentes opciones de tipos de locales disponibles para publicar o buscar.
        Dado que el usuario <estado> de la plataforma
        Cuando realiza petición GET a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | estado | endpoint | resultado | codigo |
            | está autenticado o es visitante | "/api/v1/localcategories" | recibe lista con todas las categorías de locales | 200 OK |
            | consulta cuando no hay categorías registradas | "/api/v1/localcategories" | recibe lista vacía | 404 NotFound |