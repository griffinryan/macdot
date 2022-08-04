set fish_greeting ""

set -gx TERM xterm-kitty

# Theme
set -g theme_color_scheme terminal-dark
# Args: dark, light, solarized, solarized-dark, solarized-light, base16, 
#       base16-dark, base16-light, zenburn, dracula, gruvbox, nord, 
#       terminal, terminal-dark, terminal-light, terminal-light-black.

set -g fish_prompt_pwd_dir_length 4
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Theme
# set -g theme_display_git yes
# set -g theme_display_git_dirty no
# set -g theme_display_git_untracked no
# set -g theme_display_git_ahead_verbose yes
# set -g theme_display_git_dirty_verbose yes
# set -g theme_display_git_stashed_verbose yes
# set -g theme_display_git_default_branch yes
# set -g theme_git_default_branches master main
# set -g theme_git_worktree_support yes
# set -g theme_use_abbreviated_branch_name yes
# set -g theme_display_vagrant yes
# set -g theme_display_docker_machine no
# set -g theme_display_k8s_context yes
# set -g theme_display_hg yes
# set -g theme_display_virtualenv no
# set -g theme_display_nix no
# # set -g theme_display_ruby no
# set -g theme_display_node yes
# set -g theme_display_user your_normal_user
# set -g theme_display_hostname ssh
# set -g theme_display_vi yes
# set -g theme_display_date no
# set -g theme_display_cmd_duration yes
# set -g theme_title_display_process yes
# set -g theme_title_display_path no
# set -g theme_title_display_user yes
# set -g theme_title_use_abbreviated_path no
# set -g theme_date_format "+%a %H:%M"
# set -g theme_date_timezone America/Los_Angeles
# set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
# set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose no
# set -g default_user your_normal_user

# set -g fish_prompt_pwd_dir_length 4
# set -g theme_project_dir_length 4
# set -g theme_newline_cursor no
# set -g theme_newline_prompt '$ '

# Aliases
alias ls "exa -a -R -L 4 --icons"
alias l "exa --icons"
alias la "exa -a --icons"
alias ll "exa -a -T -L 4 --icons"
# alias cd "cd $1 && l"

alias c "clear"
alias mv "mv -iv"
alias cp "cp -iv"
alias mkdir "mkdir -pv"

alias fm "vifm"
alias fy "fzf"
alias vi "nvim"
alias vim "nvim"

# better version of less
alias less='less -FSRXc'
# file-size in human terms
alias df='df -h'

# Apps
alias ide "intellij-idea-ultimate-edition"
alias safari "open -a Safari.app"
alias lc3 "open LC3Tools.app"
alias f "nemo ."
alias browse "google-chrome-stable"
alias chrome "google-chrome-stable"

# Git Cheating
alias gall "git add . && git commit -m 'Deployed some changes to main!' && git push && echo && echo"
alias add "git add --all && git status"
alias pull "git pull && git status"
alias push "git push && git status"
alias stat "git status"
alias checkout "git checkout && git status"

# Reload the shell (i.e. invoke as a login shell)
alias reload "exec $SHELL -l"

# Path function
alias path "echo -e $PATH"

command -qv nvim && alias vim nvim

# Editor
set -gx EDITOR nvim

# Paths
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH

# Others
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set -gx PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
# export PATH="/usr/local/opt/openjdk/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="/usr/local/opt/ruby/bin:$PATH"
# eval "$(/opt/homebrew/bin/brew shellenv)"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

function jdk
    java -version
end

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

systemctl --user import-environment PATH

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        # ly
        exec startx -- -keeptty
    end
end

# end of the Arch tty login

  #switch (uname)
  #case Darwin
  # source (dirname (status --current-filename))/config-osx.fish
  #case Linux
  # source (dirname (status --current-filename))/config-linux.fish
  #case '*'
  #  source (dirname (status --current-filename))/config-windows.fish
  #end

#set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
  #if test -f $LOCAL_CONFIG
  #source $LOCAL_CONFIG
#end

# start X at login

    #if status --is-login
    #if test -z "$DISPLAY" -a $XDG_VTNR = 1
    # ly
    #exec startx
    #end
    #end
# end on the Arch login
