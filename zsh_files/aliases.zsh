# Easier navigation
#alias ..='cd ..'
#alias ...='cd ../..'
#alias ....='cd ../../..'
#alias .....='cd ../../../..'

alias wq='clear'
alias b='brew'
alias cp='cp -r'
alias rm='rm -rf'
#Use coreutils ls
alias ls='gls --color'
alias ll='gls -ltr --color'
alias lla='gls -ltrA --color'
alias lss='gls -lA --color | grep "^l"'
alias lsd='gls -lA --color | grep "^d"'
alias grep="grep --color"
alias wq="clear"
alias svi="sudo vim"
alias ci='vim'
alias vo='vim'
alias vu='vim'


###########
# GIT STUFF#
############

alias g='git'
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout'
alias gr='git remote -v'
alias gp='git pull --rebase'
alias gu='git pull --rebase && git push'
alias got='git'
alias get='git'
# Undo a 'git push'
alias undopush='git push -f origin HEAD^:master'

# Empty the Trash on all mounted values and the main HDD. Then clear the useless sleepimage
alias emptytrash=' \
    sudo rm -rfv /Volumes/*/.Trashes; \
    rm -rfv ~/.Trash/* \
    sudo rm -v /private/var/vm/sleepimage; \
    rm -rv \"/Users/dkelly/Library/Application Support/stremio/Cache\" \
'

# Update installed Ruby gems, Homebrew, npm and their installed packages
alias brew_update='brew -v update; brew upgrade --force-bottle; brew cleanup --prune-prefix; brew doctor'

# Speedtest
alias speedtest="curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"

# Personal
# Locations
alias dot="cd ~/Dan/My\ Documents/dotFiles/personal/"
alias docs="cd ~/Dan/My\ Documents/"
alias repo="cd ~/Dan/Intergamma/repos/"

#Terraform/Terragrunt
alias tgg="terragrunt get -update"
alias tgp="terragrunt plan"
alias tga="terragrunt apply"
alias tgd="terragrunt destroy"
alias tgaa="terragrunt apply -auto-approve"
alias tgda="terragrunt destroy -auto-approve"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfaa="terraform apply -auto-approve"
alias tfd="terraform destroy"
alias tfda="terraform destroy -auto-approve"
