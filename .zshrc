ZSH_THEME="robbyrussell"
plugins=(git)

export PATH=/usr/local/bin:$HOME/bin:$HOME/Dropbox/bin:/usr/local/sbin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export EDITOR="subl -w"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

alias zshrc="subl ~/.zshrc"
alias src="source ~/.zshrc"
alias pryrc="subl ~/.pryrc"
alias show="subl ."
alias cdd="cd .."
alias g="github"
alias ge="gel exec"
alias reset-gel="rm -rf ~/.local/gel ~/.cache/gel ~/.config/gel"
alias be="bundle exec"
alias o="overmind"
alias con="overmind connect"
alias up="overmind s"
alias rs="bin/rails s"
alias rc="bin/rails c"
alias r4="bin/rails s -p 4000"
alias spec="bin/rspec"
alias setup="bin/setup"

alias start_localhost="ruby -run -e httpd -- -p 5000 ."
alias serve3000="ruby -run -ehttpd . -p3000"
alias serve5000="ruby -run -ehttpd . -p5000"
alias serve8000="ruby -run -ehttpd . -p8000"

alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias python='python3'
alias idontcare="git reset . && git co . && git clean -fd"

# Git
alias gti="git"
alias wip="git add . && git commit -m 'WIP'"
alias dewip="git reset --soft HEAD~1"
alias gl='git log --color --oneline --graph'
alias rebasewm="git fetch origin && git rebase origin/master && bundle"
alias grb2='git rebase -i HEAD~2'
alias grb3='git rebase -i HEAD~3'
alias grb4='git rebase -i HEAD~4'
alias grb5='git rebase -i HEAD~5'
alias grb6='git rebase -i HEAD~6'
alias grb7='git rebase -i HEAD~7'
alias grb8='git rebase -i HEAD~8'
alias grb9='git rebase -i HEAD~9'
alias grb10='git rebase -i HEAD~10'
alias grb11='git rebase -i HEAD~11'
alias grb12='git rebase -i HEAD~12'
alias grb13='git rebase -i HEAD~13'
alias grb14='git rebase -i HEAD~14'
alias grb15='git rebase -i HEAD~15'
alias grb20='git rebase -i HEAD~20'
alias grb24='git rebase -i HEAD~24'
alias grb25='git rebase -i HEAD~25'
alias grb30='git rebase -i HEAD~30'
alias grb34='git rebase -i HEAD~34'
alias grb40='git rebase -i HEAD~40'
alias grb50='git rebase -i HEAD~50'
alias grb100='git rebase -i HEAD~100'
alias grb185='git rebase -i HEAD~185'
alias grb120='git rebase -i HEAD~120'

br() {
  git checkout $(git branch --format '%(refname:short)' | fzf --layout=reverse)
}
