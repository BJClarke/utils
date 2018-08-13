if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias ll='ls -l'
alias ddu='sh ~/Dropbox/Development/Themes\ WordPress/dobsondev-underscores/ddunderscores-osx.sh'
alias cl='clear'
alias check='git checkout'
alias pull='git pull origin localtools'
alias com='git commit -m'
alias push='git push origin'
alias pushf='git push -f origin'
alias rebase='git rebase -i HEAD~2 && stat'
alias add='sh ~/gitaddfiles.sh'
alias stat='git status'
alias switchkeys='sh ~/switchkeys.sh'
alias kube='kubectl'

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  export PS1="\n$WHITE\u $REDBOLD@ $GREEN\w \D{%T} $RESETCOLOR$GREENBOLD\$(parse_git_branch)\n$BLUEBOLD → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt
source /usr/local/ibmcloud/bx/bash_autocomplete
PATH=$PATH:$HOME/bin

export PATH

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
