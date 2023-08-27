# README

## Starting server

- Run on your terminal `docker-compose up`
- Open browser at http://127.0.0.1:3000/
- Continue your work on a new terminal tab. Leave this terminal tab open until you want to stop the server.

## Stop server

`CTRL + C`

### Accessing docker container
Remember to run this before any of the command below

`docker exec -it ins20065-proj_app_1 /bin/sh`

### Bundle install
Installing required libraries, you can run this command multiple time. If there is an error, let make sure this command has been executed successfully.

`bundle install` or `docker exec -it ins20065-proj_app_1 bundle install`

## Optional

### Rails console

`rails c`
or
`docker exec -it ins20065-proj_app_1 rails c`
