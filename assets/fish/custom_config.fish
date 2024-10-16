# My custom fish profile
# Sourced from ~/.config/fish/config.fish
# with:
# if status is-interactive
#       set customconf {$HOME}/scripts/custom-profile.fish
#       set customconf /mnt/e/docs/coding/shell/cross-platform-terminal-shell/assets/fish/custom_config.fish
#       test -e $customconf ; and source $customconf
# end

#############
## Banner  ##
#############

# https://fishshell.com/docs/current/cmds/fish_greeting.html
function fish_greeting
    switch (uname)
        case Linux
            set sysversion (hostnamectl | grep Operating | xargs)
        case Darwin
            set sysversion (system_profiler SPSoftwareDataType | grep 'System Version' | xargs)
        case '*'
            set sysversion Unknown
    end

    set ascfish[1] '    _______    °'
    set ascfish[2] '  _ \\/     \\   °'
    set ascfish[3] ' | \\/  _  @ \\  °'
    set ascfish[4] ' |    (_>   < ° '
    set ascfish[5] ' |_/\\       /   '
    set ascfish[6] '     \\_____/    '

    # https://fishshell.com/docs/current/cmds/set_color.html
    # On linux echo "a$(set_color blue)b" doesnt work - but this does : echo "a"(set_color blue)"b"
    # set_color cyan
    echo (set_color cyan)$ascfish[1]
    echo (set_color cyan)$ascfish[2](set_color yellow) (fish --version)" - fishshell.com"
    echo (set_color cyan)$ascfish[3](set_color blue)" $sysversion"
    echo (set_color cyan)$ascfish[4](set_color magenta)" Date: "(date +'%Y-%m-%d %H:%M:%S')
    echo (set_color cyan)$ascfish[5](set_color green)" Directory: "(pwd)
    echo (set_color cyan)$ascfish[6](set_color red)" User: "(whoami)
    set_color normal
    # echo (set_color BLACK)"█"(set_color RED)"█"(set_color GREEN)"█"(set_color YELLOW)"█"(set_color BLUE)"█"(set_color MAGENTA)"█"(set_color CYAN)"█"(set_color WHITE)"█"(set_color normal)"█"
end

function banner
    fish_greeting
end

##############
## Path     ##
##############
# Homebrew Mac
fish_add_path /opt/homebrew/bin
# Homebrew Linux
fish_add_path /home/linuxbrew/.linuxbrew/bin
fish_add_path /usr/local/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/scripts

##############
## Aliases  ##
##############
alias ll='ls -alhG'
alias helix='hx'

# not needed when using uv
# alias venvc='virtualenv virtualenv'
# alias venvc11='virtualenv -p python3.11 virtualenv'
# # alias activate='source virtualenv/bin/activate.fish'
# # https://fishshell.com/docs/current/cmds/if.html
# function activate
#     if test -d virtualenv
#         source virtualenv/bin/activate.fish
#     else if test -d .venv
#         source .venv/bin/activate.fish
#     else
#         echo No venv found
#     end
# end


##############
## Prompt   ##
##############

# Starship prompt
# echo "starship"
# time if type starship > /dev/null
if type starship > /dev/null
    starship init fish | source
end

###########################
## Various integrations ##
##########################

# aider - https://aider.chat
# echo "aider"
# time if type aider > /dev/null
if type aider > /dev/null
    set --export AIDER_MODEL ollama/llama3.1
    set --export OLLAMA_API_BASE http://127.0.0.1:11434
end

# Carapace - https://carapace.sh/
# echo "carapace"
# time if type carapace > /dev/null
if type carapace > /dev/null
    set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense' # optional
    mkdir -p ~/.config/fish/completions
    # carapace --list | awk '{print $1}' | xargs -I{} touch ~/.config/fish/completions/{}.fish
    carapace _carapace | source
end

# fzf key bindings - https://github.com/junegunn/fzf
# echo "fzf"
# time if type fzf > /dev/null
if type fzf > /dev/null
    fzf --fish | source
end

# homebrew - http://brew.sh/
# echo "brew"
# time if type brew > /dev/null
if type brew > /dev/null
    # eval "$(/opt/homebrew/bin/brew shellenv)"
    eval "$(brew shellenv)"
end

# mcfly history - https://github.com/cantino/mcfly
# echo "mcfly"
# time if type mcfly > /dev/null
if type mcfly > /dev/null
    mcfly init fish | source
end

# watsonx flows engine - https://wxflows.ibm.stepzen.com/
# echo "wxflows"
# time if type wxflows > /dev/null
#     set --export  WXFLOWS_DOMAIN "https://$(wxflows whoami --account).$(wxflows whoami --domain)"
#     set --export  WXFLOWS_APIKEY "$(wxflows whoami --apikey)"
# end

###############
## Feedback  ##
###############

echo (set_color cyan)(date +'%H:%M:%S')" Fish custom profile loaded"(set_color normal)
#set_color normal
