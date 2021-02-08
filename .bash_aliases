#functions

gwip(){
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


#php

alias lserve="php -S localhost:8000 -t public"



#laravel alias
alias a="php artisan"    
alias serve="php artisan serve"
alias par:l='php artisan route:list'
alias pam='php artisan migrate'
alias pam:r='php artisan migrate:refresh'
alias pam:rs='php artisan migrate:refresh --seed'
alias tinker='php artisan tinker'
alias pcntrl='php artisan make:controller '
alias pmodel='php artisan make:model '
alias pmig='php artisan make:migration '
alias pmid='php artisan make:middleware '
alias ppolicy='php artisan make:policy '


#phpunit alias
alias p="vendor/bin/phpunit"
alias pf="vendor/bin/phpunit --filter "
alias pg="vendor/bin/phpunit --group "
alias test='vendor/bin/phpunit'
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


#docker alias
alias d='docker'
alias dc='docker-compose'
alias dm='docker-machine'

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


#alias
alias which="alias"

#mysql
alias db="mysql -u root"
alias dbcreate='function _dbcreate(){ mysql -u root -e "create database $1"; };_dbcreate'


#python







#django
alias dserver="py manage.py runserver"
alias dapp="py manage.py startapp "
alias dmigration="py manage.py makemigrations "
alias dmigrate="py manage.py migrate"
alias dshell="py manage.py shell"
alias dcreatesuperuser="py manage.py createsuperuser"
