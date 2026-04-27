# Base Software Installation

Use this setup when students need browser-based developer tools.

## YAML File
[01_software_installer.yml](./01_software_installer.yml)

## Start Command

```powershell
docker compose -f 01_software_installer.yml up -d
```

## Software Included

* 💻 **VS Code in browser**: http://localhost:8444
* 🗄️ **DBeaver CloudBeaver in browser**: http://localhost:8978
* 🐍 **Python** inside the `student-tools` container
* 🔧 **Git** inside the `student-tools` container

## Important Notes

* Docker Desktop must be installed on the student's computer before running this YAML.
* Docker Desktop cannot be installed from inside Docker.

## To Stop the Setup

```powershell
docker compose -f 01_software_installer.yml down
```
