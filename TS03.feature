Feature: Gestión y consulta de locales
    Scenario Outline: Como usuario de la plataforma quiero poder registrar y consultar locales mediante la API para publicar nuevos espacios y acceder a información relevante sobre los locales disponibles.
        Dado que el usuario está autenticado
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | metodo | endpoint | resultado | codigo |
            | POST | "/api/v1/locals" | se crea local exitosamente y recibe información del local | 201 Created |
            | GET | "/api/v1/locals" | recibe lista con todos los locales disponibles | 200 OK |
            | GET | "/api/v1/locals/{localId}" | recibe información del local especificado | 200 OK |
            | PUT | "/api/v1/locals/{localId}" | modifica información del local especificado | 200 OK |
            | GET | "/api/v1/locals/search-by-category-id-capacity-range/{categoryId}/{minCapacity}/{maxCapacity}" | recibe locales que cumplen los filtros especificados | 200 OK |
            | GET | "/api/v1/locals/get-all-districts" | recibe información de todos los distritos | 200 OK |
            | GET | "/api/v1/locals/get-user-locals/{userId}" | recibe locales publicados por el dueño especificado | 200 OK |