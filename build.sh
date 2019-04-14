#!/bin/bash

docker-compose run web bundle install
docker-compose up --build

if [ "$TERM" != 'dumb' ] ; then
    TTY='-it'
fi