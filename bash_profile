
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

##
# Your previous /Users/MichaelZheng/.bash_profile file was backed up as /Users/MichaelZheng/.bash_profile.macports-saved_2015-11-19_at_18:06:33
##

# MacPorts Installer addition on 2015-11-19_at_18:06:33: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#####Sublime text 2
PATH=“/usr/local/bin:${PATH}”
export PATH
######

# enable the git bash completion commands
cdcdsoucre ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
 
# enable git unstaged indicators - set to a non-empty value
#GIT_PS1_SHOWDIRTYSTATE="."
 
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."
 
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."
 
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"
 
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
 
# set the prompt to show current working directory and git branch name, if it exists
 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above
# PS1='${GREEN}\u${BLACK}@${CYAN}\h:${MAGENTA}\w${WHITE}`__git_ps1 " (%s)"`\$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
# PS1='\[33[0;36m\]\u@\h\[33[01m\]:\[33[0;35m\]\w\[33[00m\]\[33[1;30m\]\[33[0;37m\]`__git_ps1 " (%s)"`\[33[00m\]\[33[0;37m\]\$ '
 
# return the prompt prefix for the second line
function set_prefix {
    BRANCH=`__git_ps1`
    if [[ -z $BRANCH ]]; then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}
 
# and here's one similar to Paul Irish's famous prompt ... not sure if this is the way he does it, but it works  <span class="wp-smiley wp-emoji wp-emoji-smile" title=":)">:)</span>
# 33[s = save cursor position
# 33[u = restore cursor position
 
export PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${MAGENTA}`__git_ps1 " on %s"`${WHITE}\r\n`set_prefix`${NORMAL}${CYAN}33[s33[60C (`date "+%a, %b %d %H:%M"`)33[u${WHITE} '




##
# Your previous /Users/MichaelZheng/.bash_profile file was backed up as /Users/MichaelZheng/.bash_profile.macports-saved_2015-12-25_at_15:31:37
##

# MacPorts Installer addition on 2015-12-25_at_15:31:37: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

