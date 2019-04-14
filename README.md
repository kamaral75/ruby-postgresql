# Ruby on Rails and PostGreSQL

## Introduction
A basic example app for Rails and PostGreSQL built on Docker Compose

## Ruby version
###config/application.rb

## System dependencies

## Configuration

## Database
###database.yml
```
docker-compose run web rake db:create
```

## Unit Test

## Services

## Deployment instructions
[Compose and Rails](https://docs.docker.com/compose/rails/)

## Build and run
```
sh build.sh
sh run.sh
```

## Stop containers
```
docker-compose down
```

## Login to a container
```
docker run -it ruby-postgresql_web bash
```

## Create a new data model
```
rails generate scaffold User name:string email:string
rails db:migrate
```

## Known Issues
[DB::ConnectionBad could not translate host name “db” to address](https://github.com/docker/compose/issues/5919)