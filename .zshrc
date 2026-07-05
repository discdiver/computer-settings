# Enable prompt substitution
setopt prompt_subst

# Show current directory and one level up
short_pwd() {
  if [[ "$PWD" == "$HOME" ]]; then
    echo "~"
  else
    local dir="${PWD/#$HOME/~}"  # replace home with ~
    echo "$dir" | awk -F/ 'NF>1 {print $(NF-1) "/" $NF}'
  fi
}

# Show Git branch
parse_git_branch() {
  local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n "$branch" ]] && echo "[${branch}]"
}

# Set the prompt
PROMPT='$(short_pwd) %F{green}$(parse_git_branch)%f: '



. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Antigravity
export PATH="/Users/jeffhale/.antigravity/antigravity/bin:$PATH"
