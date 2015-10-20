ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"

# Aliases.
alias c="$HOME/code"
alias dots="c; dotfiles; gst"
alias git="nocorrect git"
alias thin="nocorrect thin"
alias gw="gulp watch"
alias a="atom"

plugins=(bower brew brew-cask git heroku npm osx postgres rails ruby vagrant)

source $ZSH/oh-my-zsh.sh

# For Homebrew to work, prepend the following to the PATH.
export PATH=/usr/local/bin:$PATH
# Note: All other environment variables are configured in System Preferences > Environment Variables,
# via EnvPane (a tool that makes terminal variables available to non-terminal apps).

# Initialise a few apps.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if which boot2docker > /dev/null; then eval "$(boot2docker shellinit 2>/dev/null)"; fi
