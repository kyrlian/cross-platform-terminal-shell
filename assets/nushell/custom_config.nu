# Loaded from config.nu with
# source '~/.../nushell/custom_config.nu'

# Custom banner
source custom_banner.nu

# Custom config
# use (sys).host.name to select config based on OS
if (sys).host.name == "Darwin" {
    print $"(ansi light_blue_bold)Loading mac config(ansi reset)"
    source custom_config_mac.nu
} else {
    print $"(ansi light_blue_bold)Loading windows config(ansi reset)"
    source custom_config_win.nu
}

# starship prompt
# use starship.nu
