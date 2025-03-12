# .tmux.conf

# remap  prefix Ctrl+B to Alt + a
set -g prefix M-a
unbind C-b
bind M-a send-prefix
# split panes using - and =
bind - split-window -h
bind = split-window -v
unbind '"'
unbind %

# Move around panes with hjkl, as one would in vim after pressing ctrl + w
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# copy mode : vim 

# set vi mode for copy mode
setw -g mode-keys vi
# Setup 'v' to begin selection, just like Vim
bind-key -T copy-mode-vi 'v' send -X begin-selection
# Setup 'y' to copy selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
