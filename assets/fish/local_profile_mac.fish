# My custom mac additions to load after fish profile


#iterm2 integration
test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

#Rancher integration
set --export --prepend PATH {$HOME}/.rd/bin

# Feedback
set_color yellow
echo (date +'%H:%M:%S')" Fish local profile loaded"
set_color normal

# Start tmux
# echo Attaching ; and tmux a ; or echo Creating ; and tmux
