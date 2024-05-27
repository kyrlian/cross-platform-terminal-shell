# Custom nu config for windows
# kyrlian - 20240525

# Loaded from config.nu 
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
# source '~/.../nushell/custom_config_win.nu'

# First source the common config
source custom_config_common.nu

# Windows specifics
print $"(ansi light_blue_bold)Loading windows config(ansi reset)"

# Test
export alias what_is_my_os = print 'This is windows'

##############
## Aliases  ##
##############
alias cat = more
## Murex
alias muw = `c:\Program Files\murex\murex-6-windows-amd64.exe`
alias debian = wsl -d Debian
alias ubuntu = wsl -d Ubuntu
# def murex [] { wsl -d Ubuntu -- /usr/bin/murex }
alias murex = wsl
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