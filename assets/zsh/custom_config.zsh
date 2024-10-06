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
if type starship > /dev/null
then
    eval "$(starship init zsh)"
fi

###########################
## Various integrations ##
##########################

# aider - https://aider.chat
if type aider > /dev/null
then
    export AIDER_MODEL=ollama/llama3.1
    export OLLAMA_API_BASE=http://127.0.0.1:11434
fi

# Carapace - https://carapace.sh/
if type carapace > /dev/null
then
    export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
    zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
    source <(carapace _carapace)
fi

# fzf key bindings and fuzzy completion - https://github.com/junegunn/fzf
if type fzf > /dev/null
then
    source <(fzf --zsh)
fi

# Homebrew - mac - http://brew.sh/
if [ -d /opt/homebrew/ ]
then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew - wsl - http://brew.sh/
if [ -d /home/linuxbrew/ ]
then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# mcfly - https://github.com/cantino/mcfly
if type mcfly > /dev/null
then
    eval "$(mcfly init zsh)"
fi

###############
## Feedback  ##
###############

echo "$fg[cyan]$(date +'%H:%M:%S') Zsh custom profile loaded$reset_color"
