#!/bin/bash

docker run -d \
  --name airbuy_container  \
  --rm \
  -p 37780:5432 \
  airbuy_db_image
