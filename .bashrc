# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profilet
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export IBUS_ENABLE_SYNC_MODE=1

alias con="ssh akpinarb@unix.ucsc.edu"
alias 104asg5="cd ~/School-work/cmps104a/Assignments/asg5/code"
alias 112asg4="cd ~/School-work/cmps112/Assignments/asg4-perl-pmake/"
alias win="xrandr --output LVDS --mode 1366x768 --right-of DFP1;\
           xrandr --output DFP1 --primary --mode 1920x1080; \
           feh --bg-scale ~/Pictures/star_wars_wall.jpg; \
           xset s off; xset -dpms"
alias win_="xrandr --output LVDS --mode 1366x768 --right-of DFP1;\
           xrandr --output DFP1 --primary --mode 3840x2160; \
           feh --bg-scale ~/Pictures/star_wars_wall.jpg; \
           xset s off; xset -dpms"
alias lap="feh --bg-scale ~/Pictures/star_wars_wall.jpg; \
           xset s off; xset -dpms"
alias update="~/scripts/update"
alias down="sudo shutdown -h now"
alias battery="sudo powertop --auto-tune"
alias restart="sudo shutdown -r now"
alias _install="sudo apt-get install"
alias compile="~/scripts/compile"
alias suspend="sudo pm-suspend"
alias emacs="emacs -nw"
alias mkae="make"
alias xonotic="cd ~/Games/Xonotic/;~/Games/Xonotic/xonotic-linux64-sdl"
alias 111="ssh -p 3022 akpinarb@localhost"
alias bed="~/scripts/bed"
alias flame="ssh -p 7022 adam@localhost"
[[ $COLORTERM = gnome-terminal ]] && TERM=xterm-256color
alias webpy="~/cmps183/web2py/web2py.py -e -a 'password' -i 127.0.0.1 -p 8000"
alias webpy_="~/cmps183/project/web2py.py -e -a 'password' -i 127.0.0.1 -p 8000"
alias flame_on="ssh -p 2022 adam@localhost"
alias flame_on_="ssh -p 7022 adam@localhost"
alias ec2="ssh -i ~/Downloads/project_ec2_instance.pem ubuntu@ec2-54-172-54-162.compute-1.amazonaws.com"
alias sass="cd ~/cmps183/web2py/applications/start/static/; compass watch"
alias android="~/Misc/android-studio/bin/studio.sh"

alias flame_root="cd ~/Rand/h1n1/root"
alias flame_src="cd ~/Rand/h1n1/src"
alias flame_data="cd ~/Rand/h1n1/data"
alias flame_db="less ~/Rand/h1n1/data/\". \"/debug_log"
alias flame_dt="hd ~/Rand/h1n1/data/\". \"/.data"

alias nasty_src="cd ~/Rand/nasty"

export GIT_EDITOR=vim
export NOSH_YELP_CLIENT_ID=3Dx7aHnhBtvSYve-Z1rojw
export NOSH_YELP_CLIENT_SECRET=qMVMaTqeSiNAJpecN2sNblmN3xkT5Sl31Srfr092YCfyeI7A2asVUuG3M41KekzH
export BUG_COMMIT=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619
export LOCAL=true
