# Launch Hyprland in tty1.
if [[ $(tty) == /dev/tty1 ]] && uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# Global ZSH Config.
export PATH=$PATH:/home/jacob/.local/bin:/home/jacob/.spicetify
CASE_SENSITIVE="false"
export MANPAGER='nvim +Man!'
# export CC="/usr/bin/clang"
# export CXX="/usr/bin/clang++"

alias dots="git --git-dir=$HOME/.dots --work-tree=$HOME"

if [[ -n $WAYLAND_DISPLAY ]]; then

    # oh-my-zsh
    export ZSH="$HOME/.oh-my-zsh"
    plugins=(
        zsh-autosuggestions
        git
    )
    source $ZSH/oh-my-zsh.sh

    # oh-my-posh
    eval "$(oh-my-posh init zsh --config ~/.config/kitty/catppuccin_frappe.omp.json)"

    # ani-cli use rofi.
    export ANI_CLI_EXTERNAL_MENU=1

    if [[ $TERM == "xterm-kitty" ]]; then
        # Vim mode.
        bindkey -v
        export KEYTIMEOUT=1

        # fastfetch
        fastfetch
        alias cf="clear && fastfetch"
    fi
fi
