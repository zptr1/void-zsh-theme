echo "\e[34m$(whoami)\e[35m@\e[34m$(hostname)\e[0m"

PROMPT="$FG[236]${(l:COLUMNS::⎯:)}%f
"
RPROMPT="%~%f"

enter() {
  OLD_PROMPT="$PROMPT"
  PROMPT="$FG[240]"
  zle reset-prompt
  PROMPT="$OLD_PROMPT"
  zle accept-line
}

setopt TRANSIENT_RPROMPT
zle -N enter
bindkey "^M" enter
bindkey "^C" enter
bindkey "^Z" enter