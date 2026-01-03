# ─────────────────────────────────────────────
# alias
# ─────────────────────────────────────────────
alias ls="ls --color=auto -lhF"
# ─────────────────────────────────────────────
# zoxide
# ─────────────────────────────────────────────
eval "$(zoxide init --cmd cd zsh)"
alias find="fd"
# ─────────────────────────────────────────────
# Git
# ─────────────────────────────────────────────
alias gc="git commit -m"
alias gp="git push origin HEAD"
alias gpu="git pull origin"
alias gadd="git add"
# ─────────────────────────────────────────────
# nvim
# ─────────────────────────────────────────────
export EDITOR=/opt/homebrew/bin/nvim
alias vi="nvim"
alias cl="clear"
# ─────────────────────────────────────────────
# autosuggestions
# ─────────────────────────────────────────────
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=1
bindkey '^R' fzf-history-widget
# ─────────────────────────────────────────────
# FZF core
# ─────────────────────────────────────────────
export FZF_DEFAULT_OPTS="
  --layout=reverse
  --height=40%
  --margin=1
  --padding=1
  --info=inline
  --prompt='❯ '
  --pointer='➜'
  --marker='✓'
  --ansi
  --cycle
  --bind=ctrl-j:down,ctrl-k:up
  --color=bg:#0A0A0A,bg+:#161B22,fg:#ECE7E8,fg+:#ECE7E8
  --color=hl:#58A6FF,hl+:#58A6FF
  --color=info:#8B949E,prompt:#58A6FF,pointer:#58A6FF
  --color=marker:#3FB950,spinner:#A371F7,header:#8B949E
"
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

export FZF_CTRL_T_OPTS="\
--preview \"bat --style=numbers --color=always --line-range :300 {} 2>/dev/null || sed -n '1,300p' {}\""

export FZF_ALT_C_OPTS="
  --preview 'eza --tree --level=2 --color=always {} 2>/dev/null
             || tree -C -L 2 {}'
"

export FZF_CTRL_R_OPTS="
  --prompt='󰄉 History ❯ '
  --preview 'echo {}'
  --preview-window=down:3:wrap
"

export FZF_TMUX=1
export FZF_TMUX_OPTS='-p 80%,60%'

# ─────────────────────────────────────────────
# FZF keybindings (Homebrew)
# ─────────────────────────────────────────────
source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"
source "$(brew --prefix)/opt/fzf/shell/completion.zsh"

# ─────────────────────────────────────────────
# tmux (AFTER fzf is ready)
# ─────────────────────────────────────────────
if [[ -z "$TMUX" ]] && [[ "$TERM_PROGRAM" == "ghostty" ]]; then
  tmux attach || tmux new
fi
# ─────────────────────────────────────────────
# bun
# ─────────────────────────────────────────────
# bun completions
[ -s "/Users/soufiane/.bun/_bun" ] && source "/Users/soufiane/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# ─────────────────────────────────────────────
# starship (ALWAYS LAST)
# ─────────────────────────────────────────────
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
