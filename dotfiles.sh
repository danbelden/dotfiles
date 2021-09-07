#!/bin/bash

# Helper vars
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Config path vars
CONFIG_DIRS=(
  "${SCRIPT_DIR}/aliases"
  "${SCRIPT_DIR}/custom"
)

# Import all config dir .sh files
for CONFIG_DIR in "${CONFIG_DIRS[@]}"; do
  if [ ! -d "$CONFIG_DIR" ]
  then
      echo "Directory $CONFIG_DIR DOES NOT exist."
      exit 1
  fi
  NUM_FILES=$(find "$CONFIG_DIR" -name "*.sh" -prune -print | grep -c /)
  if [ "$NUM_FILES" -eq 0 ]
  then
    continue
  fi
  for CONFIG_FILE in "$CONFIG_DIR"/*.sh; do
    # shellcheck disable=SC1090
    source "$CONFIG_FILE"
  done
done
