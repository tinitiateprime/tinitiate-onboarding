# PySpark S3 DB NoSQL Airflow Kafka

Use this setup when the data engineering module includes Kafka streaming.

## YAML File
[pyspark_s3_db_nosql_airflow_kafka.yml](./pyspark_s3_db_nosql_airflow_kafka.yml)

## Start Command

```powershell
docker compose -f pyspark_s3_db_nosql_airflow_kafka.yml up -d
```

## Software Included

* 📓 **Jupyter**: http://localhost:8888
* ⚡ **Spark master**: http://localhost:8088
* 🌊 **Airflow**: http://localhost:8081
* 🪣 **MinIO Console**: http://localhost:9001
* 📡 **Kafka**: `localhost:9092`
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
* [Kafka](https://github.com/tinitiateprime/kafka.git)

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
docker compose -f pyspark_s3_db_nosql_airflow_kafka.yml down
```
