# Custom aliases
alias snore="sudo pm-suspend"
# Open Obsidian
alias obsidian="~/apps/Obsidian*"
# hyprland
alias hyprconf="nvim ~/.config/hypr/hyprland.conf"
alias hyprkeyconf="nvim ~/.config/hypr/keys.conf"
alias wayconf="nvim ~/.config/waybar/config.jsonc"
alias swayconf="nvim ~/.config/sway/config"
alias nvimconf="nvim ~/.config/nvim/init.lua"

alias prime-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias jctl="journalctl -p 3 -xb"

# nvim for Awesome vault
alias na="cd ~/Awesome_vault_2; nvim"

# better lsblk
alias lsblk="lsblk -o NAME,FSTYPE,LABEL,UUID,SIZE,FSAVAIL,FSUSE%,MOUNTPOINTS"

# GRUB
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# git
alias gs="git status"

# lx for better colors
alias lx="exa --icons=auto --no-quotes --color=auto -D1 && exa --icons=auto --no-quotes --color=auto -f1"
alias ll="exa -lhM -D && exa -lf"
alias lL="exa -lhM -D --total-size && exa -lf"
#alias la="exa -A --ignore-glob '*.tmp'"
alias la="exa --icons=auto --no-quotes --color=auto -D1lhMa --ignore-glob '*.tmp'; exa --icons=auto --no-quotes --color=auto -f1lA --ignore-glob '*.tmp'"
alias lA="exa --icons=auto --no-quotes --color=auto -D1lhMa --total-size --ignore-glob '*.tmp'; exa --icons=auto --no-quotes --color=auto -f1lA --ignore-glob '*.tmp'"
# du -sh but with hidden files
alias dul="du -sh .[!.]* * 2>/dev/null"
# lx as ls
alias ls="lx"
# waybar
alias waybarYomi="waybar --config ~/.config/waybar/Yomiconfig.jsonc --style ~/.config/waybar/Yomistyle.css"
# grub
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# KDE-Plasma
alias kde-plasma="/usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland"
