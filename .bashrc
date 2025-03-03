#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1='[\u@\h \W]\$ '
export MANPAGER='vim -MRn +MANPAGER - '
export EDITOR='nvim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

for i in reboot poweroff halt; do
    alias $i="sudo $i"
done

if [[ "$TERM" != "linux" ]]; then
    eval -- "$($HOME/.cargo/bin/starship init bash --print-full-init)"
fi
