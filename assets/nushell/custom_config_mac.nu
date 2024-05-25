# Custom nu config for mac

# Loaded from 
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
# source '~/.../nushell/custom_config_mac.nu'

# First source the common config
source custom_config_common.nu

# Mac specifics
print $"(ansi light_blue_bold)Loading mac config(ansi reset)"

# Path
use std *
path add /opt/homebrew/bin /usr/local/bin

# Alias

# Python venv
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
