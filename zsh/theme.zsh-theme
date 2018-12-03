# vim: filetype=zsh
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [ $(id -u $USER) = 0 ]; then
  color=red
  dolar='#'
else
  color=blue
  dolar='$'
fi

PROMPT='%{$fg[$color]%}$USER%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} %2~ $(git_prompt_info)%{$reset_color%}$dolar '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
