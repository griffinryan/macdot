set fish_greeting ""

set -gx TERM xterm-256color

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
alias ls "ls -p -G"
alias l "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

alias c "clear"
alias mv "mv -iv"
alias cp "cp -iv"
alias mkdir "mkdir -pv"

alias fm "vifm"
alias fy "fzf"
alias vi "nvim"

# better version of less
alias less='less -FSRXc'
# file-size in human terms
alias df='df -h'
# better version of which
alias which "type -all"

# Apps
alias ide "open -a IntelliJ\ IDEA.app"
alias safari "open -a Safari.app"
alias code "open -a Visual\ Studio\ Code.app"
alias lc3 "open LC3Tools.app"
alias f "open -a Finder ./"

# Git Cheating
alias gall "git add . && git commit 'Deployed some changes to main!' && git push && echo && echo"
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

# Others

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

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-linux.fish
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
