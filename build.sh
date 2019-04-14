#!/bin/bash

docker-compose run web bundle install
docker-compose up --build