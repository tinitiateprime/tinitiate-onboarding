# Database Only Setup

Use this setup for SQL Server database development and testing.

## YAML File
[db_only.yml](./db_only.yml)

## Start Command

```powershell
docker network create tinitiate
docker compose -f db_only.yml up -d
```

## Software Included

* 🗄️ **SQL Server**: `localhost:1433` (SA Password: Tinitiate!23456)

## Data Persistence

Database data is persisted in:
```text
./mssql/mssql-data
./mssql/backup
```

## Connection Details

* **Server**: localhost,1433
* **Authentication**: SQL Server Authentication
* **Login**: sa
* **Password**: Tinitiate!23456

## To Stop the Setup

```powershell
docker compose -f db_only.yml down
```