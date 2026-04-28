# Kafka with Python

Use this lightweight setup for Kafka streaming with Python development.

## YAML File
[kafka_python.yml](./kafka_python.yml)

## Start Command

```powershell
docker compose -f kafka_python.yml up -d
```

## Software Included

* 📓 **Jupyter**: http://localhost:8888 (Token: empty)
* 📡 **Kafka**: `localhost:9092`
* 🐧 **Zookeeper**: `localhost:2181`

## Tutorials Included

* [Python](https://github.com/tinitiateprime/python.git)
* [Kafka](https://github.com/tinitiateprime/kafka.git)

## Tutorial Location

Tutorial repositories are downloaded into:

```text
./notebooks/tutorials
```

## Jupyter Token

```
(empty - no token required)
```

## Kafka Connection

* **Bootstrap Servers**: localhost:9092
* **Zookeeper**: localhost:2181

## To Stop the Setup

```powershell
docker compose -f kafka_python.yml down
```