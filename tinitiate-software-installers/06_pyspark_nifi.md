# PySpark S3 DB NoSQL Airflow NiFi

Use this setup when the data engineering module includes Apache NiFi.

## YAML File
[05_pyspark_s3_db_nosql_airflow_nifi.yml](./05_pyspark_s3_db_nosql_airflow_nifi.yml)

## Start Command

```powershell
docker compose -f 05_pyspark_s3_db_nosql_airflow_nifi.yml up -d
```

## Software Included

* 📓 **Jupyter**: http://localhost:8888
* ⚡ **Spark master**: http://localhost:8088
* 🌊 **Airflow**: http://localhost:8081
* 🪣 **MinIO Console**: http://localhost:9001
* 🔄 **NiFi**: https://localhost:8443
* 🐘 **Postgres**: `localhost:5432`
* 📦 **DynamoDB Local**: http://localhost:8000
* 📁 **FTP Server**: `localhost:21`

## NiFi Login

* **User**: `admin`
* **Password**: `adminadminadmin`

## Tutorials Included

* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)
* [NiFi](https://github.com/tinitiateprime/nifi.git)

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
docker compose -f 05_pyspark_s3_db_nosql_airflow_nifi.yml down
```
