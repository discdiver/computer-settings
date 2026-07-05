# Git shortcuts
alias gs="git status"          # Check the status of the repository
alias ga="git add"             # Add files to staging
alias gaa="git add --all"      # Add all changes to staging
alias gc="git commit -m"       # Commit with a message
alias gca="git commit --amend" # Amend the last commit
alias gp="git push"            # Push changes to the remote repository
alias gpo="git push origin"    # Push to a specific origin
alias gpl="git pull"           # Pull changes from the remote repository
alias gco="git checkout"       # Switch branches or restore files
alias gcb="git checkout -b"    # Create and switch to a new branch
alias gb="git branch"          # List branches
alias gba="git branch -a"      # List all branches (local and remote)
alias gl="git log --oneline --graph --decorate" # Pretty log
alias gd="git diff"            # Show changes between commits or working tree
alias gds="git diff --staged"  # Show changes in the staged area
alias gr="git remote -v"       # See remotes
alias grs="git restore --staged" # Unstage files
alias gstash="git stash"       # Stash changes
alias gstashp="git stash pop"  # Apply and drop the latest stash
alias gcl="git clone"          # Clone a repository
alias greset="git reset --hard" # Reset to the last commit (destructive)
alias gundo="git reset HEAD~1" # Undo the last commit (keep changes)
alias gpo="git push origin " 
alias gpom="git push origin main"
alias gfo="git fetch origin "
alias gmom="git merge origin/main" 
alias gcm="git commit -m "

# create and activate uv venv
alias uvdo="uv init & source .venv/bin/activate" # Create and activate a virtual environment

# Reload .zprofile
alias reload="source ~/.zprofile && source ~/.zshrc" # Reload .zprofile and .zshrc

# Set default editor for Git
export GIT_EDITOR="code --wait" # Use VS Code as the default Git editor
eval "$(/opt/homebrew/bin/brew shellenv)"