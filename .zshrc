# 人類最低限zshrc
autoload -U compinit; compinit
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt histignorealldups
setopt always_last_prompt
setopt complete_in_word
setopt IGNOREEOF
export LANG=ja_JP.UTF-8
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz colors
colors
alias l='ls -ltr --color=auto'
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
PROMPT="%(?.%{${fg[red]}%}.%{${fg[red]}%})%n${reset_color}@${fg[blue]}%m${reset_color} %~ %# "


# vim
export VISUAL='/usr/bin/vim'

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gcloud
if [ -f '/Users/shukawai/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/shukawai/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/shukawai/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/shukawai/google-cloud-sdk/completion.zsh.inc'; fi

# xonsh起動
alias x='xonsh'
x
