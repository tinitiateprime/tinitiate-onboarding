# Database Developer Program

Use this setup for SQL Server database development.

## YAML File
[04_db_only.yml](./04_db_only.yml)

## Start Command

```powershell
docker compose -f 04_db_only.yml up -d
```

## Software Included

* 🗄️ **SQL Server**: `localhost:1433`
* 🧭 **DBeaver CloudBeaver in browser**: http://localhost:8978

## SQL Server Login

* **User**: `sa`
* **Password**: `Admin12345!`

## Tutorials Included

* [SQL Server](https://github.com/tinitiateprime/sqlserver.git)

## Tutorial Location

Tutorial repositories are downloaded into:

```text
./notebooks/tutorials
```

## Jupyter Token

```
admin123
```

## To Stop the Setup

```powershell
docker compose -f 04_db_only.yml down
```
