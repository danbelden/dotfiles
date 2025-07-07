#!/bin/bash

VAULT_TOKEN_DEV=$(cat "${HOME}/.vault-token-dev")
VAULT_TOKEN_PROD=$(cat "${HOME}/.vault-token-prod")

export VAULT_ADDR_DEV="https://vault.host.dev"
export VAULT_ADDR_PROD="https://vault.host.prod"
export VAULT_SKIP_VERIFY=true

alias vault-env-debug='echo "VAULT_ENV:   $VAULT_ENV" && echo "VAULT_ADDR:  $VAULT_ADDR" && echo "VAULT_TOKEN: $VAULT_TOKEN"'
alias vault-env-clear='export VAULT_ENV="" && export VAULT_TOKEN="" && export VAULT_ADDR=""'
alias vault-env-dev='export VAULT_ENV="dev"  && export VAULT_TOKEN="${VAULT_TOKEN_DEV}" && export VAULT_ADDR="${VAULT_ADDR_DEV}"'
alias vault-env-prod='export VAULT_ENV="prod" && export VAULT_TOKEN="${VAULT_TOKEN_PROD}" && export VAULT_ADDR="${VAULT_ADDR_PROD}"'
alias vault-read-app='vault read "path/to/app/secrets"'
alias vault-token-lookup='vault token lookup'
alias vault-token-renew='vault token renew'
