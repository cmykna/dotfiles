# Look in /usr/local/bin first, plz.
export PATH="/usr/local/mysql/bin:/usr/local:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# Git completion and aliases
source ~/.git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
alias gst='git status'

# Alias time!

# Reload
alias rel='source ~/.profile'

# Directory listings
alias l='ls -GF'
alias la='ls -GFa'
alias ll='ls -lGF'
alias lla='ls -lGFa'

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Move & Copy
alias cp="cp -v"
alias mv="mv -v"

# Task list
alias t='python ~/src/t/t.py --task-dir ~/Dropbox/tasks --list tasks'
alias int='ssh www@int.hmheducation.com'

# Colors!

#\e[31m★\e[0m  
PS1='[\w$(__git_ps1 " (%s)")]★  ' 
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

BASHISHDIR="/usr/local/Cellar/bashish/2.2.4/share/bashish"                 ## line added by bashish
TTY=`tty 2>/dev/null` && if test "x$BASHISHDIR" != x;then       ## line added by bashish
test "$BASHISH_OLDPATH"||BASHISH_OLDPATH="$PATH"                ## line added by bashish
PATH="$HOME/.bashish/launcher:$BASHISHDIR/lib:$BASHISH_OLDPATH" ## line added by bashish
BASHSISH_CP=437                                                 ## line added by bashish
TEST_TERM="$TERM" _bashish_utfcheck && BASHISH_CP=utf8          ## line added by bashish
ENV="$HOME/.profile"                                            ## line added by bashish
export BASHISH_CP BASHISH_OLDPATH TTY ENV                       ## line added by bashish
. "$BASHISHDIR/main/prompt/sh/init"                             ## line added by bashish
fi                                                              ## line added by bashish

clear
