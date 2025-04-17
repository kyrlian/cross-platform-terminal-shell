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
alias venvc = virtualenv venv
alias activate = overlay use ./venv/bin/activate.nu

###########################
## Various integrations ##
##########################

## carapace
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
mkdir ~/.cache/carapace
carapace _carapace nushell | save --force ~/.cache/carapace/init.nu
source ~/.cache/carapace/init.nu



###############
## Feedback  ##
###############
let hh = date now | format date "%H:%M:%S"
print $"(ansi light_blue_bold)($hh) Mac config loaded(ansi reset)"
