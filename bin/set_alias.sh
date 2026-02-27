BINDIR=$(dirname ${BASH_SOURCE})

cp -p ~/.bash_aliases ~/.bash_aliases.bk

cp -p "${BINDIR}/../bash_aliases" ~/.bash_aliases
