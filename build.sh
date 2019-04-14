#!/bin/bash
ENV=DEV

if [ -z "${ENV}" ]; then
    echo "ENV variable not set.  Exiting!"
    exit 1
fi

[ "$ENV" = PROD ] &&
   docker-compose run web bundle install ||
   docker-compose run web bundle install --without production