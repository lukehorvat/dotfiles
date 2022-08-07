ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"

# Aliases.
alias c="$HOME/code"
alias dots="c; dotfiles; gst"
alias git="nocorrect git"
alias m="make"
alias b="if [[ -f Makefile ]]; then make build; else npm run build; fi"
alias s="if [[ -f Makefile ]]; then make start; else npm start; fi"
alias t="if [[ -f Makefile ]]; then make test; else npm test; fi"

plugins=(brew git npm macos postgres)

source $ZSH/oh-my-zsh.sh

# For Homebrew to work, prepend the following to the PATH.
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# Note: All other environment variables are configured in System Preferences > Environment Variables,
# via EnvPane (a tool that makes terminal variables available to non-terminal apps).

# Initialise a few apps.
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
if which docker-machine > /dev/null; then eval "$(docker-machine env default)"; fi
