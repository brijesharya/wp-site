#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"

cd /docker-wordpress
$COMPOSE run --no-deps certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx