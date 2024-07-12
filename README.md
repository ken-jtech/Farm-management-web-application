# kombe-farm-app
 Kombe Famrs APP

    Instructions to run locally 
1.Edit the below files to replace every occurrence of 10.0.0.54 with the IP address allocated to this stack

- kombe-farm-app/docker-compose.yml
- kombe-farm-app/Api/src/main/resources/application.properties
- kombe-farm-app/front-end/package.json
- kombe-farm-app/front-end/src/Constants.js
- 

2. Do a search and replace all other instances of 10.0.0.54  where the exist
3. Upload the  kombe-farm-app into your home directory in the server
4. And from the Kombe-farm-app folder run the below docker composer command as sudo :  docker-compose up -d
5. Open the application in your browser and login 