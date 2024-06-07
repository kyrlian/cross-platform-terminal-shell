# My custom zsh profile
# Sourced by  ~/.zshrc

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
    echo "$fg[yellow]  _______ _  _   Zsh on $(uname)"
    echo "$fg[yellow] |_  / __| || | $fg[blue] ${sysversion} $reset_color"
    echo "$fg[yellow]  / /\\__ \\ __ | $fg[magenta] Date: $(date +'%Y-%m-%d %H:%M:%S')$reset_color"
    echo "$fg[yellow] /___|___/_||_| $fg[green] Directory:  $(pwd)$reset_color"
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
alias ll='ls -al'
alias venvc='virtualenv virtualenv'
alias activate='source virtualenv/bin/activate'

##############
## Prompt   ##
##############

# Starship prompt
eval "$(starship init zsh)"

###############
## Feedback  ##
###############
echo "$fg[cyan]$(date +'%H:%M:%S') Zsh custom profile loaded$reset_color"
