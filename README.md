# README

## GROUP nguyenmanhquan

- Member 1: Quan
- Member 2: Linh
- Member 3: Thu
- Member 4: Nga

## Starting server

- Run on your terminal `docker-compose up`
- Open browser at http://localhost:3000/
- Continue your work on a new terminal tab. Leave this terminal tab open until you want to stop the server.

## Stop server

`CTRL + C`

### Accessing docker container
**Remember to run this before any of the command below**

`docker exec -it ins20065-proj_app_1 /bin/bash`

### Bundle install
Installing required libraries, you can run this command multiple time. If there is an error, let make sure this command has been executed successfully.

`bundle install`

### Migrate database

`rails db:migrate`

## Optional

### Rails console

`rails c`
