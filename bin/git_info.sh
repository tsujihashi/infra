function echoexe(){
  echo "> $@"; "$@"; echo ""
}

echoexe git branch -av
echoexe git status
echoexe git remote -v
echoexe git config --global user.email
echoexe git config --global user.name
echoexe git log --oneline --graph --all --decorate \
--pretty=format:"%h %ad %an %s" --date=short
