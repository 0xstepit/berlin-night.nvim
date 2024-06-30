#!/usr/bin/env bash

# BerlinNight colors for Tmux

set -g mode-style "fg=#7580F0,bg=#365063"

set -g message-style "fg=#7580F0,bg=#365063"
set -g message-command-style "fg=#7580F0,bg=#365063"

set -g pane-border-style "fg=#365063"
set -g pane-active-border-style "fg=#7580F0"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7580F0,bg=#121B21"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#191919,bg=#7580F0,bold] #S #[fg=#7580F0,bg=#121B21,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#121B21,bg=#121B21,nobold,nounderscore,noitalics]#[fg=#7580F0,bg=#121B21] #{prefix_highlight} #[fg=#365063,bg=#121B21,nobold,nounderscore,noitalics]#[fg=#7580F0,bg=#365063] %Y-%m-%d  %I:%M %p #[fg=#7580F0,bg=#365063,nobold,nounderscore,noitalics]#[fg=#191919,bg=#7580F0,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#121B21,bg=#121B21,nobold,nounderscore,noitalics]#[fg=#7580F0,bg=#121B21] #{prefix_highlight} #[fg=#365063,bg=#121B21,nobold,nounderscore,noitalics]#[fg=#7580F0,bg=#365063] %Y-%m-%d  %H:%M #[fg=#7580F0,bg=#365063,nobold,nounderscore,noitalics]#[fg=#191919,bg=#7580F0,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#476B85,bg=#121B21"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#476B85,bg=#121B21"
setw -g window-status-format "#[fg=#121B21,bg=#121B21,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#121B21,bg=#121B21,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#121B21,bg=#365063,nobold,nounderscore,noitalics]#[fg=#7580F0,bg=#365063,bold] #I  #W #F #[fg=#365063,bg=#121B21,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#F0E575]#[bg=#121B21]#[fg=#121B21]#[bg=#F0E575]"
set -g @prefix_highlight_output_suffix ""
