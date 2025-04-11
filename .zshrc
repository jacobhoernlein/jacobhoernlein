# Launch Hyprland in tty1.
if [[ $(tty) == /dev/tty1 ]] && uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# Global ZSH Config.
export PATH=$PATH:/home/jacob/.local/bin:/home/jacob/.spicetify
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
CASE_SENSITIVE="false"
export MANPAGER='nvim +Man!'

alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"

if [[ -n $WAYLAND_DISPLAY ]]; then
    eval "$(oh-my-posh init zsh --config ~/.config/kitty/catppuccin_frappe.omp.json)"
    plugins=(
        zsh-autosuggestions
        git
    )

    bindkey -v
    export KEYTIMEOUT=1
    if [[ $TERM == "xterm-kitty" ]]; then

        fastfetch
        alias cf="clear && fastfetch"
    fi
fi
