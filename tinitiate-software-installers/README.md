![Tinitiate Onboarding Image](tinitiate_onboarding.png)
<p align="center">&copy; TINITIATE.COM</p>

# Tinitiate Software Delivery Setup

* Welcome to TINITIATE, Professional Training & IT Services.
* This folder contains Docker Compose YAML files and Markdown guides for student software setup.
* Each guide links to the matching YAML file and explains what will be installed.
* Students can choose the setup they need without searching for installers, databases, notebooks, or tutorial files.

---

## 🚀 Getting Started

* Install Docker Desktop first.
* Open PowerShell or Terminal.
* Go to this folder.
* Open the topic guide you want and follow the instructions.

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

Click any topic below to open its guide.

- 🐍 [Python & Base Software Installer](./base_software_python.md)
  - Install Python and essential Windows tools: Chocolatey, Python, Notepad++, Git, VS Code, DBeaver Community, MS Teams, and Zoom.

- 🗄️ [Database Developer Program](./database_developer.md)
  - SQL Server development with DBeaver CloudBeaver.

- 🗄️ [Database Only Setup](./db_only.md)
  - SQL Server database for development and testing.

- ⚡ [PySpark S3 DB NoSQL Airflow](./pyspark_s3_db_nosql_airflow.md)
  - Batch data engineering with PySpark, Airflow, MinIO, PostgreSQL, DynamoDB, and FTP.

- 🔄 [PySpark S3 DB NoSQL Airflow NiFi](./pyspark_s3_db_nosql_airflow_nifi.md)
  - Data routing and transformation using NiFi plus PySpark and Airflow.

- 📡 [Kafka Streaming with Python](./pyspark_s3_db_nosql_airflow_kafka.md)
  - Learn Kafka streaming with Python using Jupyter notebooks.

- 📡 [Kafka with Python](./kafka_python.md)
  - Lightweight Kafka setup with Python development environment.

- 🌊 [PySpark S3 DB NoSQL Airflow NiFi Kafka](./pyspark_s3_db_nosql_airflow_nifi_kafka.md)
  - Full enterprise data engineering setup with NiFi and Kafka.

---

## 📖 Available Tutorial Courses

- 🐍 [Python](https://github.com/tinitiateprime/python.git)
  - Core Python programming tutorials and exercises.

---

## ⚠️ Important Notes

* Docker Desktop must be installed on the student's computer before running any YAML file.
* Docker Desktop cannot be installed from inside Docker.
* Choose the setup that matches your training module requirements.

