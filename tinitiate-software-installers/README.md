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

**Tutorial repositories are downloaded into:**
```text
./notebooks/tutorials
```

**Jupyter token:**
```text
admin123
```

To stop any setup:
```powershell
docker compose -f <yaml_filename> down
```

---

## 📚 Available Setups

Click on any topic below to view detailed installation and configuration instructions.

### 1. 🐍 [Python Installers](./base_software_python.md)
Install Python and essential Windows development tools directly on your system using PowerShell. Installs Chocolatey, Python, Notepad++, Git, VS Code, DBeaver Community, MS Teams, and Zoom.

### 2. 💻 [Base Software Installation](./base_software.md)
Browser-based developer tools setup. Includes VS Code and DBeaver CloudBeaver running in containers with Python and Git support.

### 3. 🐍 [Python Developer Program](./python_developer.md)
Complete Python development environment with Jupyter notebooks and MySQL database for learning Python basics and database interactions.

### 4. 🗄️ [Database Developer Program](./database_developer.md)
SQL Server database development setup with DBeaver CloudBeaver for database management and SQL query development.

### 5. ⚡ [PySpark S3 DB NoSQL Airflow](./pyspark_s3_airflow.md)
Complete data engineering stack with PySpark, Apache Airflow, MinIO (S3), PostgreSQL, DynamoDB, and FTP server for batch data processing workflows.

### 6. 🔄 [PySpark S3 DB NoSQL Airflow NiFi](./pyspark_nifi.md)
Extended data engineering setup including Apache NiFi for data routing and transformation alongside PySpark and Airflow.

### 7. 📡 [PySpark S3 DB NoSQL Airflow Kafka](./pyspark_kafka.md)
Real-time and batch data engineering setup combining PySpark, Airflow, and Apache Kafka for streaming data pipelines.

### 8. 🌊 [PySpark S3 DB NoSQL Airflow NiFi Kafka](./pyspark_nifi_kafka.md)
Complete enterprise data platform with PySpark, Airflow, NiFi, and Kafka for both real-time streaming and batch processing workflows.

---

## ⚠️ Important Notes

* Docker Desktop must be installed on the student's computer before running any YAML file.
* Docker Desktop cannot be installed from inside Docker.
* Choose the setup that matches your training module requirements.


### ▶️ Start Command

```powershell
docker compose -f pyspark_s3_db_nosql_airflow_kafka.yml up -d
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
[pyspark_s3_db_nosql_airflow_nifi_kafka.yml](./pyspark_s3_db_nosql_airflow_nifi_kafka.yml)

### ▶️ Start Command

```powershell
docker compose -f pyspark_s3_db_nosql_airflow_nifi_kafka.yml up -d
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
docker compose -f pyspark_s3_db_nosql_airflow_nifi_kafka.yml down
```
