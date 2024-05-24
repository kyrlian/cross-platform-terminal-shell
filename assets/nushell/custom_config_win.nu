# Custom nu config - for windows

# load with 'source' in config.nu:
# source custom_config_win.nu

# Alias
alias ll = ls -al
alias murex = `c:\Program Files\murex-windows-amd64\bin\murex-6-windows-amd64.exe`

# Python venv
alias venvc = python -m virtualenv venv
alias activate = overlay use venv\Scripts\activate.nu
