# https://github.com/robbyrussell/oh-my-zsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bower coffee git-completion last-working-dir npm osx sublime sudo wd zsh-syntax-highlighting)

# User configuration

export JAVA_7_HOME=$(/usr/libexec/java_home -F -v1.7)
export JAVA_8_HOME=$(/usr/libexec/java_home -F -v1.8)
export JAVA_HOME=${JAVA_8_HOME}

export PATH=$HOME/bin:/usr/local/bin:$JAVA_HOME/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# edit config files
# launch VSCode and reuse last opened window
alias zshconfig="code -r ~/.zshrc"
alias gitconfig="code -r ~/.gitconfig"
alias ohmyzsh="code -r ~/.oh-my-zsh"

# git
alias g="git"
alias gst="g st"
alias gstat="g status"
alias g-="g stash"
alias g_="g stash pop"
alias gclean="git branch --merged | grep -v \"\*\" | xargs -n 1 git branch -d"

# node
alias bis="bower install --save"
alias bid="bower install --save-dev"
alias ni="npm install"
alias nis="npm install --save --save-exact"
alias nid="npm install --save-dev --save-exact"

alias tsc="$(npm bin)/tsc"

killgulp () {
  kill -9 $(ps aux | grep '[g]ulp' | awk '{print $2}')
}
alias kg="killgulp"

# palantir
alias gw="./gradlew"
alias launch="./scripts/runOnCustomDispatch.sh -h eu-develop.code33.yojoe.local -p 3280 --parallel"

export PALANTIR_JAVA_HOME=$JAVA_HOME
source /usr/local/dev-env/bin/profile

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
