#!/bin/bash

NOMAD_TOKEN_PROD=$(cat "${HOME}/.nomad-token-prod")
NOMAD_TOKEN_DEV=$(cat "${HOME}/.nomad-token-dev")

export NOMAD_ADDR_PROD="http://nomad.host.prod:1111"
export NOMAD_ADDR_DEV="http://nomad.host.dev:1111"

alias nomad-alloc-status='nomad alloc status'
alias nomad-env-debug='echo "NOMAD_ENV:   $NOMAD_ENV" && echo "NOMAD_ADDR:  $NOMAD_ADDR" && echo "NOMAD_TOKEN: $NOMAD_TOKEN"'
alias nomad-env-clear='export NOMAD_ENV="" && export NOMAD_TOKEN="" && export NOMAD_ADDR=""'
alias nomad-env-prod='export NOMAD_ENV="prod" && export NOMAD_TOKEN="${NOMAD_TOKEN_PROD}" && export NOMAD_ADDR="${NOMAD_ADDR_PROD}"'
alias nomad-env-dev='export NOMAD_ENV="dev" && export NOMAD_TOKEN="${NOMAD_TOKEN_DEV}" && export NOMAD_ADDR="${NOMAD_ADDR_DEV}"'
alias nomad-job-allocs='nomad job allocs'
alias nomad-job-status='nomad job status'
alias nomad-job-status-apps='nomad job status | grep "app"'
alias nomad-job-status-app='nomad job status app-name'
alias nomad-node-status='nomad node status'
alias nomad-server-members='nomad server members'
