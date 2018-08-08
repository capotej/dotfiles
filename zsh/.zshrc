export PATH="$HOME/.rbenv/bin:$HOME/go/bin:$PATH:/usr/local/bin"
export SBT_OPTS=-XX:MaxPermSize=256M
export LSCOLORS='xx'
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CLICOLOR=1
export TERM=xterm-256color
export EDITOR='atom --wait'

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  [[ -s /usr/share/autojump/autojump.sh ]] && . /usr/share/autojump/autojump.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# c-x c-e line editing
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line


bindkey -e
bindkey '^R' history-incremental-search-backward

# automatic url escaping
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# history stuff
HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

setopt hist_ignore_dups     # ignore duplication command history list
setopt hist_ignore_all_dups
setopt share_history        # share command history data
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY # write history only when closing
setopt EXTENDED_HISTORY # add more info
setopt pushdsilent

function prompt_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


autoload colors; colors

# prompt
setopt prompt_subst
PROMPT='%~ %{$fg_bold[green]%}$(prompt_git_branch)→ %{$reset_color%}'

# syntax highlight
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# added by travis gem
[ -f /Users/julio/.travis/travis.sh ] && source /Users/julio/.travis/travis.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
