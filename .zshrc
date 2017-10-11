alias fix="bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java"

##
export PATH=$PATH:/Applications/Nox\ App\ Player.app/Contents/MacOS
alias nox="adb connect 127.0.0.1:62001"
alias noxx="adb disconnect 127.0.0.1:62001"
alias noxd="adb devices"
###




#### PHOENIX ####

alias i='iex'
 alias ips='iex -S mix phx.server'
 alias ism='iex -S mix'
 alias m='mix'
 alias mab='mix archive.build'
 alias mai='mix archive.install'
 alias mat='mix app.tree'
 alias mc='mix compile'
 alias mcv='mix compile --verbose'
 alias mdl='mix dialyzer'
 alias mdlp='mix dialyzer --plt'
 alias mcr='mix credo'
 alias mcrs='mix credo --strict'
 alias mcx='mix compile.xref'
 alias mdc='mix deps.compile'
 alias mdg='mix deps.get'
 alias mdgc='mix do deps.get, deps.compile'
 alias mdu='mix deps.update'
 alias mdt='mix deps.tree'
 alias mdua='mix deps.update --all'
 alias mdun='mix deps.unlock'
 alias mduu='mix deps.unlock --unused'
 alias meb='mix escript.build'
 alias mec='mix ecto.create'
 alias mecm='mix do ecto.create, ecto.migrate'
 alias med='mix ecto.drop'
 alias mem='mix ecto.migrate'
 alias megm='mix ecto.gen.migration'
 alias merb='mix ecto.rollback'
 alias mers='mix ecto.reset'
 alias mes='mix ecto.setup'
 alias mho='mix hex.outdated'
 alias mlh='mix local.hex'
 alias mn='mix new'
 alias mns='mix new --sup'
 alias megm='mix ecto.gen.migration'
 alias mpgc='mix phoenix.gen.channel'
 alias mpgh='mix phoenix.gen.html'
 alias mpgj='mix phoenix.gen.json'
 alias mpgm='mix phoenix.gen.model'
 alias mpgs='mix phoenix.gen.secret'
alias mpn='mix phoenix.new'
 alias mpr='mix phoenix.routes'
 alias mps='mix phoenix.server'
 alias mr='mix run'
 alias mrnh='mix run --no-halt'
 alias mrl='mix release'
 alias mt='mix test'
 alias mts='mix test --stale'
 alias mtw='mix test.watch'
 alias mx='mix xref'

 # Heroku
 alias hrmec='heroku run mix ecto.create'
 alias hrmem='heroku run mix ecto.migrate'

 # Kiex - Elixir Version Manager: https://github.com/taylor/kiex
 alias kd='kiex default'
 alias ki='kiex install'
 alias kl='kiex list'
 alias klb='kiex list branches'
 alias klk='kiex list known'
 alias klr='kiex list releases'
 alias ks='kiex shell'
 alias ksu='kiex selfupdate'
 alias ku='kiex use'

 mncd() {
 	arg="$*"
   mix new "$arg";cd "$arg";
 }


######



##### LARAVEL #######

	###VALET
	
	alias on-va='valet start'
	alias off-va='valet stop || lststop'
	alias iki='p5 && l5'
	alias p5='valet park'
	alias l5='valet link'
	alias s5='valet secure'
	alias sh5='valet share'
	alias lg5='valet logs'
	alias drv5='ls ~/.valet/Drivers'
	alias p5o='valet forget'
	alias l5u=' valet unlink'
	alias vp='valet paths'
	alias d5='valet domain'
		##### 



# Laravel5 basic command completion
_laravel5_get_command_list () {
	php artisan --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
}

_laravel5 () {
  if [ -f artisan ]; then
    compadd `_laravel5_get_command_list`
  fi
}


#Alias
alias la5='php artisan'

alias la5c='php artisan cache:clear'
alias la5r='php artisan route:list'
alias la5v='php artisan vendor:publish'

alias start='coi && la5cp'

#
###
### 						fix composer global install error , replace with CGR  ### https://github.com/consolidation/cgr ####
###
#

