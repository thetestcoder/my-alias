#functions

# just IMP
alias myexternalip="curl ipinfo.io/ip"


#php

alias lserve="php -S localhost:8000 -t public"

# basic

alias xterm="/usr/bin/deepin-terminal"
alias current="open ."
alias home="open ~"



#laravel alias
alias a="php artisan"    
alias pa="php artisan"    
alias pserve="php artisan serve"
alias eserver="php artisan serve --host=0.0.0.0"
alias par:l='php artisan route:list'
alias pam='php artisan migrate'
alias pam:r='php artisan migrate:refresh'
alias pam:rs='php artisan migrate:refresh --seed'
alias tinker='php artisan tinker'
alias pctrl='php artisan make:controller '
alias pmodel='php artisan make:model '
alias pmig='php artisan make:migration '
alias pmid='php artisan make:middleware '
alias ppolicy='php artisan make:policy '
alias pest='php artisan test '
alias pestf='php artisan test --filter '


#phpunit alias
alias p="vendor/bin/phpunit"
alias pf="vendor/bin/phpunit --filter "
alias pg="vendor/bin/phpunit --group "
alias test='vendor/bin/phpunit'
alias testreport='php -dxdebug.mode=coverage vendor/bin/phpunit --coverage-clover=reports/coverage/coverage.html --coverage-html=reports/coverage'
alias phpunit='vendor/bin/phpunit'


#composer alias
alias cdo="composer dump-autoload -o"
alias cu='composer update'
alias ci='composer install'
alias cr='composer require '

#vagrant alias
alias vs='vagrant suspend'
alias vssh='vagrant ssh'


#git alias
alias g='git'
alias gs='git status'
alias gp="git push"
alias wip=gwip
alias gpo="git push origin "
alias gpull="git pull"
alias gswitch="git switch "
alias gco="git checkout "
alias gcl="git clone"
alias ga='git add'
alias gaa='git add .'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

alias commit=gcommit


#docker alias
alias d='sudo docker'
alias dc='docker-compose'
alias dcd='sudo docker compose down'
alias dcup='sudo docker compose up -d'
alias dm='sudo docker-machine'
alias dps='sudo docker ps'
alias dbash=dockerbash
alias dphp='sudo docker exec -it php /bin/bash'
alias dsail=dockerPhpExec
alias dpt=dockerPhpExecPhpUnit
alias dpf=dockerPhpExecPhpUnitFilter
alias dusk=dockerPhpExecDusk
alias ddownall='sudo docker stop $(sudo docker ps -a -q)'
alias drmall='sudo docker rm -f $(sudo docker ps -a -q)'

#npm 
alias n='npm'
alias ni='npm install'
alias nr='npm run'
alias nw='npm run watch'
alias nd='npm run dev'
alias nprod='npm run prod'


#vuejs
alias vc="vue create "
alias vs="vue serve"
alias va="vue add"

#nuxtjs
alias nrun="npm run dev"
alias ninstall="npm init nuxt-app "


#ssh
alias ssh_dir='cd ~/.ssh/'
alias myssh='cat ~/.ssh/id_ed25519.pub'

#alias
alias which="alias"


#python



#django
alias dserver="py manage.py runserver"
alias dapp="py manage.py startapp "
alias dmigration="py manage.py makemigrations "
alias dmigrate="py manage.py migrate"
alias dshell="py manage.py shell"
alias dcreatesuperuser="py manage.py createsuperuser"



# helpers
alias ..="cd .."


function gwip(){
    commitMessage="$1"
    branchName="$2"
    if [ "$commitMessage" = "" ]; then
        commitMessage="--WIP--"
    fi
    if ["$branchName" = ""]; then
        branchName="master"
    fi
    git add .
    eval "git commit -a -m '${commitMessage}'"
    eval "git push origin '${branchName}'"
}

function gcommit(){
    commitMessage="$1"
    if [ "$commitMessage" = "" ]; then
        commitMessage="--WIP--"
    fi
    git add .
    eval "git commit -a -m '${commitMessage}'"
}


function dockerbash(){
    container_id="$1"
    eval "reset && sudo docker exec -it '${container_id}' /bin/bash"
}

function dockerPhpExec(){
    command_string="'$*'"
    eval "reset && sudo docker exec php '${command_string}'"
}

function dockerPhpExecPhpUnit(){
    command_string="'$*'"
    eval "reset &&  sudo docker exec php php artisan test --colors=always '${command_string}'"
}


function dockerPhpExecPhpUnitFilter(){
    command_string="'$*'"
    eval "reset && sudo docker exec php php artisan test --colors=always --filter '${command_string}'"
}

function dockerPhpExecDusk(){
    eval "reset && sudo docker exec php php artisan dusk --colors=always"
}
