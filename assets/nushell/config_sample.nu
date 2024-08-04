# Location
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# Nushell Config File
#
# version = "0.91.0"

# [...]

# Load custom config
## Windows
source 'E:\docs\...\assets\nushell\custom_config_win.nu'
## Mac
source '~/Documents/.../assets/nushell/custom_config_mac.nu'

# Load starship prompt
## Windows
use 'E:\docs\...\assets\nushell\starship.nu'
## Mac
use '~/Documents/.../assets/\nushell\starship.nu'
