if status is-interactive
    # Commands to run in interactive sessions can go here
    # my platform additions
    set customconf {$HOME}/.config/fish/custom_config.fish
    test -e $customconf ; and source $customconf
    # mac specific stuff
    set customconflocal {$HOME}/.config/fish/local_profile_mac.fish
    test -e $customconflocal ; and source $customconflocal
end