## Setup

A list of tools and scripts I commonly make use of but don't want to automate the installation of.

### Homebrew Setup

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### ZSH

```
brew install zsh
```

#### .zhrc

```
vi ~/.zshrc
```

> ZSH_THEME="robbyrussell"


#### .zprofile

```
vi ~/.zprofile
```

> ssh-add --apple-use-keychain ~/.ssh/git
> eval "$(/opt/homebrew/bin/brew shellenv)"

### Docker / Colima

#### Install

```
brew install colima
brew install docker
```

#### Configure

```
vi ~/.zprofile
```

> export DOCKER_HOST=unix:///Users/d.belden/.colima/default/docker.sock

### Misc Tools

```
brew install awscli
brew install ca-certificates
brew install curl
brew install git
brew install golangci-lint
brew install helm
brew install htop
brew install jq
brew install kind
brew install kubectx
brew install kubernetes-cli
brew install kubeseal
brew install node
brew install --cask rectangle
brew install redis
brew install stern
brew install telnet
brew install vault
brew install wget
brew install yq
brew install zsh
```

### Go

#### Install

```
brew install go
```

#### Configure

```
mkdir ~/Development/gopath
vi ~/.zprofile
```

> export GOPATH=/Users/d.belden/Development/gopath
> export GOBIN=$GOPATH/bin
> export GOPRIVATE={DEFINE_THESE_WITH_WHAT_YOU_NEED}
> export PATH=$PATH:$GOBIN

### Go Tools

```
go install github.com/matryer/moq@v0.7.1
go install golang.org/x/tools/cmd/goimports@v0.50.0
go install golang.org/x/tools/gopls@v0.23.0
go install golang.org/x/vuln/cmd/govulncheck@v1.1.4
go install gotest.tools/gotestsum@v1.13.0
go install honnef.co/go/tools/cmd/staticcheck@2026.2.1
```

## Dotfiles

```
cd ~/Development
git clone git@github.com:danbelden/dotfiles.git
```

```
vi ~/.zprofile
```

> source /Users/d.belden/Development/dotfiles/dotfiles.sh
