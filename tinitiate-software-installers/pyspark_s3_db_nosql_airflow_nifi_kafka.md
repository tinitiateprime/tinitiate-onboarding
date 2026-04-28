# PySpark S3 DB NoSQL Airflow NiFi Kafka

Use this setup when the data engineering module includes both Apache NiFi and Kafka streaming.

## YAML File
[pyspark_s3_db_nosql_airflow_nifi_kafka.yml](./pyspark_s3_db_nosql_airflow_nifi_kafka.yml)

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
docker compose -f pyspark_s3_db_nosql_airflow_nifi_kafka.yml down
```
