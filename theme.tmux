#!/usr/bin/env bash

# -------- STATUS BAR --------
tmux set -g mode-style 'fg=green bg=black'
tmux set -g message-style 'bg=blue fg=default'
tmux set -g message-command-style 'fg=white bg=black'

# panes
tmux set -g pane-border-style 'fg=black,bg=black'
tmux set -g pane-active-border-style 'fg=blue'

# statusbar
tmux set -g status-position bottom
tmux set -g status-justify left
tmux set -g status-style 'fg=blue'

tmux set -g status-left ''
tmux set -g status-left "#[fg=black,bg=orange]#{?client_prefix, C ,#[fg=black,bg=blue] N }"

# set -g status-left "#[fg=orange,bg=default,bold] #{?client_prefix,󰠠 ,#[dim]󰤂 } "
tmux set -g status-left-length 80

tmux set -g status-right-style 'fg=white bg=default'
tmux set -g status-right '#[bg=blue,fg=#000000,bold] %a %b %-e %I:%M%p '
tmux set -g status-right-length 50

tmux set -g window-status-current-style 'fg=black bg=green bold'
tmux set -g window-status-current-format ' #I #W #F '

tmux set -g window-status-style 'fg=blue bg=default'
tmux set -g window-status-format ' #I #[fg=white]#W #[fg=yellow]#F '

tmux set -g window-status-bell-style 'fg=yellow bg=red bold'
