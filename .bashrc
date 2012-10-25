# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

RESET="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
DARKGRAY="\[\033[1;30m\]"
BLUE="\[\033[0;34m\]"
LIGHTBLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
LIGHTGREEN="\[\033[1;32m\]"
CYAN="\[\033[0;36m\]"
LIGHTCYAN="\[\033[1;36m\]"
RED="\[\033[0;31m\]"
LIGHTRED="\[\033[1;31m\]"
PURPLE="\[\033[0;35m\]"
LIGHTPURPLE="\[\033[1;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
LIGHTGRAY="\[\033[0;37m\]"
WHITE="\[\033[1;37m\]"

PS1="\n(\`TZ=GMT LANG=C date +'%Y-%m-%d %H:%M %a %Z'\`) (\`TZ=PST8PDT LANG=C date +'%Y-%m-%d %H:%M %a %Z'\`)\n${BLUE}<<<$                                                    {RESET} ${BROWN}\u${RESET}@${LIGHTRED}\h${RESET} [${LIGHTCYAN}\w${RESET}] ${BLUE}>>>${RESET}\n${RED}\$${RESET} "
PS2="> "

#GREP_OPTIONS="--color=always"
export GREP_OPTIONS='--color --exclude-dir=.svn'
alias ls="ls --color=tty "
alias la="ls -la "
alias l="ls -l "
alias g="grep "
alias rm="rm -i "

# (ref.) http://titusz.org/how-to/how-to-list-numeric-file-permissions-on-linux/
function st() {
        if [[ x"$1" == x"" ]]; then
                local count=`ls | wc -l`
                if [[ $count == "0" ]]; then
                        return
                else
                        stat -c "%A (%a) %U(%u)/%G(%g) %8s %.19y %n" *
                fi
        else
                stat -c "%A (%a) %U(%u)/%G(%g) %8s %.19y %n" $*
        fi
}


LANG=ja_JP.UTF-8

# Make bash append rather than overwrite the history on disk
shopt -s histappend
# Whenever displaying the prompt, write the previous line to disk and read unread history lines
export PROMPT_COMMAND="history -a; history -n"
# increase history size
export HISTSIZE=10000
# Don't put duplicate lines in the history and don't save
export HISTCONTROL="ignoredups"

. ~/.sagentrc
# alias addkeys='ssh-add ~/.ssh/CHANGEME'

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
