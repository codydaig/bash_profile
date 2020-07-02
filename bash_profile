# Set default editor
EDITOR=vim

# Configure command line colors
export CLICOLOR=1
#export LSCOLORS=ExfxcxdxbxEgEdabagacad
export LSCOLORS=GxfxcxdxbxGgGdabagacad

export DOTOKEN=<token>

export GOPATH=$HOME/dev
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH/bin

export DB1_HOST=localhost
export DB2_HOST=localhost

#alias ls='ls -lGFh'
alias ls='ls -GFh'

# Set color variables
YELLOW="\[\e[1;33m\]"
RED="\[\e[1;31m\]"
#PURPLE="\[\e[1;34m\]"
PURPLE="\e[1;94m"
GREEN="\e[1;92m"

# load script that allows for showing git branch is PS1
#source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Change command prompt display
NAME="k0cbd"

# Funky Bug when __git_ps1 is used in the docker terminal
#if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
#. `brew --prefix`/etc/bash_completion.d/git-completion.bash
#fi

#if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
#    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
#fi

# export PS1="${YELLOW}\W:${GREEN}\$(__git_ps1)${RED} ${NAME}\$ ${GREEN}"
export PS1="${YELLOW}\W:${GREEN}${RED} ${NAME}\$ ${GREEN}"

# Meta alias's
alias osu="open -a Sublime\ Text\ 2"
alias subl="open -a Sublime\ Text\ 2"
alias prof="subl ~/.bash_profile"
alias reprof=". ~/.bash_profile"

# Navigational alias's
alias pdf="cd ~/Documents/pdfs"
alias de="cd ~/Desktop"
alias ds="cd ~/Documents"
alias c="cd ~/Documents/cp"
alias snip="cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/"
alias repos="cd ~/Documents/git"

# Shortcut commands
alias py="python"
alias osu="open -a Sublime\ Text\ 2"
alias vlc="open -a VLC"
alias nd="node debug"

alias watchcoffee="coffee --output compiled --map --watch --compile ./"

# Github commands
alias gb="git branch"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log"
alias glo="git log --pretty=oneline"
alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
# alias go="git checkout"
alias go="go"
alias gt="git tag"
alias grs="git reset"
alias grv="git revert"
alias gm="git merge"
alias gp="git pull"
alias gpom="git push origin master"
alias gpum="git pull origin master"
alias gpup="git pull upstream master"
alias gd="git diff"
alias gpo="git push origin"
alias gob="git checkout -b"
alias gcs="git add -A && git commit --fixup HEAD && git rebase -i --autosquash HEAD~2"

# Docker
$(boot2docker shellinit 2> /dev/null)
alias bd="boot2docker"
alias bds="boot2docker start"
alias dm="docker-machine"
alias dk="docker"
alias dkr="docker run"
alias dkb="docker build"
alias dki="docker images"

alias dkrunbridge="docker run --name bridge -d -p 80:3000 bridge"
alias dkrunbridgeit="docker run --name bridge -it --rm -p 80:3000 bridge"
alias dkbuildbridge="rm -rf node_modules/ && docker build -t bridge . && npm install"
#alias dmbridge="docker-machine env bridge && eval \"$(docker-machine env bridge)\""

docker-ip() {
  boot2docker ip 2> /dev/null
}

docker-kill-all() {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

# Deletes an Image From the Images List
docker-remove-image() {
  docker rmi "$1"
}

# Vagrant
alias vg="vagrant"

# Helper functions

# combine mkdir and cd
mkcd () {
  mkdir "$1"
  cd "$1"
}

# combine touch and osu
tosu () {
  touch "$1"
  osu "$1"
}

toyp () {
  cd /Users/codydaig/galvanize/hrr44-toy-problems
  git pull upstream master
}

# Run python's simple server
alias serve="python -m SimpleHTTPServer"

alias mongostart="launchctl start org.mongodb.mongod"
alias mongostop="launchctl stop org.mongodb.mongod"

export REPLYTO=cody@codydaig.me  # put your email address here
alias matt="mail matthew@nocosar.org"

#source ~/.profile

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias mkal="source mkal"

alias gitpurge='git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d'

alias mysql="mysql -uroot"

#eval "$(hub alias -s)"
#export PATH="/usr/local/sbin:$PATH"

