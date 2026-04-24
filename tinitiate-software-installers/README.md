![Tinitiate Onboarding Image](tinitiate_onboarding.png)
<p align="center">&copy; TINITIATE.COM</p>

# Tinitiate Software Delivery Setup

* Welcome to TINITIATE, Professional Training & IT Services.
* This folder contains Docker Compose YAML files for student software setup.
* Each YAML file starts the required tools and downloads the matching GitHub tutorial repositories.
* Students can focus on learning the topic instead of searching for installers, databases, notebooks, or tutorial files.

---

## 🚀 Getting Started

* Install Docker Desktop first.
* Open PowerShell or Terminal.
* Go to this folder.
* Start the YAML file for your training program.

```powershell
cd software_delivery_yamls
docker compose -f 03_pyspark_s3_db_nosql_airflow.yml up -d
```

To stop the same setup:

```powershell
docker compose -f 03_pyspark_s3_db_nosql_airflow.yml down
```

Tutorial repositories are downloaded into:

```text
./notebooks/tutorials
```

Jupyter token:

```text
admin123
```

---

## 🧰 Base Software Installation

Use this setup when students need browser-based developer tools.

### 📄 YAML File
[01_software_installer.yml](./01_software_installer.yml)

### ▶️ Start Command

```powershell
docker compose -f 01_software_installer.yml up -d
```

### ✅ Software Included
* 💻 VS Code in browser: http://localhost:8444
* 🗄️ DBeaver CloudBeaver in browser: http://localhost:8978
* 🐍 Python inside the `student-tools` container
* 🔧 Git inside the `student-tools` container

### ⚠️ Important
* Docker Desktop must be installed on the student's computer before running this YAML.
* Docker Desktop cannot be installed from inside Docker.

---

## 🐍 Python Developer Program

Use this setup for Python basics and MySQL practice.

### 📄 YAML File
[02_python_only.yml](./02_python_only.yml)

### ▶️ Start Command

```powershell
docker compose -f 02_python_only.yml up -d
```

### ✅ Software Included
* 📓 Jupyter: http://localhost:8888
* 🐬 MySQL: `localhost:3306`

