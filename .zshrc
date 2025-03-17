export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"

# Aliases.
alias c="code"
alias git="nocorrect git"
alias m="make"
alias b="if [[ -f Makefile ]]; then make build; else npm run build; fi"
alias s="if [[ -f Makefile ]]; then make start; else npm start; fi"
alias t="if [[ -f Makefile ]]; then make test; else npm test; fi"

plugins=(brew git npm macos postgres)

source $ZSH/oh-my-zsh.sh

# Initialise a few apps.
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi
