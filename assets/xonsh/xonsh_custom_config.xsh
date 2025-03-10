# My custom xonsh profile
# Linked from ~/.xonshrc

# XONSH WIZARD START
# source-zsh "echo loading xonsh foreign shell"
# XONSH WIZARD END

# XONSH WEBCONFIG START
$XONSH_COLOR_STYLE = 'default'
$PROMPT = '{env_name}{BOLD_GREEN}{user}@{hostname}{BOLD_BLUE} {cwd}{branch_color}{curr_branch: {}}{RESET} {RED}{last_return_code_if_nonzero:[{BOLD_INTENSE_RED}{}{RED}] }{RESET}{BOLD_BLUE}{prompt_end}{RESET} '
xontrib load coreutils
# XONSH WEBCONFIG END

#############
## Banner  ##
#############
def banner():
    if $(uname) == 'Linux' :
        sysversion = $(hostnamectl | grep 'Operating').strip()
    elif $(uname) == 'Darwin' :
        sysversion = $(system_profiler SPSoftwareDataType | grep 'System Version').strip()
    else :
        sysversion = 'Unknown'

    logo = ["                     _     ",
        "__  _____  _ __  ___| |__  ",
        "\\ \\/ / _ \\| '_ \\/ __| '_ \\ ",
        " >  < (_) | | | \\__ \\ | | |",
        "/_/\\_\\___/|_| |_|___/_| |_|"]
    printx("{CYAN}"+logo[0]+"{YELLOW} "+$(xonsh --version).strip()+" - xon.sh{RESET}")
    printx("{CYAN}"+logo[1]+"{BLUE} "+sysversion+"{RESET}")
    printx("{CYAN}"+logo[2]+"{CYAN} Date: "+$(date '+%Y-%m-%d %H:%M:%S').strip()+"{RESET}")
    printx("{CYAN}"+logo[3]+"{GREEN} Directory: "+$(pwd).strip()+"{RESET}")
    printx("{CYAN}"+logo[4]+"{RED} User: "+$(whoami).strip()+"{RESET}")
    # https://gist.github.com/rene-d/9e584a7dd2935d0f461904b9f2950007
    # printx("{BLACK}█{RED}█{GREEN}█{YELLOW}█{BLUE}█{PURPLE}█{CYAN}█{WHITE}█{RESET}█")

banner()

##############
## Path     ##
##############
for new_path in [
    "/opt/homebrew/bin",
    "/usr/local/bin",
    "$HOME/.local/bin",
    "$HOME/scripts",
    ]:
    $PATH.append(new_path)

##############
## Aliases  ##
##############

aliases['ll'] = ['ls','-al'] 
# virtual env via vox - https://xon.sh/python_virtual_environments.html
# Note these are not compatible with virtual envs created outside of vox - use vox activate <path> to activate an existing env
# I generate the env name based on current dir using basename(pwd)
# could also use the full path : @($(pwd).strip().replace("/","_")+"_virtualenv")
aliases['venvc'] = 'vox new @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['activate'] = 'vox activate @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['deactivate'] = 'vox deactivate'

##############
## Prompt   ##
##############

# Starship config - https://starship.rs/#xonsh
execx($(starship init xonsh))


###########################
## Various integrations ##
##########################

# Carapace
$COMPLETIONS_CONFIRM=True
exec($(carapace _carapace xonsh))


###############
## Feedback  ##
###############
printx("{CYAN}"+$(date +%H:%M:%S).strip()+" Xonsh custom profile loaded{RESET}")
