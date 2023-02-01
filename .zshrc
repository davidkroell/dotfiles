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
alias pping=prettyping
alias cat=batcat
alias talisman=/home/dkroell/.talisman/bin/talisman_linux_amd64

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
export TALISMAN_HOME=/home/dkroell/.talisman/bin


# extend path
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
