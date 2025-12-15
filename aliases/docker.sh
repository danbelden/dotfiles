#!/bin/bash

alias docker-cleanup-build-cache='docker builder prune'
alias docker-cleanup-containers='docker ps -a -q -f status=exited | xargs docker rm -v'
alias docker-cleanup-images='docker images -f "dangling=true" -q | xargs docker rmi'
alias docker-cleanup-volumes='docker volume ls -qf dangling=true | xargs docker volume rm'
alias docker-prune-containers='docker container prune'
alias docker-prune-images='docker image prune -a'
alias docker-prune-system='docker system prune -a'
alias docker-prune-volumes='docker volume prune -a'
alias docker-purge-containers='docker ps -aq | xargs docker rm -vf'
alias docker-purge-images='docker images -aq | xargs docker rmi'
alias docker-purge-volumes='docker volume ls -q | xargs docker volume rm'
alias docker-system-df='docker system df'
