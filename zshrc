ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Aliases.
alias git="nocorrect git"
alias thin="nocorrect thin"

plugins=(brew git heroku npm osx postgres rails ruby sublime)

source $ZSH/oh-my-zsh.sh

# For Homebrew to work, prepend the following to the PATH.
export PATH=/usr/local/bin:$PATH
# Note: All other environment variables are configured in System Preferences > Environment Variables,
# via EnvPane (an app that makes terminal variables available to non-terminal programs).

# Load rbenv.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
