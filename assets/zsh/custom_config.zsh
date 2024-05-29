# My custom zsh profile
# Sourced by  ~/.zshrc

# Color support : $fg[red]
# https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
autoload -U colors && colors

#############
## Banner  ##
#############
banner() { 
    print "Welcome to Zsh"
    print "Date : $(date +'%Y-%m-%d %H:%M:%S')"
}
banner

##############
## Aliases  ##
##############
alias ll='ls -al'

#python
# alias venvc='python3 -m venv venv'
alias venvc='virtualenv virtualenv'
alias activate='source virtualenv/bin/activate'

##############
## Prompt   ##
##############

# Starship prompt
eval "$(starship init zsh)"

###############
## Feedback  ##
###############
echo "$fg[cyan]Zsh custom profile loaded$reset_color"
