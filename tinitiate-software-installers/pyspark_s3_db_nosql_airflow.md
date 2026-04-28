# PySpark S3 DB NoSQL Airflow

Use this setup for batch data engineering with PySpark, object storage, databases (PostgreSQL & DynamoDB), NoSQL, orchestration, and FTP. All services including databases are included in a single Docker Compose file.

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
