#
# ~/.bash_profile
#

PATH="${PATH:+$PATH:}$HOME/.local/bin"
PATH="${PATH:+$PATH:}/var/lib/flatpak/exports/bin"
PATH="${PATH:+$PATH:}$HOME/.cargo/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc
