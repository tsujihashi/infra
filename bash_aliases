# git
alias gcl='git clone'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gl='git log'
alias gr='gitlab-runner'
alias grs='git reset --soft HEAD^'
alias gitssh='git remote set-url origin git@github.com:tsujihashi/infra.git'
alias grmt='git remote -v'
alias gcf='git config -l'

# common
alias ll='ls -l'
alias la='ls -a'
alias lal='ls -al'
alias g='grep -dskip --no-messages'
alias gv='grep -dskip --no-messages -v'
alias e='echo'
alias his='history'
alias hn='hostname'
alias os='cat /etc/os-release'
alias brc='. ~/.bashrc'
alias bal='. ~/.bash_aliases'
alias sc='sudo systemctl'
alias scs='sudo systemctl status'
alias sclu='sudo systemctl list-units'
alias cl='clear'
alias cm='chmod'
alias cmx='chmod +x'
alias co='chown'
alias hos='cat /etc/hosts'
alias path="env|grep ^PATH=|sed 's/:/\n/g'|sed 's/PATH=//g'"
alias py='python'
alias apt='sudo apt'
alias aptl='sudo apt list'
alias aptli='sudo apt list --installed'
alias aptm='sudo apt-mark'
alias aptmm='sudo apt-mark showmanual'
alias aptma='sudo apt-mark showauto'
alias aptu='sudo apt update'
alias apti='sudo apt install'
alias udb='sudo updatedb'
alias lc='locate'

# vagrant
alias cdvg='cd ~/infra/vagrant'
alias vg='vagrant'
alias vggs='vagrant global-status'
alias vgs='vagrant status'
alias vgu='vagrant up'
alias vgh='vagrant halt'
alias vgd='vagrant destroy'

# ansible
alias cdans='cd ~/infra/ansible'
alias ahos='cat /etc/ansible/hosts'
alias viahos='vi /etc/ansible/hosts'
alias ap='ansible-playbook'
alias ap-lt='ansible-playbook --list-tasks'
alias ap-lh='ansible-playbook --list-hosts'
alias ai='ansible-inventory'
alias ai-l='ansible-inventory --list'
alias ai-g='ansible-inventory --graph'


# ssh
alias ssha='cat ~/.ssh/authorized_keys'
alias sshi='cat ~/.ssh/id_rsa.pub'

# func
function aw(){ awk -v c=$1 '{print $c}'; }
function func(){ grep function ~/.bash_aliases; }
# kube
function kc(){ CMD='kubectl'; echo '>' $CMD $*; $CMD $*; }
function kcg(){ CMD='kubectl get'; echo '>' $CMD $*; $CMD $*; }
function kcd(){ CMD='kubectl describe'; echo '>' $CMD $*; $CMD $*; }
function kcgn(){ CMD='kubectl get nodes'; echo '>' $CMD $*; $CMD $*; }
function kcgs(){ CMD='kubectl get services'; echo '>' $CMD $*; $CMD $*; }
function kcgp(){ CMD='kubectl get pods'; echo '>' $CMD $*; $CMD $*; }
function kcdn(){ CMD='kubectl describe nodes'; echo '>' $CMD $*; $CMD $*; }
function kcds(){ CMD='kubectl describe service'; echo '>' $CMD $*; $CMD $*; }
function kcdp(){ CMD='kubectl describe pod'; echo '>' $CMD $*; $CMD $*; }

#custom
alias app1='cd ~/Web/app1;uvicorn main:app'
