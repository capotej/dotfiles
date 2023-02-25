alias bc='bc -l'
alias xmlpp='xmllint --format -'
alias jsonpp='python -m json.tool'
alias cm='chezmoi'
alias aliasedit='chezmoi edit '
alias vim='nvim'
alias prweb='gh pr view --web'
alias serve="myip; python -m SimpleHTTPServer"
alias myip="ifconfig | egrep -e '[0-9][0-9][0-9]\.' | grep -v '127.0.0.1'"

[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"

function bdd() {
  git for-each-ref --sort=-committerdate refs/heads/ --format='%(committerdate) %(refname:short)' | tail -r
}
function pushit() {
  git push origin $(current_branch)
}
function pullit() {
  git pull origin $(current_branch)
}

