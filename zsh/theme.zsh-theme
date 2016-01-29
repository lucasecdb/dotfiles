# ZSH theme based on Oh My Zsh gallifrey one
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [ $USER = root ]; then
	color=red
	dolar='#'
else
	color=blue
	dolar='$'
fi

PROMPT='%{$fg[$color]%}$(whoami)%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} %2~ $(git_prompt_info)%{$reset_color%}%B$dolar%b '
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
