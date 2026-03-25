# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

# faster repository status checks
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which ZSH plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git last-working-dir wd)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

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
alias yabo="yarn bootstrap"
alias ycc="yarn clean && yarn compile"
alias yls="yarn list --pattern"
alias ylr="yarn lerna run"

alias tsc="$(npm bin)/tsc"

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

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
