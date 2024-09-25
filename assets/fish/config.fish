if status is-interactive
    # Commands to run in interactive sessions can go here
    # my additions are all in custom_config.fish:
    set customconf {$HOME}/terminal/assets/fish/custom_config.fish
    test -e $customconf ; and source $customconf
end