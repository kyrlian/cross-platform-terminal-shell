# load with 'source' in custom_config_mac.nu and custom_config_win.nu:
# source custom_config_common.nu

# Custom banner
source custom_banner.nu

# Common config
print $"(ansi light_blue_bold)Loading common config(ansi reset)"

alias ll = ls -al
alias vi = nvim

# starship prompt
# use starship.nu

# os specific config will run after