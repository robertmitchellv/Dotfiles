# @robertmitchellv
#
#  ___________
# <  .zshrc   >
#  -----------
#         \   ^__^
#          \  (oo)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||

#
# oh-my-zsh generated settings:
#

# set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# see https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# change the command execution time stamp shown in the history command output.
# the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# don't be a moster; use the proper date format
HIST_STAMPS="yyyy-mm-dd"

# would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# 
# rbmv settings
#

#
# functions
#

installed() {apt list | grep -i "$1"}
bin-search() {lsa /bin/ | grep -i "$1"}
bin-usr-search() {lsa /usr/bin/ | grep -i "$1"}

clam(){clamscan -r --bell -i $1}
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

#
# path variables
#

export ZSH="/home/rbmv/.oh-my-zsh"
export PATH="/bin:/usr/bin:$PATH"
# export PATH="/usr/bin/gdal-config:$PATH"

#
# compilation flags
#

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export EDITOR="vim"

#
# personal aliases 
#

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias cd..="cd .."
alias cd../="cd ../"
alias c="clear"
alias update="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y"
alias apt-doctor="sudo apt clean && sudo apt update -m && sudo dpkg --configure -a && sudo apt install -f && sudo apt dist-upgrade && sudo apt autoremove --purge"
alias git="hub"

