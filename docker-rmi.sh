#!/bin/bash

# Remove all images
docker rmi $(docker images -a -q)
