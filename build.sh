#!/bin/bash
# To be set by CI
ENV=DEV

# Check if environment variable is set
if [ -z "${ENV}" ]; then
    echo "ENV variable not set.  Exiting!"
    exit 1
fi

# Run web bundle install to sync changes in the Gemfile.lock to the host
[ "$ENV" = PROD ] &&
   docker-compose run web bundle install ||
   docker-compose run web bundle install --without production

docker-compose build