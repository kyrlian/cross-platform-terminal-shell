# Custom nu config for mac
# kyrlian - 20240525

# Loaded from config.nu
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
#  source '~/.../nushell/custom_config_mac.nu'

# First source the common config
source custom_config_common.nu

#####################
##  Mac specifics  ##
#####################


##############
## Path     ##
##############
use std *
path add /opt/homebrew/bin
path add /usr/local/bin
path add ~/.local/bin
path add ~/scripts

##############
## Aliases  ##
##############
alias mu = murex

# Python venv
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
# alias activate = if ('virtualenv' | path exists) { overlay use ./virtualenv/bin/activate.nu } else if ('.venv' | path exists) { overlay use ./.venv/bin/activate.nu } else { print No venv found }

###############
## Feedback  ##
###############
let hh = date now | format date "%H:%M:%S"
print $"(ansi light_blue_bold)($hh) Mac config loaded(ansi reset)"