### 📚 Tutorials Included
* [Python](https://github.com/tinitiateprime/python.git)

---

## 🗄️ Database Developer Program

Use this setup for SQL Server database development.

### 📄 YAML File
[04_db_only.yml](./04_db_only.yml)

### ▶️ Start Command

```powershell
docker compose -f 04_db_only.yml up -d
```

### ✅ Software Included
* 🗄️ SQL Server: `localhost:1433`
* 🧭 DBeaver CloudBeaver in browser: http://localhost:8978

### 🔐 SQL Server Login
* User: `sa`
* Password: `Admin12345!`

### 📚 Tutorials Included
* [SQL Server](https://github.com/tinitiateprime/sqlserver.git)

---

## 🔥 Data Engineer Development Program

Choose one setup based on the course module.

---

## ⚡ PySpark S3 DB NoSQL Airflow

Use this setup for batch data engineering with PySpark, object storage, database, NoSQL, orchestration, and FTP.

### 📄 YAML File
[03_pyspark_s3_db_nosql_airflow.yml](./03_pyspark_s3_db_nosql_airflow.yml)

### ▶️ Start Command

```powershell
docker compose -f 03_pyspark_s3_db_nosql_airflow.yml up -d
```

### ✅ Software Included
* 📓 Jupyter: http://localhost:8888
* ⚡ Spark master: http://localhost:8088
* 🌊 Airflow: http://localhost:8081
* 🪣 MinIO API: http://localhost:9000
* 🪣 MinIO Console: http://localhost:9001
* 🐘 Postgres: `localhost:5432`
* 📦 DynamoDB Local: http://localhost:8000
* 📁 FTP Server: `localhost:21`

### 📚 Tutorials Included
* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)

---

## ⚡ PySpark S3 DB NoSQL Airflow NiFi

Use this setup when the data engineering module includes Apache NiFi.

### 📄 YAML File
[05_pyspark_s3_db_nosql_airflow_nifi.yml](./05_pyspark_s3_db_nosql_airflow_nifi.yml)

### ▶️ Start Command

```powershell
docker compose -f 05_pyspark_s3_db_nosql_airflow_nifi.yml up -d
```

### ✅ Software Included
* 📓 Jupyter: http://localhost:8888
* ⚡ Spark master: http://localhost:8088
* 🌊 Airflow: http://localhost:8081
* 🪣 MinIO Console: http://localhost:9001
* 🔄 NiFi: https://localhost:8443
* 🐘 Postgres: `localhost:5432`
* 📦 DynamoDB Local: http://localhost:8000
* 📁 FTP Server: `localhost:21`

### 🔐 NiFi Login
* User: `admin`
* Password: `adminadminadmin`

### 📚 Tutorials Included
* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)
* [NiFi](https://github.com/tinitiateprime/nifi.git)

---

## ⚡ PySpark S3 DB NoSQL Airflow Kafka

Use this setup when the data engineering module includes Kafka streaming.

### 📄 YAML File
[06_pyspark_s3_db_nosql_airflow_kafka.yml](./06_pyspark_s3_db_nosql_airflow_kafka.yml)

### ▶️ Start Command

```powershell
docker compose -f 06_pyspark_s3_db_nosql_airflow_kafka.yml up -d
```

### ✅ Software Included
* 📓 Jupyter: http://localhost:8888
* ⚡ Spark master: http://localhost:8088
* 🌊 Airflow: http://localhost:8081
* 🪣 MinIO Console: http://localhost:9001
* 🧵 Kafka UI: http://localhost:8080
* 🐘 Postgres: `localhost:5432`
* 📦 DynamoDB Local: http://localhost:8000
* 📁 FTP Server: `localhost:21`

### 📚 Tutorials Included
* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)
* [Kafka](https://github.com/tinitiateprime/kafka.git)

---

## ⚡ PySpark S3 DB NoSQL Airflow NiFi Kafka

Use this setup for the full data engineering environment.

### 📄 YAML File
[07_pyspark_s3_db_nosql_airflow_nifi_kafka.yml](./07_pyspark_s3_db_nosql_airflow_nifi_kafka.yml)

### ▶️ Start Command

```powershell
docker compose -f 07_pyspark_s3_db_nosql_airflow_nifi_kafka.yml up -d
```

### ✅ Software Included
* 📓 Jupyter: http://localhost:8888
* ⚡ Spark master: http://localhost:8088
* 🌊 Airflow: http://localhost:8081
* 🪣 MinIO Console: http://localhost:9001
* 🧵 Kafka UI: http://localhost:8080
* 🔄 NiFi: https://localhost:8443
* 🐘 Postgres: `localhost:5432`
* 📦 DynamoDB Local: http://localhost:8000
* 📁 FTP Server: `localhost:21`

### 🔐 NiFi Login
* User: `admin`
* Password: `adminadminadmin`

### 📚 Tutorials Included
* [Postgres](https://github.com/tinitiateprime/postgresql.git)
* [Dynamo DB](https://github.com/tinitiateprime/aws-dynamo.git)
* [MinIO](https://github.com/tinitiateprime/minio.git)
* [PySpark](https://github.com/tinitiateprime/pyspark.git)
* [Airflow](https://github.com/tinitiateprime/aws-airflow.git)
* [FTP Server](https://github.com/tinitiateprime/ftp-server.git)
* [NiFi](https://github.com/tinitiateprime/nifi.git)
* [Kafka](https://github.com/tinitiateprime/kafka.git)

---

## 🛑 Stop Any Setup

Use the same YAML file name that was used to start the setup.

```powershell
docker compose -f 07_pyspark_s3_db_nosql_airflow_nifi_kafka.yml down
```
