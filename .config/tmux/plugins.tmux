set -g @plugin "tmux-plugins/tpm"

# set -g @plugin "arcticicestudio/nord-tmux"

# set -g @plugin "egel/tmux-gruvbox"

set -g @plugin "catppuccin/tmux"
set -g @catppuccin_flavour "latte" # latte, frappe, macchiato, mocha
set -g @catppuccin_window_default_text "#W" # use "#W" for application instead of directory 
set -g @catppuccin_window_current_text "#W" # use "#W" for application instead of directory 

# set -g @plugin "cappyzawa/tmux-tokyonight"

run "~/.tmux/plugins/tpm/tpm"
