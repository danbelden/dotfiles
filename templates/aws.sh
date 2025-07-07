#!/bin/bash

AWS_ACCESS_KEY_ID_DEV=$(cat "${HOME}/.aws-access-key-id-dev")
AWS_ACCESS_KEY_ID_PROD=$(cat "${HOME}/.aws-access-key-id-prod")
AWS_SECRET_ACCESS_KEY_DEV=$(cat "${HOME}/.aws-secret-access-key-dev")
AWS_SECRET_ACCESS_KEY_PROD=$(cat "${HOME}/.aws-secret-access-key-prod")
AWS_SESSION_TOKEN_DEV=$(cat "${HOME}/.aws-session-token-dev")
AWS_SESSION_TOKEN_PROD=$(cat "${HOME}/.aws-session-token-prod")

alias aws-env-debug='echo "AWS_ENV: $AWS_ENV" && echo "AWS_ACCESS_KEY_ID:   $AWS_ACCESS_KEY_ID" && echo "AWS_SECRET_ACCESS_KEY:  $AWS_SECRET_ACCESS_KEY" && echo "AWS_SESSION_TOKEN: $AWS_SESSION_TOKEN"'
alias aws-env-clear='export AWS_ENV="" && export AWS_ACCESS_KEY_ID="" && export AWS_ACCESS_KEY_ID="" && export AWS_SESSION_TOKEN=""'
alias aws-env-dev='export AWS_ENV="dev"  && export AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID_DEV}" && export AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY_DEV}" && export AWS_SESSION_TOKEN="${AWS_SESSION_TOKEN_DEV}"'
alias aws-env-prod='export AWS_ENV="prod"  && export AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID_PROD}" && export AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY_PROD}" && export AWS_SESSION_TOKEN="${AWS_SESSION_TOKEN_PROD}"'
