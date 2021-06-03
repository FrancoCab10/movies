# Movies
This is a docker-compose based project.
It uses 3 containers:
- db: mysql database
- api: nodejs api -> https://github.com/FrancoCab10/movies-api
- web: reactjs spa -> https://github.com/FrancoCab10/react-movies

### Requirements
- docker
- docker-compose
- git

### How to use
The first run will take a while to set everything up, please be patient.
##### To start the complete app run:
```bash
./init.sh
```
Then you can open http://localhost/ to see the website
or http://localhost:8000/v1/ to check that the api is working

##### Remember to give execution permissions to the file:
```bash
chmod +x init.sh
```

##### To stop the complete app:
Press 'Ctrl+C' wait for it to stop and then run:
```bash
docker-compose down
```