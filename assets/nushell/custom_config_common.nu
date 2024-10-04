# Custom nu config
# kyrlian - 20240525

# loaded with 'source' in custom_config_mac.nu and custom_config_win.nu:
# source custom_config_common.nu

#############
## Banner  ##
#############

# https://gist.github.com/jeffock/dce0c67169111ce3e17287ea7c2d0183
# https://www.nushell.sh/commands/docs/format_date.html
# https://www.nushell.sh/commands/docs/ansi.html

export def custom_banner [] {
  let ellie = [
    "      __  ,"
    " .--()°'.' "
    "'|, . ,'   "
    ' !_-(_\    '
  ]
  let dt = date now | format date "%Y-%m-%d %H:%M:%S"
  print $"(ansi reset)"
  # old (sys) syntax before 0.94.0
  # print $"(ansi green)($ellie.0)  (ansi yellow_bold)Nushell (ansi reset)(ansi yellow)v(version | get version) on ((sys).host.name)(ansi reset)"
  # print $"(ansi green)($ellie.1)  (ansi light_blue_bold)RAM (ansi reset)(ansi light_blue)((sys).mem.used) / ((sys).mem.total)(ansi reset)"
  # New syntax from 0.94.0
  print $"(ansi green)($ellie.0)  (ansi yellow_bold)Nushell (ansi reset)(ansi yellow)v(version | get version) on ((sys host).name)(ansi reset)"
  print $"(ansi green)($ellie.1)  (ansi light_blue_bold)RAM (ansi reset)(ansi light_blue)((sys mem).used) / ((sys mem).total)(ansi reset)"
  print $"(ansi green)($ellie.2)  (ansi light_purple_bold)Date (ansi reset)(ansi light_purple)($dt)(ansi reset)"
  print $"(ansi green)($ellie.3)  (ansi light_green_bold)Directory (ansi reset)(ansi light_green)(pwd)(ansi reset)"
  # print $"(ansi black)█(ansi red)█(ansi green)█(ansi yellow)█(ansi blue)█(ansi magenta)█(ansi cyan)█(ansi white)█(ansi reset)█"
} 
custom_banner 

####################
## Common config  ##
####################

##############
## Env vars ##
##############

# Aider - https://aider.chat/docs/config/dotenv.html
$env.AIDER_MODEL = 'ollama/llama3.1'
$env.OLLAMA_API_BASE = 'http://127.0.0.1:11434'

##############
## Aliases  ##
##############

alias ll = ls -al
alias vi = nvim

def dict [word: string] { curl $"dict://dict.org/d:($word)" } # dict protocol - https://en.wikipedia.org/wiki/DICT
def prefix [word: string] { curl $"dict://dict.org/m:($word)::prefix" } # dict protocol - https://en.wikipedia.org/wiki/DICT

# starship prompt
## Done in config.nu
# use starship.nu

###############
## Feedback  ##
###############
let hh = date now | format date "%H:%M:%S"
print $"(ansi light_blue_bold)($hh) Common config loaded(ansi reset)"
