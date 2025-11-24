### Configuration
bindkey -e
export EDITOR="nvim"

### Path Sources
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.atuin/bin:$PATH"
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

export NVM_DIR="$HOME/.nvm"
export PHPENV_ROOT="/home/basicent/.phpenv"
. "$HOME/.cargo/env"

### Starship Prompt
eval "$(starship init zsh)"

### Packages
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

### Zinit
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


### Zinit Packages
zinit light-mode for \
	zdharma-continuum/zinit-annex-as-monitor \
	zdharma-continuum/zinit-annex-bin-gem-node \
	zdharma-continuum/zinit-annex-patch-dl \
	zdharma-continuum/zinit-annex-rust

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light hlissner/zsh-autopair

### Version Managers

# Node Version Manager
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PHP Version Manager
if [ -d "${PHPENV_ROOT}" ]; then
  export PATH="${PHPENV_ROOT}/bin:${PATH}"
  eval "$(phpenv init -)"
fi

### Aliases
alias art="php artisan"
alias srvc="sudo systemctl"

