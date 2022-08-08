# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source $HOME/.git-completion.bash

alias g="git"
alias dot="git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias gk="gitk --all &"
__git_complete g __git_main
__git_complete dot __git_main

PS1='[\u@\h \W]\$ '
PATH=$PATH:$HOME/.local/bin

export CLICOLOR=1
export EDITOR=vim
