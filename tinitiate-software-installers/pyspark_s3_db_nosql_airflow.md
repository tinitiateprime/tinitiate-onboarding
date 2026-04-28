# PySpark S3 DB NoSQL Airflow

Use this setup for batch data engineering with PySpark, object storage, databases (PostgreSQL & DynamoDB), NoSQL, orchestration, and FTP. All services including databases are included in a single Docker Compose file.

## 📋 Prerequisites

### Install Prerequisites
* Click on the Windows Start button.
* Type "Windows Powershell" in the search bar.
* Look for the Windows Powershell in the search results.
* Right click on it and select run as administrator.
* Copy the following command and run it.
```ps1
iex (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/database-installers/powershell_db.ps1" -UseBasicParsing).Content
```
* Wait until everything gets installed.
* After the completion of the above, restart your system.

### Docker Setup
* Click on the Windows Start button.
* Type "Docker Desktop" in the search bar.
* Look for the Docker Desktop in the search results.
* Right click on it and select run as administrator.
* It starts the docker engine, if prompts anything, select 'Accept', 'Next', 'continue without signing'.
* You can minimize or close this docker window.

---

## YAML File
[pyspark_s3_db_nosql_airflow.yml](./pyspark_s3_db_nosql_airflow.yml)

## Start Command

```powershell
docker network create tinitiate
docker compose -f pyspark_s3_db_nosql_airflow.yml up -d
```

## Software Included

* 📓 **Jupyter**: http://localhost:8888
* ⚡ **Spark master**: http://localhost:8088
* 🌊 **Airflow**: http://localhost:8081
* 🪣 **MinIO API**: http://localhost:9000
* 🪣 **MinIO Console**: http://localhost:9001
* 🐘 **PostgreSQL**: `localhost:5432` (User: tinitiate, Password: Tinitiate!23456, DB: tinitiate)
* 📦 **DynamoDB Local**: http://localhost:8500
* 📁 **FTP Server**: `localhost:21`

### Step 3: Database Folder Setup
## DBeaver Setup (Optional)

* Click on the Windows Start button.
* Type "DBeaver" in the search bar.
* Look for the DBeaver in the search results.
* Right click on it and select run as administrator.
* In the top toolbar, click on 'Database', select 'New Database Connection'
* Select 'PostgreSQL' (User: tinitiate, Password: Tinitiate!23456, Database: tinitiate) or 'DynamoDB', then select 'Test Connection', if prompted click on download.
* After completion, click ok.
* Now databases are ready to use.

## Tutorials Included

* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)

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
docker compose -f pyspark_s3_db_nosql_airflow.yml down
```
```
