ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

alias git="nocorrect git"
alias ras="rails s"
alias rac="rails c"
alias rdb="rails db"
alias thin="nocorrect thin"

plugins=(git ruby rails osx brew sublime postgres)

source $ZSH/oh-my-zsh.sh

# For Homebrew to work, prepend the following to the PATH.
export PATH=/usr/local/bin:$PATH
# Note: All other environment variables are configured in System Preferences > Environment Variables,
# via EnvPane (an app that makes terminal variables available to non-terminal programs).

# Load rbenv.
eval "$(rbenv init -)"
