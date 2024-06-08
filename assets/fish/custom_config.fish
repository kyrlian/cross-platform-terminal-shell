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
    # On linux echo "a$(set_color blue)b" doesnt work - but this does : echo "a"$(set_color blue)"b"
    set_color cyan; echo $ascfish[1]; set_color normal
    set_color cyan; echo $ascfish[2](set_color yellow)" Fish shell [https://fishshell.com/] on "(uname); set_color normal
    set_color cyan; echo $ascfish[3](set_color blue)" $sysversion"; set_color normal
    set_color cyan; echo $ascfish[4](set_color magenta)" Date: "(date +'%Y-%m-%d %H:%M:%S'); set_color normal
    set_color cyan; echo $ascfish[5](set_color green)" Directory: "(pwd); set_color normal
    set_color cyan; echo $ascfish[6](set_color red)" User: "(whoami); set_color normal
    # echo (set_color BLACK)"█"(set_color RED)"█"(set_color GREEN)"█"(set_color YELLOW)"█"(set_color BLUE)"█"(set_color MAGENTA)"█"(set_color CYAN)"█"(set_color WHITE)"█"(set_color normal)"█"
end

function banner
        fish_greeting
end

##############
## Path     ##
##############
fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/scripts

##############
## Aliases  ##
##############
alias ll='ls -al'
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
set_color cyan; echo (date +'%H:%M:%S')" Fish custom profile loaded"; set_color normal
