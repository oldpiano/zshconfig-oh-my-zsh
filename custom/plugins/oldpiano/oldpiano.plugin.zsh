# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-plugins

alias sll='sudo ls -AlF --color '
alias grep='grep -I --colour=always '
alias zgrep='zgrep -I --colour=always '
alias lsop='sudo lsof -nP -i | grep LISTEN'
alias lss='ss -tunlp'
alias psgrep='ps aux | grep -i '
alias hgrep='history | grep -i '
alias pst='pstree -aAUhnlp'
alias du1='sudo du -h -d 1 | sort -h'
alias via='vim ~/.oh-my-zsh/lib/alias'
alias c='cat '
alias v='vim '
alias vv='sudo vim '
alias t='tail -f '
alias zc="vim ~/.zshrc"

function frm() {
  if [[ $# -eq 2 ]]; then
    name=$2
    op=$1
  else
    name=$1
    op="-i"
  fi

  find . -name "$name"
  find . -name "$name" -exec rm $op {} \;
}

alias sc-log='journalctl -f -u '
alias sc-daemon='sudo systemctl daemon-reload'
alias ns='sudo netstat -antp'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

