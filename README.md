# Ruby on Rails and PostGreSQL

## Introduction
A basic example app for Rails and PostGreSQL built on Docker Compose

## Tutorials
[Compose and Rails](https://docs.docker.com/compose/rails/)
[railstutorial.org](https://www.railstutorial.org/book)

## Ruby version
### config/application.rb

## Background
### How this app was generated
#### Create a Gemfile
```
source 'https://rubygems.org'
gem 'rails', '~>5'
```

#### Create an empty Gemfile.lock
```
touch Gemfile.lock
```

#### Create a Dockerfile for the web image
#### Create entrypoint.sh
#### Create a docker-compose.yml file

#### Build new Rails project
#### Compose builds the image for the web service using the Dockerfile then it runs rails new inside a new container, using that image
```
docker-compose run web rails new . --force --no-deps --database=postgresql
docker-compose build
```

#### Edit config/database.yml and set credentials using environment variables
```
username: <%= ENV['POSTGRES_USER'] %>
password: <%= ENV['POSTGRES_PASSWORD'] %>
```

#### Create example.env file to set environment variables
#### Set env_file in all containers in docker-compose.yml
```
env_file: example.env
```

#### Run the application
```
docker-compose up
```

#### Create a database
```
docker-compose run web rake db:create
```

## Configuration
### Config files that are excluded from git and docker repository
#### Config files must be stored securely and copied into the project at runtime

#### Key
/config/master.key

#### Database config
database.yml

#### Environment variables config
example.env

## Build and run
```
sh build.sh
sh run.sh
```

## Stop containers
```
docker-compose down
```

## Login to an existing container
```
docker exec -it ruby-postgresql_web bash
```

## Create a new data model
```
rails generate scaffold User name:string email:string
rails db:migrate
```

## Known Issues
[5919](https://github.com/docker/compose/issues/5919) DB::ConnectionBad could not translate host name “db” to address