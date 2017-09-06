# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/adexandros/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="awesomepanda"

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
 export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zsh="nano ~/.zshrc"
 alias g="git"
# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

# alias ohmyzsh="mate ~/.oh-my-zsh"

alias Mclear='rm -rf pub/static/*; rm -rf var/di; rm -rf var/cache/*; rm -rf var/generation/*; rm -rf var/page_cache*; rm -rf var/view_preprocessed/*; bin/magento cache:clean; tput bel;'
alias MdeployGB='rm -rf pub/static/*; rm -rf var/di; rm -rf var/cache/*; rm -rf var/generation/*; rm -rf var/page_cache/*; rm -rf var/view_preprocessed/*; bin/magento setup:static-content:deploy en_GB; bin/magento cache:clean; tput bel;'
alias deployOnly='deployOnly() {
    rm -rf pub/static/*;
    rm -rf var/
    rm -rf var/cache/*;
    rm -rf var/
    rm -rf var/
    rm -rf var/view_preprocessed/*;
    bin/magento setup:static-content:deploy --area frontend --theme $1 -l $2;
    bin/magento cache:clean;
    tput bel;
 }'
alias sites='cd ~/sites'
alias mrun='php n98-magerun.phar'
alias mruninstall='wget https://files.magerun.net/n98-magerun.phar; chmod +x ./n98-magerun.phar;'
alias mdeploy='bin/magento setup:static-content:deploy en_GB en_US'
alias gruntgo='grunt exec; grunt less; grunt watch;'
alias gmf='git merge --no-ff'

PHP_VERSION=`ls /Applications/MAMP/bin/php/ | sort -n | tail -1`export PATH=/Applications/MAMP/bin/php/php7.0.13/bin:$PATH
export PATH=$PATH:/Applications/MAMP/Library/bin

