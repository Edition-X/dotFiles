#  _____    _
# |__  /___| |__  _ __ ___
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__
# /____|___/_| |_|_|  \___|
# Attaches to a tmux session if one exists, otherwise creates one
TMUX="$(tmux a 2>&1)"; if [ $TMUX = "no sessions" ]; then tmux new -s "Intergamma | Work Space" -n "Playground"; else tmux a; fi
export TERM=xterm-256color
export EDITOR=vim
## If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
## Vars for Powerlevel theme
DEFAULT_USER=dkelly
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon custom_internet_signal custom_battery_status_joined ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  time)
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} \uf155 %f%F{green}%k\ue0b0%f "
POWERLEVEL9K_DIR_HOME_BACKGROUND='mediumpurple3'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='darkorange'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep nomatch notify autopushd
unsetopt extendedglob
unsetopt HIST_VERIFY
bindkey -e

source /Users/dkelly/antigen.zsh
source /Users/dkelly/.aliases.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle common-aliases
antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme steeef  # Similar to bash profile

antigen apply

