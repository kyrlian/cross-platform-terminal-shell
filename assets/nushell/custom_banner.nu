# Custom banner

# load with 'source' in config.nu:
# source custom_banner.nu

# https://gist.github.com/jeffock/dce0c67169111ce3e17287ea7c2d0183
# https://www.nushell.sh/commands/docs/format_date.html
# https://www.nushell.sh/commands/docs/ansi.html

def show_banner [] {
  let ellie = [
    "      __  ,"
    " .--()°'.' "
    "'|, . ,'   "
    ' !_-(_\    '
  ]
  let s = (sys)
  let dt = date now | format date "%Y-%m-%d %H:%M:%S"
  print $"(ansi reset)"
  print $"(ansi green)($ellie.0)  (ansi yellow_bold)Nushell (ansi reset)(ansi yellow)v(version | get version) on ((sys).host.name)(ansi reset)"
  print $"(ansi green)($ellie.1)  (ansi light_blue_bold)RAM (ansi reset)(ansi light_blue)($s.mem.used) / ($s.mem.total)(ansi reset)"
  print $"(ansi green)($ellie.2)  (ansi light_purple_bold)Date (ansi reset)(ansi light_purple)($dt)(ansi reset)"
  print $"(ansi green)($ellie.3)  (ansi light_green_bold)Directory (ansi reset)(ansi light_green)(pwd)(ansi reset)"
} 
show_banner 
