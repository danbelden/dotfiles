#!/bin/bash

# Helper vars
# shellcheck disable=SC2164
SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Config path vars
CONFIG_DIRS=(
  "${SCRIPT_DIR}/aliases"
  "${SCRIPT_DIR}/private"
)

# Import all config dir .sh files
for CONFIG_DIR in "${CONFIG_DIRS[@]}"; do
  if [ ! -d "$CONFIG_DIR" ]
  then
      echo "[Error] Directory $CONFIG_DIR DOES NOT exist."
      continue
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
