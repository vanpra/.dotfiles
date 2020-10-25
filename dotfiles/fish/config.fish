set -g theme_display_git no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
eval (python -m virtualfish)

if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
end

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set LANG en_GB.UTF-8
set LC_MESSAGES "C"
set LC_ALL en_GB.UTF-8
set LC_CTYPE en_GB.UTF-8
set GOOGLE_APPLICATION_CREDENTIALS /home/pranav/Documents/gcp.json     
set ANDROID_HOME /opt/android-sdk/tools
set PATH /opt/flutter/bin $PATH
set XDG_CURRENT_DESKTOP i3
set PATH $HOME/Uni/Year\ 2/C/pintos_task0_pm1019/src/utils $PATH
set BINTRAY_USER vanpra
set BINTRAY_API_KEY 91fd3568ae3c99621ba38d0f18a4ce16321a04ea

