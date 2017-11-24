# /etc/bash/bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# Change the window title of X terminals 
case ${TERM} in
        xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix)
                PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
                ;;
        screen*)
                PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\033\\"'
                ;;
esac

use_color=false

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
        && type -P dircolors >/dev/null \
        && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
        # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
        if type -P dircolors >/dev/null ; then
                if [[ -f ~/.dir_colors ]] ; then
                        eval $(dircolors -b ~/.dir_colors)
                elif [[ -f /etc/DIR_COLORS ]] ; then
                        eval $(dircolors -b /etc/DIR_COLORS)
                fi
        fi

        if [[ ${EUID} == 0 ]] ; then
                PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
        else
                PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
        fi

        alias ls='ls --color=auto'
        alias ll='ls -l --color=auto'
        alias la='ls -la --color=auto'
        alias uname='uname -a'
        alias grep='grep --colour=auto'
        alias egrep='egrep --colour=auto'
        alias fgrep='fgrep --colour=auto'
	alias rm='rm -i'
else
        if [[ ${EUID} == 0 ]] ; then
                # show root@ when we don't have colors
                PS1='\u@\h \W \$ '
        else
                PS1='\u@\h \w \$ '
        fi
fi

# Try to keep environment pollution down, EPA loves us.
unset use_color safe_term match_lhs
if [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export EDITOR="gedit"
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjvf $1   ;;
      *.tar.bz)    tar xjvf $1   ;;
      *.tar.gz)    tar xzvf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/xdg-open

genpasswd() {
        local l=$1
        [ "$l" == "" ] && l=16
        tr -dc "A-Za-z0-9" < /dev/urandom | head -c ${l} | xargs
}
 
userkill() {
        echo ""
        echo "Programm to kill?"
        echo ">>>>"
        read prg
        echo "Quit Programm -> $prg <- "
        ps -A | grep "$prg" | kill -9 `awk '{print $1}'`
}
say() { mplayer "http://translate.google.com/translate_tts?tl=en&q=$1"; }

#strip comments

stripcomments() {
        if [ -n $1 ]; then
                echo 'Syntax Error: stripcomments <filename>'
        else
                grep -vE '^#|^;|^$' $1
        fi
}

# /etc/profile: login shell setup
#
# That this file is used by any Bourne-shell derivative to setup the
# environment for login shells.
#

# Load environment settings from profile.env, which is created by
# env-update from the files in /etc/env.d
if [ -e /etc/profile.env ] ; then
        . /etc/profile.env
fi

# You should override these in your ~/.bashrc (or equivalent) for per-user
# settings.  For system defaults, you can add a new file in /etc/profile.d/.
export EDITOR=${EDITOR:-/bin/nano}
export PAGER=${PAGER:-/usr/bin/less}

# 077 would be more secure, but 022 is generally quite realistic
umask 022

# Set up PATH depending on whether we're root or a normal user.
# There's no real reason to exclude sbin paths from the normal user,
# but it can make tab-completion easier when they aren't in the
# user's PATH to pollute the executable namespace.
#
# It is intentional in the following line to use || instead of -o.
# This way the evaluation can be short-circuited and calling whoami is
# avoided.
if [ "$EUID" = "0" ] || [ "$USER" = "root" ] ; then
        PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${ROOTPATH}"
else
        PATH="/usr/local/bin:/usr/bin:/bin:/home/halcyon/bin/bin:/usr/sbin:/sbin:${PATH}"
fi
export PATH
unset ROOTPATH

if [ -n "${BASH_VERSION}" ] ; then
        # Newer bash ebuilds include /etc/bash/bashrc which will setup PS1
        # including color.  We leave out color here because not all
        # terminals support it.
        if [ -f /etc/bash/bashrc ] ; then
                # Bash login shells run only /etc/profile
                # Bash non-login shells run only /etc/bash/bashrc
                # Since we want to run /etc/bash/bashrc regardless, we source it 
                # from here.  It is unfortunate that there is no way to do 
                # this *after* the user's .bash_profile runs (without putting 
                # it in the user's dot-files), but it shouldn't make any 
                # difference.
                . /etc/bash/bashrc
        else
                PS1='\u@\h \w \$ '
        fi
else
        # Setup a bland default prompt.  Since this prompt should be useable
        # on color and non-color terminals, as well as shells that don't
        # understand sequences such as \h, don't put anything special in it.
        PS1="${USER:-$(whoami 2>/dev/null)}@$(uname -n 2>/dev/null) \$ "
fi

for sh in /etc/profile.d/*.sh ; do
        [ -r "$sh" ] && . "$sh"
done
unset sh

