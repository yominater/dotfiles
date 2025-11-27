# lx for better colors
alias lx="exa --icons=auto --no-quotes --color=auto -D1 && exa --icons=auto --no-quotes --color=auto -f1"
alias ll="exa -l -D && exa -lf"
alias lL="exa -l -D --total-size && exa -lf"
alias la="exa --icons=auto --no-quotes --color=auto -D1 -A --ignore-glob '*.tmp' && exa --icons=auto --no-quotes --color=auto -f1 -A --ignore-glob '*.tmp'"
alias lA="exa --icons=auto --no-quotes --color=auto --total-size -D1 -l -A --ignore-glob '*.tmp' && exa --icons=auto --no-quotes --color=auto -f1 -l -A --ignore-glob '*.tmp'"
    alias ls="lx"

# user aliases
alias vi='vim'
alias nv='NVIM_APPNAME=nvim-obsidian nvim' 

# grep
alias grep='grep --color=auto'

# pfetch
alias pfetch="/home/yomi/applications/pfetch"

# config
alias i3conf="nvim ~/.config/i3/config"
alias swayconf="nvim ~/.config/sway/config"
alias i3sconf="nvim ~/.config/i3status/config"
alias hyprconf="nvim ~/.config/hypr/hyprland.conf"
alias footconf="nvim ~/.config/foot/foot.ini"

# mx
alias jctl="journalctl -p 3 -xb"

# git
alias gs="git status"

# neovim for Awesome_vault_2
alias na="cd ~/Awesome_vault_2; nvim"
alias nvimconf="nvim ~/.config/nvim/init.lua"

# alias emacs="emacs -nw" # for emacs no window
alias em="emacs -nw ~/Emacsome-vault"

# Ranger
alias ranger-nv="VIM_APPNAME=nvim-obsidian ranger"
