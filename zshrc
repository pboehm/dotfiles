. ~/.zsh/config
. ~/.zsh/aliases

. ~/.zsh/completion
. ~/.zsh/widgets
. ~/.zsh/git-prompt/zshrc.sh
. ~/.zsh/syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

# rvm-integration
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
