![Tinitiate Windows Oracle Database Image](tinitiate_windows_oracle_database.png)
<p align="center">&copy; TINITIATE.COM</p>

# Oracle Database Installers
### Step 1: Install
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
* It starts the docker engine, if prompts anything, select 'continue as guest'.
* You can minimize or close this docker window.
### Step 3: Database Folder Setup
* Download the database setup file by clicking the following link.

[ti-oracle-db-docker-compose.yml](https://raw.githubusercontent.com/tinitiateprime/tinitiate-onboarding/main/software-installers/windows/database-installers/oracle/ti-oracle-db-docker-compose.yml "download")
* Create a folder with name 'tinitiate_databases' in your C drive and move the downloaded file to this folder.
* Open the above folder and in the folder address bar type 'cmd' and enter.
* Copy and run the following commands one after the another.
```cmd
docker network create tinitiate
```
```cmd
docker-compose -f ti-oracle-db-docker-compose.yml up -d
```
* After successfully running, close the command prompt.
### Step 4: DBeaver Setup
* Click on the Windows Start button.
* Type "DBeaver" in the search bar.
* Look for the DBeaver in the search results.
* Right click on it and select run as administrator.
* In the top toolbar, click on 'Database', select 'New Database Connection'
* Select 'Oracle', from the `ti-oracle-db-docker-compose.yml` file(to open right-click on it, select open with>notepad or edit in notepad) copy and paste username and password, then select 'Test Connection', if prompted click on download.
* After completion, click ok.
* Now database is ready to use.