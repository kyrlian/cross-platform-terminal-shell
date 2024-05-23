# Custom nu config

# load with 'source' in config.nu:
# source custom_config_mac.nu

# Windows
# alias venvc = python -m virtualenv venv
# alias activate = overlay use venv\Scripts\activate.nu

# Macos
alias venvc = virtualenv virtualenv
alias activate = overlay use ./virtualenv/bin/activate.nu
