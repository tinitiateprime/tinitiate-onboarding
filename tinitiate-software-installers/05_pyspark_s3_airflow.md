# PySpark S3 DB NoSQL Airflow

Use this setup for batch data engineering with PySpark, object storage, database, NoSQL, orchestration, and FTP.

## YAML File
[03_pyspark_s3_db_nosql_airflow.yml](./03_pyspark_s3_db_nosql_airflow.yml)

## Start Command

```powershell
docker compose -f 03_pyspark_s3_db_nosql_airflow.yml up -d
```

## Software Included

* 📓 **Jupyter**: http://localhost:8888
* ⚡ **Spark master**: http://localhost:8088
* 🌊 **Airflow**: http://localhost:8081
* 🪣 **MinIO API**: http://localhost:9000
* 🪣 **MinIO Console**: http://localhost:9001
* 🐘 **Postgres**: `localhost:5432`
* 📦 **DynamoDB Local**: http://localhost:8000
* 📁 **FTP Server**: `localhost:21`

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
docker compose -f 03_pyspark_s3_db_nosql_airflow.yml down
```
