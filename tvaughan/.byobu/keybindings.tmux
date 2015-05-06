source $BYOBU_PREFIX/share/byobu/keybindings/f-keys.tmux.disable
unbind-key -n C-a
unbind-key -n C-s
set -g prefix ^S
set -g prefix2 ^S
bind s send-prefix
