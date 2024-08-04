# Custom nu config for windows
# kyrlian - 20240525

# Loaded from config.nu 
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
#  source 'E:\docs\assets\nushell\custom_config_win.nu'

# First source the common config
source custom_config_common.nu

########################
## Windows specifics  ##
########################

##############
## Path     ##
##############
use std *
path add C:\Users\key\AppData\Roaming\Python\Python312\Scripts


##############
## Aliases  ##
##############
alias cat = more

## Shortcuts to other shells
alias muw = `c:\Program Files\murex\murex-6-windows-amd64.exe` # Murex for windows
alias debian = wsl -d Debian # wsl Debian with default shell
alias ubuntu = wsl -d Ubuntu # wsl Ubuntu with default shell
def murex [] { wsl -d Ubuntu -e /usr/bin/murex } # wsl Ubuntu with murex shell
def fish [] { wsl -d Ubuntu -e /usr/bin/fish -l } # wsl Ubuntu with fish shell
def xonsh [] { wsl -d Ubuntu -e /usr/bin/xonsh } # wsl Ubuntu with xonsh shell
def zsh [] { wsl -d Ubuntu -e /usr/bin/zsh -l } # wsl Ubuntu with zsh shell
alias mu = murex

# Python venv
alias venvc = python -m virtualenv virtualenv
alias activate = overlay use virtualenv\Scripts\activate.nu

# swap files location
def swap [a, b] {
  let abase = $a |  path basename
  let adir = $a | path expand | path dirname
  let bbase = $b | path basename
  let bdir = $b | path expand | path dirname
  let atarget = [$bdir,$abase] | str join '\' 
  let btarget = $"($adir)\\($bbase)"
  # print $atarget
  # print $btarget
  mv $a $atarget
  mv $b $btarget
}

###############
## Feedback  ##
###############
let hh = date now | format date "%H:%M:%S"
print $"(ansi light_blue_bold)($hh) Windows config loaded(ansi reset)"