## npm ####

alias n='npm install'
alias nc='npm list'
alias yn='yarn install'
alias yi='yarn add'


#####
alias create='composer create-project'
alias cou='composer update'
alias coi='composer install'
alias la5k='php artisan key:generate'
alias la5m='php artisan migrate --seed'
alias la5p='php artisan passport:install'
alias la5s='php artisan db:seed'
alias la5cp='cp .env.example .env || mysql -u root'
alias co='composer'

#####


#### composer binary
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.nvm"


####


### Services OSX ######
alias on-mo="sudo brew services start mongodb"
alias on-pos="sudo brew services start postgresql"
alias on-mar="sudo brew services start mariadb"

alias lststop="sudo off-pos || off-mar || off-mo || echo 'stoped' "
alias lst="brew services list"

alias off-mo="sudo brew services stop mongodb"
alias off-pos="sudo brew services stop postgresql"
alias off-mar="sudo brew services stop mariadb"

######
##VSCODE

vs () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


####


#SET
ZSH_THEME="ys"
#plugins=(git brew composer npm)
#####

alias ops="/Volumes/32hfs+/"
alias dev="~/app"	


alias v='f -e vim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open


# want your terminal to support 256 color schemes? I do ...
export TERM="xterm-256color"

# if you do a 'rm *', Zsh will give you a sanity check!
setopt RM_STAR_WAIT

#alias njir='export THEFUCK_REQUIRE_CONFIRMATION=False; fuck; export THEFUCK_REQUIRE_CONFIRMATION=True'
#alias njer='fuck'

#alias update-fuck='pip install --user thefuck --upgrade'

#export PATH="/Applications/XAMPP/xamppfiles/bin:$PATH"

# allows you to type Bash style comments on your command line
# good 'ol Bash
setopt interactivecomments

alias udud="cd /volumes/File\ OSX" 

# Zsh has a spelling corrector
setopt CORRECT

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# ZSH CONFIG#######
alias update_zsh="upgrade_oh_my_zsh"

#plugins=(git sublime web-search)

export ZSH=~/.oh-my-zsh

source $ZSH/oh-my-zsh.sh
#######

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

#######


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias edit="nano ~/.zshrc"
alias hapus="rm ~/.zsh_history"

# setting variable


# other

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# copied from .bash_aliases 2001.07.19
# -------------------------------------------------------------------
# some alias settings, just for fun
# -------------------------------------------------------------------
#alias 'today=calendar -A 0 -f ~/calendar/calendar.mark | sort'
alias 'today=calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
alias 'dus=du -sckx * | sort -nr'
alias 'adventure=emacs -batch -l dunnet'
alias 'mailsize=du -hs ~/Library/mail'
alias 'bk=cd $OLDPWD'
alias 'ttop=top -ocpu -R -F -s 2 -n30'
alias lh='ls -a | egrep "^\."'

# -------------------------------------------------------------------
# make some commands (potentially) less destructive
# -------------------------------------------------------------------
alias 'rm=rm -i'

# -------------------------------------------------------------------
# Jboss
# -------------------------------------------------------------------
alias 'startjboss=/usr/local/jboss-4.0.5.GA/bin/run.sh &'
alias 'stopjboss=/usr/local/jboss-4.0.5.GA/bin/shutdown.sh --shutdown'

# -------------------------------------------------------------------
# Mercurial (hg)
# -------------------------------------------------------------------
alias 'h=hg status'
alias 'hc=hg commit'
alias 'push=hg push'
alias 'pull=hg pull'
alias 'clone=hg clone'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
#git_config

alias g='git'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

# leverage an alias from the ~/.gitconfig
alias gh='git hist'

# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias 'sloc=/usr/local/sloccount/bin/sloccount'

# necessary to make rake work inside of zsh
alias rake="noglob rake"

# sort files in current directory by the number of words they contain
alias 'wordy=wc -w * | sort | tail -n10'
alias 'filecount=ls -aRF | wc -l'

