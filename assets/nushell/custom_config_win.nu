# Custom nu config for windows

# Loaded from 
#  mac: ~/Library/Application Support/nushell/config.nu 
#  win: ~\AppData\Roaming\nushell\config.nu 
# with:
# source '~/.../nushell/custom_config_win.nu'

# First source the common config
source custom_config_common.nu

# Windows specifics
print $"(ansi light_blue_bold)Loading windows config(ansi reset)"

# Alias
alias murex = `c:\Program Files\murex-windows-amd64\bin\murex-6-windows-amd64.exe`

# Python venv
alias venvc = python -m virtualenv venv
alias activate = overlay use venv\Scripts\activate.nu

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