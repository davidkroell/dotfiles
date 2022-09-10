# ------------------------------
#   OH MY ZSH
# ------------------------------

# ZSH PATH
export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="false"              # case auto-correction
HYPHEN_INSENSITIVE="true"           # hypen auto-correction
HIST_STAMPS="yyyy-mm-dd"            # command execution time stamp shown in the history command output

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 7    # auto-update every week

# PLUGINS
plugins=(direnv fzf ssh-agent zsh-autosuggestions docker)

# STARSHIP
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

# ------------------------------
#   ALIASES & FUNCTIONS
# ------------------------------

# ALIASES
alias ll='ls -lah'
alias bat=batcat
alias pping=prettyping
alias cat=bat

# FUNCTIONS
mkcd() {
  # CREATE DIRECTORY AND CHANGE INTO IT
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

# ------------------------------
#   ENVIRONMENT VARIABLES
# ------------------------------

# CHARACTER SET
export LC_ALL=en_US.UTF-8



