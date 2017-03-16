parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias emacs='open -a /Applications/Emacs.app $1'
alias lm="ls -l"
alias gs="git status"
alias ga="git add -p"
