Feature: Gestión y consulta de reportes de locales y usuarios
    Scenario Outline: Como usuario de la plataforma quiero poder registrar, consultar y eliminar reportes sobre locales o usuarios mediante la API para reportar incidentes o comportamientos inapropiados y contribuir a la seguridad de la comunidad.
        Dado que el usuario está autenticado
        Cuando realiza petición <metodo> a <endpoint>
        Entonces <resultado> y el código de respuesta es <codigo>
        
        Examples:
            | metodo | endpoint | resultado | codigo |
            | POST | "/api/v1/report" | se crea reporte exitosamente y recibe información del reporte | 201 Created |
            | GET | "/api/v1/report/get-by-user-id/{userId}" | recibe lista de reportes realizados por el usuario especificado | 200 OK |
            | GET | "/api/v1/report/get-by-local-id/{localId}" | recibe lista de reportes del local especificado | 200 OK |
            | DELETE | "/api/v1/report/{reportId}" | elimina reporte especificado | 200 OK |