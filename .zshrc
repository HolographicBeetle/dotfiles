autoload -U colors && colors
autoload -Uz compinit && compinit

setopt PROMPT_SUBST
setopt ignore_eof

source "$HOME/.utils.sh"

newline=$'\n'
PROMPT='╭ %B%{$fg[green]%}%n@%m %{$fg[blue]%}%~ %{$fg[yellow]%}%{$reset_color%}${newline}╰ > '

zstyle :compinstall filename '/home/ineptus/.zshrc'
compinit
