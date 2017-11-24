# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/halcyon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey "^[[3~" delete-char    
bindkey -e
# do not bell on tab-completion
#set bell-style none

set meta-flag on
set input-meta on
set convert-meta off
set output-meta on

# Completed names which are symbolic links to
# directories have a slash appended.
set mark-symlinked-directories on

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[5~" beginning-of-buffer-or-history
bindkey "^[[6~" end-of-buffer-or-history
bindkey "^[[2~" overwrite-mode
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
# for linux console and RH/Debian xterm
# allow the use of the Home/End keys
# map "page up" and "page down" to search history based on current cmdline
bindkey "\e[5~": history-search-backward
bindkey "\e[6~": history-search-forward
# allow the use of the Delete/Insert keys
bindkey "\e[2~": quoted-insert

# gnome / others (escape + arrow key)
bindkey "\e[5C": forward-word
bindkey "\e[5D": backward-word
# konsole / xterm / rxvt (escape + arrow key)
bindkey "\e\e[C": forward-word
bindkey "\e\e[D": backward-word
# gnome / konsole / others (control + arrow key)
bindkey "\e[1;5C": forward-word
bindkey "\e[1;5D": backward-word
# aterm / eterm (control + arrow key)
bindkey "\eOc": forward-word
bindkey "\eOd": backward-word

# konsole (alt + arrow key)
bindkey "\e[1;3C": forward-word
bindkey "\e[1;3D": backward-word


#aliases
alias ls="ls --color=auto"
alias search="emerge --search"
alias ll="ls -l --color=auto"
alias la="ls -a --color=auto"

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'



#prompts
PS1=$'%{\e[1;31m%}%n%{\e[0m%}%{\e[1;33m%}@%{\e[1;31m%}%m %{\e[1;32m%}%~ >%{\e[0m%} '
RPS1=$'%{\e[1;32m%}<%T%{\e[0m%}'

