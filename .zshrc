# Global ZSH Config.
export PATH=$PATH:/home/jacob/.local/bin:/home/jacob/.spicetify
CASE_SENSITIVE="false"
export MANPAGER='nvim +Man!'

# Use trash instead of rm.
alias rm="trash-put"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(
zsh-autosuggestions
git
)
source $ZSH/oh-my-zsh.sh

if [[ -n $WAYLAND_DISPLAY ]]; then

    # oh-my-posh
    eval "$(oh-my-posh init zsh --config ~/.config/kitty/catppuccin_frappe.omp.json)"

    if [[ $TERM == "xterm-kitty" ]]; then
        # Vim mode.
        bindkey -v
        export KEYTIMEOUT=1

        # fastfetch
        fastfetch
        alias cf="clear && fastfetch"
    fi
fi
