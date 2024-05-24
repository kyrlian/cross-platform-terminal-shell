# Custom nu config - for mac

# load with 'source' in config.nu:
# source custom_config_mac.nu

# Path
use std *
path add /opt/homebrew/bin /usr/local/bin

# Alias
alias ll = ls -al

# Python venv
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
