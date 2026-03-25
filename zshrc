# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export ANDROID_HOME="$HOME/Library/Android/sdk"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# faster repository status checks
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which ZSH plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(asdf last-working-dir wd)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
alias ni="npm install"
alias nis="npm install --save --save-exact"
alias nid="npm install --save-dev --save-exact"

alias y="yarn"
alias yls="yarn info -A"
alias yy="yarn why"

alias b="bun"
alias bls="bun pm ls --all"
alias blsf="bls | grep -i"

# list current and latest version of an NPM package
function yv() {
  echo "current: $(yls $1 | grep "─ $1@")"
  echo "$(npm info $1 | grep latest: | sed 's/^[ \t]*/ /')"
}

function bv() {
  echo "current: $(NO_COLOR=true blsf " $1@")"
  echo "$(yarn info $1 | grep latest: | sed 's/^[ \t]*/ /')"
}

alias adb-link="adb shell am start -a android.intent.action.VIEW -d"

# update jest snapshots and commit result
alias jest-snap="yarn test --updateSnapshot && git add '**/__snapshots__/*' && git commit -m '📸'"

# run from node .bin directory
function npmbin () {
  # extract first argument (program) and spread the rest
  PROGRAM=$1
  shift
  $(npm bin)/$PROGRAM $@
}
alias nb="npmbin"

# setup plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# https://www.iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# bun completions
[ -s "/Users/giladgray/.bun/_bun" ] && source "/Users/giladgray/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
