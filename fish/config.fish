if status is-interactive
    # Commands to run in interactive sessions can go here
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vito/google-cloud-sdk/path.fish.inc' ]
    . '/Users/vito/google-cloud-sdk/path.fish.inc'
end


# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always


# aliases
#alias ll lli
alias ll "eza -l -g --icons"
command -qa nvim && alias vim nvim

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
