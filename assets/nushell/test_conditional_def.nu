
print (sys).host.name

# alias in the if blocks are lost outside the block
if (sys).host.name == 'Windows' { export alias test = print test ; print inside ; test} else { source custom_config_mac.nu }
print outside
# test # fails

# Sourced aliases in the if blocks are lost outside the block
if (sys).host.name == 'Windows' { source custom_config_win.nu } else { source custom_config_mac.nu }
# what_is_my_os # fails

# Source-env aliases in the if blocks are lost outside the block
if (sys).host.name == 'Windows' { source-env custom_config_win.nu } else { source-env custom_config_mac.nu }
# what_is_my_os # fails

# Conditional argument doesnt work ; the if arg needs to be a const
#source ( if (sys).host.name == 'Windows' { 'custom_config_win.nu' } else { 'custom_config_mac.nu' } )
# useless with a parse-time const - and doenst work either, what_is_my_os fails
source ( if (true) { 'custom_config_win.nu' } else { 'custom_config_mac.nu' } )
# what_is_my_os # fails

# This Works
alias alias_test2 = if (sys).host.name == 'Windows' { print 'this is a windows' } else { print 'this is a mac' }
alias_test2