# StoreAPI

> Онлайн магазин интерфейс серверной части

### Проект работает на:

1. netcoreapp3.1
2. Dapper
3. SQL Server (MS SQL)

### Включает в себя:

- Controllers - точки входа
	- Entity - сущности точек входа (различаются по правам)
	- AccountController - точка авторизации
- Data
	- ApplicationContext - контекст приложения
- DTO - сущности общения между серверной и клиентской части
- Models - сущности таблиц в БД
- Security - инструмент безопасности
- Service - сервисы
	- MainUsersServices - сервис для работы с таблицей
- appsettings - конфигурация приложения

> [!WARNING]
> В проекте подключен EF (Entity Framework), он избыточен
