#!/bin/sh
# env vars to set on login, zsh settings in ~/config/zsh/.zshrc
# add `export ZDOTDIR="$HOME/.config/zsh"` to /etc/zsh/zshenv in order to place this file at .config/zsh/.zprofile

# sourcing all files from folder
[ -e "$HOME/.config/shell/env" ] && [ -d "$HOME/.config/shell/env" ] && source <(cat "$HOME"/.config/shell/env/*)

# sourcing individual files
#[ -e "$HOME/.config/shell/env" ] && [ -d "$HOME/.config/shell/env" ] && source <(cat "$HOME"/.config/shell/env/{00-def-progs,01-xdg,03-zdot,path,other})

# excluding individual files from sourcing
#[ -e "$HOME/.config/shell/env" ] && [ -d "$HOME/.config/shell/env" ] && source <(find "$HOME"/.config/shell/env -type f -not -regex '.*/\(path\|01-xdg\|other\)$' | sort | xargs cat)
