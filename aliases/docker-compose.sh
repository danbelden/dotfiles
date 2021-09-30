#!/bin/bash

alias docker-compose-up-abort-on-container-exit="docker-compose up --abort-on-container-exit"
alias docker-compose-up-rebuild="docker-compose up --build --abort-on-container-exit --remove-orphans --always-recreate-deps --renew-anon-volumes --force-recreate"
