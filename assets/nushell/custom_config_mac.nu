# Custom nu config for mac
# kyrlian - 20240525

# Loaded from config.nu
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
# source '~/.../nushell/custom_config_mac.nu'

# First source the common config
source custom_config_common.nu

# Mac specifics
print $"(ansi light_blue_bold)Loading mac config(ansi reset)"

# Test
export alias what_is_my_os = print 'This is macos'

# Path
use std *
path add /opt/homebrew/bin /usr/local/bin

##############
## Aliases  ##
##############
alias mu = murex

# Python venv
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