# -------------------------------------------------------------------
# Functions ported directly from .bashrc
# -------------------------------------------------------------------
# turn hidden files on/off in Finder
function hiddenOn() { defaults write com.apple.Finder AppleShowAllFiles YES ; }
function hiddenOff() { defaults write com.apple.Finder AppleShowAllFiles NO ; }

# postgres functions
function psqlstart() { /usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start ; }
function psqlstop() { /usr/local/pgsql/bin/pg_ctl stop ; }

# view man pages in Preview
function pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

# apache tomcat functions
function tomcatup() { /usr/local/tomcat/bin/startup.sh ; }
function tomcatdown() { /usr/local/tomcat/bin/shutdown.sh ; }

# nice mount (http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
# displays mounted drive information in a nicely formatted manner
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# myIP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

#
## new functions
#
s() { pwd > ~/.save_dir ; }
i() { cd "$(cat ~/.save_dir)" ; }
pathon() {
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
}
pathoff() {
defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder
}
quiton() {
defaults write com.apple.finder QuitMenuItem -bool YES; killall Finder
}
quitoff() {
defaults write com.apple.finder QuitMenuItem -bool NO; killall Finder
}

alias fcd="atsutil databases -remove"

disableanim() {
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
defaults write com.apple.Mail DisableSendAnimations -bool true
defaults write com.apple.Mail DisableReplyAnimations -bool true
}

dockfast() {
defaults write com.apple.Dock autohide-delay -float 0; killall Dock
defaults write com.apple.dock autohide-time-modifier -float 0.5; killall Dock
}
dockslow() {
defaults delete com.apple.Dock autohide-delay -float 0; killall Dock
defaults delete com.apple.dock autohide-time-modifier -float 0.5; killall Dock
}
enableanim() {
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool true
defaults write com.apple.Mail DisableSendAnimations -bool false
defaults write com.apple.Mail DisableReplyAnimations -bool false
}

alias p="httping -f -Q -Y"

##plugin


#
# finis

alias cls="clear"
alias txt="open -a textastic"
alias o="open -a"
alias so="sudo open -a"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



hidden(){
sudo defaults write com.apple.finder AppleShowAllFiles TRUE
}
show(){
sudo defaults write com.apple.finder AppleShowAllFiles FALSE
}

off_dasboard() {
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock
}

on_dasboard() {
defaults write com.apple.dashboard mcx-disabled -boolean NO; killall Dock
}
alias code="sublime"

PATH=$PATH:/Applications/XAMPP/xamppfiles/bin

###### function cleaner manual #####

hapus_log() {rm -Rfvdi ~/Library/Logs/}

hapus_cache() {sudo rm -Rfvdi ~/Library/}

hapus_preferpane() {sudo rm -Rfvdi ~/Library/}

hapus_state() {sudo rm -Rfvdi ~/Library/}

buka(){open ~/Library/}

private(){sudo open /private/}

log(){open ~/library/logs}

hosts() {sudo nano /etc/hosts}
cek_hosts(){cat /etc/hosts}
############

    # PATH
    #export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    #export EDITOR='subl -w'
    # export PYTHONPATH=$PYTHONPATH
    # export MANPATH="/usr/local/man:$MANPATH"

    # Virtual Environment
    #export WORKON_HOME=$HOME/.virtualenvs
    #export PROJECT_HOME=$HOME/Projects
    #source /usr/local/bin/virtualenvwrapper.sh

    # Owner
    #export USER_NAME="febritecno"
    #eval "$(rbenv init -)"

    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} }
    function r() { grep "$1" ${@:2} -R . }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_"; }

    # Aliases
    alias cpp='c++ -std=c++11 -stdlib=libc++'

    # Use sublimetext for editing config files
    alias zshconfig="subl ~/.zshrc"
    alias envconfig="subl ~/Projects/config/env.sh"


enable_debug() {
defaults write com.apple.appstore ShowDebugMenu -bool true && killall App\ Store
}
disable_debug() {
defaults write com.apple.appstore ShowDebugMenu -bool false && killall App\ Store
}

alias localhost="cd /Applications/XAMPP/htdocs"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
