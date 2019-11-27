# Does not apply zsh settings this session is "interactive"
# ie this is a script
[[ $- != *i* ]] && return

# Path to your oh-my-zsh installation.
export ZSH="/home/jeff/.oh-my-zsh"
export TERM="xterm-256color"

export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="rkj-repos"
#ZSH_THEME="bira"
ZSH_THEME="agnosterzak"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

#Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  history-substring-search
  z
  extract
)

source $ZSH/oh-my-zsh.sh

# Config to fix ZSH when running in windows sub system
# zsh will try to run background things at a lower priority
# which wondows doesn't allow this is a hot workaround
case $(uname -a) in
    *Microsoft* unsetopt BG_NICE ;;
esac


# ssh
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# general bash aliases
alias ls="ls -abp --color=auto"
alias nano="vim"
alias ..="cd .."
alias size="echo du -sh && du -sh"


# Bash Manager Things
alias roosay="python3 /home/jeff/scripts/bash_manager/src/roosay.py"
alias ss="python3 /home/jeff/scripts/bash_manager/src/ssh_manager.py"
alias ssh_manager="python3 /home/jeff/scripts/bash_manager/src/ssh_manager.py"
alias mm="python3 /home/jeff/scripts/bash_manager/src/mount_ssh_drive.py"
alias ssh-mount="python3 /home/jeff/scripts/bash_manager/src/mount_ssh_drive.py"
alias quote="python3 /home/jeff/scripts/bash_manager/src/quote.py"

# Alias for markdown paragraph formatter
alias pp="python3 /home/jeff/scripts/RandomScripts/other/markdownParagraphFormatter.py"

# Alias for moving to common directories
alias blog="cd /home/jeff/Documents/git/NodeJSBlog/blogContent/posts"

# auto ls when you change directories
function cd {
	builtin cd "$@" && ls
}


# Function that removes all files with a specific extension.
function begone 
{
    if [ $# -eq 1 ]
    then
        echo "Removing files with $1 extension RECURSIVELY!"
        find . -name "*.$1" -type f -delete
        ls
    else
        echo "Must pass in extension to begone!"
    fi
}


# displays quote when terminal opens
quote

eval $(thefuck --alias)
