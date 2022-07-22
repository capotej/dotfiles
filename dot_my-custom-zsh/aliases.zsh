function mkcd() {
	mkdir -p $1
	cd $1
}
alias bc='bc -l'
alias xmlpp='xmllint --format -'
alias jsonpp='python -m json.tool'
alias cm='chezmoi'
alias aliasedit='chezmoi edit '
alias vim='nvim'
alias prweb='gh pr view --web'


function bdd() {
  git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate) %(refname:short)' | tac | tail
}

function raw_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

alias serve="myip; python -m SimpleHTTPServer"
alias myip="ifconfig | egrep -e '[0-9][0-9][0-9]\.' | grep -v '127.0.0.1'"

# git
alias checkout="git checkout "
alias fetch="git fetch "
alias co="git checkout "
alias dcommit="git svn dcommit "
alias gpos="git push origin staging"
alias gpod="git push origin dev"
alias gde="git diff | $EDITOR"
alias ga="git commit --amend"
alias gcs="git checkout staging"
alias gcm="git checkout master"
alias gc="git commit -am "
alias commit="git commit"
alias pull="git pull"
alias push="git push"
alias pom="git push origin master"
alias po="git pull origin "
alias psh="git push origin "
alias pp="pull origin master && push origin master"

function pushit() {
  git push origin $(raw_git_branch)
}

function pullit() {
  git pull origin $(raw_git_branch)
}

alias rebase="git rebase"
alias add="git add "
alias branch="git branch "
alias stash="git stash "
alias status="git status "
alias s="git status "
alias init="git init "
alias merge="git merge "
alias mt="git mergetool "
alias fuckit="git reset --hard"
alias back="co -"

function gca() {
	git commit -a -m "$*"
}
