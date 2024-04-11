![Tinitiate Mac DynamoDB Image](tinitiate_mac_dynamodb_database.png)
<p align="center">&copy; TINITIATE.COM</p>

# DynamoDB Database Installers
### Step 1: Install
* Open spotlight search field using keyboard shortcut `command+space`
* Search for terminal and press enter.
* Run the following commands one after the other.
```sh
curl -o tinitiate_common_softs_for_db_installers.sh https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/mac/database-installers/common_softs_for_db.sh
```
```sh
chmod +x tinitiate_common_softs_for_db_installers.sh
```
```sh
./tinitiate_common_softs_for_db_installers.sh
```
* If asked, provide your system password.
* Wait until everything gets installed.
* After the completion of the above, restart your system.
### Step 2: Docker Setup
* Open spotlight search field using keyboard shortcut `command+space`
* Search for 'Docker' and press enter.
* Run the following commands one after the other.
* It starts the docker engine, if prompts anything, select 'Accept', 'Next', 'continue without signing'.
* You can minimize or close this docker window.
### Step 3: Database Folder Setup
* Download the database setup file by clicking the following link.

[ti-dynamo-db-docker-compose.yml](https://github.com/tinitiateprime/tinitiate-onboarding/blob/main/software-installers/windows/database-installers/dynamodb/ti-dynamo-db-docker-compose.yml)
* Click on the top-right download button to download.
* Move the downloaded file to the 'Users' folder(Your systems root folder).
* Open the terminal again, copy and run the following commands one after the other.
```sh
docker network create tinitiate
```
```sh
docker-compose -f ti-dynamo-db-docker-compose.yml up -d
```
* After successfully running, close the terminal.
### Step 4: DBeaver Setup
* Open spotlight search field using keyboard shortcut `command+space`
* Search for 'DBeaver' and press enter.
* In the top toolbar, click on 'Database', select 'New Database Connection'
* Select 'DynamoDB', from the `ti-dynamo-db-docker-compose.yml` file(to open double-click on it) copy and paste username and password, then select 'Test Connection', if prompted click on download.
* After completion, click ok.
* Now database is ready to use.