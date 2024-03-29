# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;


# Torpoise personal configurations.
# ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
# ~/.bash_profile
# ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#	♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#	 PROMPT AND ENVIRONMENT CONFIG
#	♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
	# export QT_SELECT=4
	# export PS1='\[\e[36m\]\u\[\e[m\]\[\e[37m\]㷅\[\e[m\]\s \[\e[36m\]\W\[\e[m\]\[\e[37m\❤\[\e[m\] '
    # export PATH="$PATH:/usr/local/bin/"
    export PATH="$PATH:/usr/local/opt/"
	export EDITOR=/usr/bin/code		# visual-studio-code as default editor.
	export BLOCKSIZE=1k			# keep things nice and tidy.
    export DISPLAY=:0
    export MANPATH=/opt/local/share/man:$MANPATH
    export PATH="/usr/local/opt/openjdk/bin:$PATH"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
	
complete -cf sudo
shopt -s checkwinsize	# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s expand_aliases # 

#	♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#	 TERMINAL FUNCTIONS FOR GENERAL USE
#	♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥

alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
					    # cleanupDS:  Recursively delete .DS_Store
					    # cleanup:  clean up the dang house!

                        # BEGIN COMMON ALIASES:
								#	c: QUICK CLEAR
                           # Preferred 'cp' implementation
                           # Preferred 'mv' implementation
                     # Preferred 'mkdir' implementation
                       	    # Preferred 'ls' implementation.
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias df='df -h'                            # human-readable sizes
alias free='free -m'                        # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias cd..='cd ../'  	                    #list contents on cd.. but not cd I guess.
alias ~="cd ~"                              #   ~: QUICK CD HOME DIRECTORY
alias which='type -all'                     #   which:  FIND EXECUTBALES
alias path='echo -e ${PATH//:/\\n}'         #   path:   ECHO ALL EXECUTABLE PATHS 
alias DT='tee ~/Desktop/terminalOut.txt'    #   DT:    PIPE CONTENT TO FILE ON macOS DESKTOP
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }		#    spotlight: Search on macOS
#    extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#     TORPOISE FUNCTIONS:
#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥

#	jdk: SET JAVA HOME PATH AND RETURN JAVA VERSION
	jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version
	}

#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#     TORPOISE ALIASES:
#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#	[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \. /usr/share/bash-completion/bash_completion

	# CONFIG ALIASES
	alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
    # GIT MASTER BRANCH ALIASES
	alias status='git status'
	alias add='git add --all && git status'
    alias pull='git pull && git status'
	alias push='git push && git status'
	alias stat='git status'
	alias checkout='git checkout && git status'
    alias fm='vifm'
	alias fy='fzf'
    alias vi='nvim'
	alias commit='git commit -m "committed some changes to main branch!" && git status'
    # CASK ALIASES
	alias chrome='open -a Google\ Chrome'
	alias gimp='open -a GIMP'
	alias processing='open -a Processing'
    # EXTRA ALIASES
	alias maven='mvn'
	alias createmvnapp='mvn archetype:generate'
	alias fm='vifm'
	alias fy='fzf'
	alias vi='vim'
    alias vim='nvim'
#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
#     		CONTINUE? :	y/n
#    ♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"