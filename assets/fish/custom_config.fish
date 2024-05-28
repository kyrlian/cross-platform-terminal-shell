# My custom fish profile
# Sourced from ~/.config/fish/config.fish
# with:
# if status is-interactive
#     test -e {$HOME}/scripts/custom-profile.fish ; and source {$HOME}/scripts/custom-profile.fish
# end

#############
## Banner  ##
#############

# https://fishshell.com/docs/current/cmds/fish_greeting.html
function fish_greeting
    switch (uname)
        case Linux
                set sysversion $(systeminfo | grep 'OS Name' | xargs)
        case Darwin
                set sysversion $(system_profiler SPSoftwareDataType | grep 'System Version' | xargs)
        case '*'
                set sysversion Unknown
    end

    # https://fishshell.com/docs/current/cmds/set_color.html
    # set_color cyan; echo "   __ _     _      "; set_color normal
    # set_color cyan; echo "  / _(_)___| |__   $(set_color yellow) Fish shell [https://fishshell.com/]"; set_color normal
    # set_color cyan; echo " | |_| / __| '_ \  $(set_color blue) $sysversion"; set_color normal
    # set_color cyan; echo " |  _| \__ \ | | | $(set_color magenta) Date: $(date +'%Y-%m-%d %H:%M:%S')"; set_color normal
    # set_color cyan; echo " |_| |_|___/_| |_| $(set_color green) Directory: $(pwd)"; set_color normal
    # set_color cyan; echo " |_| |_|___/_| |_| $(set_color red) User: $(whoami)"; set_color normal
    set_color cyan; echo "   _______     "; set_color normal
    set_color cyan; echo "   \      \    $(set_color yellow) Fish shell [https://fishshell.com/]"; set_color normal
    set_color cyan; echo "  _ \/'''''\   $(set_color blue) $sysversion"; set_color normal
    set_color cyan; echo " | \/  _  @ \  $(set_color magenta) Date: $(date +'%Y-%m-%d %H:%M:%S')"; set_color normal
    set_color cyan; echo " |    (_>   <  $(set_color green) Directory: $(pwd)"; set_color normal
    set_color cyan; echo " |_/\       /  $(set_color red) User: $(whoami)"; set_color normal
    set_color cyan; echo "    /\...../   "; set_color normal
    set_color cyan; echo "    \____//    "; set_color normal
end

##############
## Aliases  ##
##############

#python
# alias venvc='python3 -m venv venv'
alias venvc='virtualenv virtualenv'
alias activate='source virtualenv/bin/activate.fish'

##############
## Prompt   ##
##############

# Starship prompt
starship init fish | source

###############
## Feedback  ##
###############
set_color cyan; echo "Fish custom profile loaded"; set_color normal