#!/bin/bash

alias docker-cleanup-build-cache='docker builder prune'
alias docker-cleanup-containers='docker ps -a -q -f status=exited | xargs docker rm -v'
alias docker-cleanup-images='docker images -f "dangling=true" -q | xargs docker rmi'
alias docker-cleanup-volumes='docker volume ls -qf dangling=true | xargs docker volume rm'
alias docker-system-df='docker system df'
alias docker-system-prune='docker system prune'
