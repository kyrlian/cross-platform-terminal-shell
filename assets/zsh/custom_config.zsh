# My custom zsh profile
# Sourced by  ~/.zshrc

setopt interactivecomments

# Color support : $fg[red]
# https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
autoload -U colors && colors

#############
## Banner  ##
#############

banner() { 
    sysversion='Unknown'
    case $(uname) in
    Darwin)
    sysversion=$(system_profiler SPSoftwareDataType | grep 'System Version' | xargs)
    ;;
    Linux)
    sysversion=$(hostnamectl | grep Operating | xargs)
    ;;
    esac
    echo "$fg[yellow]  _______ _  _   $(zsh --version | cut -d\( -f1)on $(uname)"
    echo "$fg[yellow] |_  / __| || | $fg[blue] ${sysversion} $reset_color"
    echo "$fg[yellow]  / /\\__ \\ __ | $fg[magenta] Date: $(date +'%Y-%m-%d %H:%M:%S')$reset_color"
    echo "$fg[yellow] /___|___/_||_| $fg[green] Directory: $(pwd)$reset_color"
    echo "$fg[yellow]                $fg[red] User: $(whoami)$reset_color"
    # echo "$fg[black]█$fg[red]█$fg[green]█$fg[yellow]█$fg[blue]█$fg[magenta]█$fg[cyan]█$fg[white]█${reset_color}█"
}
banner

##############
## Path     ##
##############
path+=/opt/homebrew/bin
path+=/usr/local/bin
path+=$HOME/.local/bin
path+=$HOME/scripts

##############
## Aliases  ##
##############
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alhG'
alias helix='hx'

alias venvc='virtualenv virtualenv'
# alias activate='source virtualenv/bin/activate'
alias activate='if [ -d virtualenv ]; then; source virtualenv/bin/activate; elif [ -d .venv ]; then; source .venv/bin/activate; else; echo No venv found; fi'

##############
## Prompt   ##
##############

# Starship prompt
eval "$(starship init zsh)"

###########################
## Various integrations ##
##########################

# Set up fzf key bindings and fuzzy completion
if type fzf > /dev/null
then
    source <(fzf --zsh)
fi

# aider
export AIDER_MODEL=ollama/llama3.1
export OLLAMA_API_BASE=http://127.0.0.1:11434

# Homebrew
# mac
if [ -d /opt/homebrew/ ]
then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# wsl
if [ -d /home/linuxbrew/ ]
then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

###############
## Feedback  ##
###############
echo "$fg[cyan]$(date +'%H:%M:%S') Zsh custom profile loaded$reset_color"
