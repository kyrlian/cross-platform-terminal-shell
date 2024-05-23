# Added at the end of config.nu (using 'config nu')

# Custom banner
source custom_banner.nu

# Custom config
# TODO use (sys).host.name to select config based on OS
# source custom_config_mac.nu
source custom_config_win.nu


# starship prompt
use starship.nu
