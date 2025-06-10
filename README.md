# Test Features - API de Gestión de Locales

Este repositorio contiene los archivos de features escritos en formato Gherkin para el testing de la API de gestión de locales. Los archivos definen los escenarios de prueba para todas las funcionalidades principales del sistema.

## Estructura del Proyecto

Los archivos de features están organizados por módulos funcionales, siguiendo la numeración de Test Suites (TS) de la documentación técnica:

### Autenticación y Usuarios
- `TS01_authentication.feature` - Autenticación y registro de usuarios
- `TS02_user_management.feature` - Gestión y consulta de usuarios
- `TS09_profiles.feature` - Gestión y consulta de perfiles de usuario

### Gestión de Locales
- `TS03_local_management.feature` - Gestión y consulta de locales
- `TS04_local_categories.feature` - Consulta de categorías de locales
- `TS05_comments.feature` - Gestión y consulta de comentarios en locales

### Sistema de Reportes y Reservas
- `TS06_reports.feature` - Gestión y consulta de reportes de locales y usuarios
- `TS07_reservations.feature` - Gestión y consulta de reservas

### Notificaciones y Comunicación
- `TS08_notifications.feature` - Gestión y consulta de notificaciones
- `TS12_messages.feature` - Consulta de mensajes
- `TS13_messaging.feature` - Gestión de mensajería

### Suscripciones
- `TS10_subscription_plans.feature` - Consulta de planes de suscripción
- `TS11_subscriptions.feature` - Gestión y consulta de suscripciones

## Formato de los Features

Cada archivo de feature sigue la estructura estándar de Gherkin:

```gherkin
Feature: [Nombre de la funcionalidad]
    Scenario Outline: [Historia de usuario]
        Dado que [precondición]
        Cuando [acción]
        Entonces [resultado esperado]
        
        Examples:
            | parámetro1 | parámetro2 | resultado |
            | valor1     | valor2     | esperado1 |
```

## Cobertura de Funcionalidades

Los features cubren las siguientes operaciones principales:

### Métodos HTTP
- GET: Consulta de recursos
- POST: Creación de nuevos recursos
- PUT: Actualización de recursos existentes
- DELETE: Eliminación de recursos

### Códigos de Respuesta
- 200 OK: Operación exitosa
- 201 Created: Recurso creado exitosamente
- 404 NotFound: Recurso no encontrado

### Roles de Usuario
- Usuario autenticado
- Administrador
- Visitante de la plataforma

## Endpoints Principales

La API incluye los siguientes endpoints base:

- `/api/v1/authentication/` - Autenticación
- `/api/v1/users/` - Gestión de usuarios
- `/api/v1/locals/` - Gestión de locales
- `/api/v1/localcategories/` - Categorías de locales
- `/api/v1/comment/` - Comentarios
- `/api/v1/report/` - Reportes
- `/api/v1/reservation/` - Reservas
- `/api/v1/notification/` - Notificaciones
- `/api/v1/profiles/` - Perfiles de usuario
- `/api/v1/plan/` - Planes de suscripción
- `/api/v1/subscriptions/` - Suscripciones
- `/api/v1/messages/` - Mensajes

## Uso de los Features

Estos archivos están diseñados para ser utilizados con frameworks de testing que soporten Gherkin, como:

- Cucumber
- SpecFlow
- Behave
- Behat

Los features pueden ser ejecutados como parte de una suite de pruebas automatizadas para validar el comportamiento de la API según las especificaciones definidas.

## Consideraciones Técnicas

- Todos los endpoints requieren autenticación excepto donde se especifique lo contrario
- Los parámetros de ruta como `{userId}`, `{localId}`, etc., deben ser reemplazados por valores reales durante la ejecución
- Las respuestas de la API están en formato JSON
- Algunos endpoints tienen restricciones de rol (administrador vs usuario regular)

## Mantenimiento

Los features deben actualizarse cuando:
- Se modifiquen los endpoints de la API
- Se agreguen nuevas funcionalidades
- Cambien los códigos de respuesta esperados
- Se modifiquen los requisitos de autenticación o autorización