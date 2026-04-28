# PySpark S3 DB NoSQL Airflow NiFi

Use this setup when the data engineering module includes Apache NiFi.

## 📋 Prerequisites

Before starting, install the required databases on your Windows system:

### Install PostgreSQL
Follow the [PostgreSQL Windows Installer](https://github.com/tinitiateprime/tinitiate-onboarding/tree/main/software-installers/windows/database-installers/postgresql) guide.

**Database YAML File**: [ti-postgresql-db-docker-compose.yml](https://github.com/tinitiateprime/tinitiate-onboarding/blob/main/software-installers/windows/database-installers/postgresql/ti-postgresql-db-docker-compose.yml)

### Install DynamoDB
Follow the [DynamoDB Windows Installer](https://github.com/tinitiateprime/tinitiate-onboarding/blob/main/software-installers/windows/database-installers/dynamodb/README.md) guide.

**Database YAML File**: [ti-dynamo-db-docker-compose.yml](https://github.com/tinitiateprime/tinitiate-onboarding/blob/main/software-installers/windows/database-installers/dynamodb/ti-dynamo-db-docker-compose.yml)

---

## YAML File
[pyspark_s3_db_nosql_airflow_nifi.yml](./pyspark_s3_db_nosql_airflow_nifi.yml)

## Start Command

```powershell
docker compose -f pyspark_s3_db_nosql_airflow_nifi.yml up -d
```

## Database Setup Instructions

### Step 1: Install Prerequisites
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

### Step 2: Docker Setup
* Click on the Windows Start button.
* Type "Docker Desktop" in the search bar.
* Look for the Docker Desktop in the search results.
* Right click on it and select run as administrator.
* It starts the docker engine, if prompts anything, select 'Accept', 'Next', 'continue without signing'.
* You can minimize or close this docker window.

### Step 3: Database Folder Setup
* Download the database setup files from the links above.
* Create a folder with name 'tinitiate_databases' in your C drive and move the downloaded files to this folder.
* Open the above folder and in the folder address bar type 'cmd' and enter.
* Copy and run the following commands one after the another.
```cmd
docker network create tinitiate
```
```cmd
docker-compose -f ti-postgresql-db-docker-compose.yml up -d
docker-compose -f ti-dynamo-db-docker-compose.yml up -d
```
* After successfully running, close the command prompt.

### Step 4: DBeaver Setup
* Click on the Windows Start button.
* Type "DBeaver" in the search bar.
* Look for the DBeaver in the search results.
* Right click on it and select run as administrator.
* In the top toolbar, click on 'Database', select 'New Database Connection'
* Select 'PostgreSQL' or 'DynamoDB', from the respective YAML files copy and paste username and password, then select 'Test Connection', if prompted click on download.
* After completion, click ok.
* Now databases are ready to use.

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
docker compose -f pyspark_s3_db_nosql_airflow_nifi.yml down
```
