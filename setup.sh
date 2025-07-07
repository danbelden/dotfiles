#!/bin/bash

# Config vars
BREW_FORMULA_LIST=(
  "clang-format" "cmake" "coreutils" "curl" "docker"
  "docker-compose" "git" "gnupg" "helm" "jq" "kind"
  "kubectx" "kubeseal" "node" "redis" "stern" "wget"
  "yq"
)
PROJECT_ROOT_PATH=$(dirname "$(realpath "$0")")
DOTFILES_FILE_PATH="${PROJECT_ROOT_PATH}/dotfiles.sh"
ZPROFILE_PATH="$HOME/.zprofile"

# Pretty ASCII Art for install phase
echo "|==================================|"
echo "|              SETUP               |"
echo "|==================================|"

# Ensure oh my zsh is installed if not installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "> ohmyzsh (installing...)"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "> ohmyzsh (skip - installed)"
fi

# Create zsh profile file if it does not exist
if [ ! -f "${ZPROFILE_PATH}" ]; then
  echo "> ohmyzsh zprofile (creating ${ZPROFILE_PATH} ...)"
  echo "Creating file ${ZPROFILE_PATH} ..."
  touch "${ZPROFILE_PATH}"
else
  echo "> ohmyzsh zprofile (skip - exists) [${ZPROFILE_PATH}]"
fi

# Append dotfiles import config to zprofile file if it doesn't contain it
ZPROFILE_CONTAINS_DOTFILE_IMPORT=$(grep "Load my custom dotfiles" "${ZPROFILE_PATH}")
if [ -z "${ZPROFILE_CONTAINS_DOTFILE_IMPORT}" ]; then
  echo ">> ohmyzsh zprofile dotfile import (appending import ...)"
  echo "Appending import config to ${ZPROFILE_PATH}"
  printf "# Load my custom dotfiles\nsource %s\n" "${DOTFILES_FILE_PATH}" >> "${ZPROFILE_PATH}"
else
  echo ">> ohmyzsh zprofile dot file (skip - import exists)"
fi

# Install homebrew if not installed
PATH_TO_BREW=$(which brew)
if [ -z "${PATH_TO_BREW}" ]; then
  echo "> homebrew (installing ...)"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "> homebrew (skip - installed)"
fi

# Install common tools I use
echo "> homebrew formula install"
for BREW_TOOL in "${BREW_FORMULA_LIST[@]}"; do
  BREW_TOOL_INSTALLED=$(brew list "${BREW_TOOL}" --formula)
  if [ -z "${BREW_TOOL_INSTALLED}" ]; then
    echo ">> brew install ${BREW_TOOL} --formula"
    brew install "${BREW_TOOL}" --formula
  else
    echo ">> brew install ${BREW_TOOL} (skip - installed)"
  fi
done
