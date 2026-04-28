# Kafka Streaming with Python

Use this setup for learning Kafka streaming with Python.

## 📋 Prerequisites

Before starting, make sure Python is installed on your system.

### Install Python

If you don't have Python installed, follow the [Python & Base Software Installer](./base_software_python.md) guide first. 

Or run this command in PowerShell (as Administrator):

```powershell
iex (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/python-installers/python_installers.ps1" -UseBasicParsing).Content
```

Verify Python is installed:
```powershell
python --version
```

---

## YAML File
[kafka_python.yml](./kafka_python.yml)

## Start Command

```powershell
docker compose -f kafka_python.yml up -d
```

## Software Included

* 📡 **Kafka**: `localhost:9092`
* 📓 **Jupyter**: http://localhost:8888

## Course Material Included

* [Python](https://github.com/tinitiateprime/python.git)
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
docker compose -f kafka_python.yml down
```
