# Powerlevel10k instant prompt. Keep this block near the top.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh base setup.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Keep plugin list lean to reduce startup time and avoid conflicts.
plugins=(
  git
  sudo
  fzf
  z
  extract
  docker
  python
  pip
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# History defaults.
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory sharehistory hist_ignore_dups hist_ignore_all_dups hist_reduce_blanks hist_verify

# Optional local integrations.
[[ -f "$HOME/.fzf.zsh" ]] && source "$HOME/.fzf.zsh"
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# -------------------------------------------------
# Aliases
# -------------------------------------------------
# Navigation and shell
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -l --color=auto'
alias la='ls -la --color=auto'
alias lt='ls -lh --color=auto'
alias tree='tree -C'
alias c='clear'
alias h='history 1'
alias v='vim'
alias n='nano'

# Docker (v2 syntax)
alias d='docker'
alias dc='docker compose'
alias dcup='docker compose up -d'
alias dcdown='docker compose down'
alias dcps='docker compose ps'
alias dclogs='docker compose logs -f'
alias dcbuild='docker compose build'

# Git custom aliases (do not conflict with plugin aliases)
alias gbm='git branch -M main'
alias gup='git pull --rebase --autostash'

# Python
alias py='python3'
alias pip='pip3'
alias venv='python3 -m venv'
alias tests='pytest'

# System
alias update='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y'
alias logs='journalctl -xe'

# -------------------------------------------------
# External function files
# -------------------------------------------------
typeset -g ZSH_CONFIG_ROOT="${${(%):-%N}:A:h}"
for fn_file in "$ZSH_CONFIG_ROOT"/functions/*.zsh(.N); do
  source "$fn_file"
done