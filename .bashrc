if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -z "$PS1" ]; then
   return
fi

#PS1='\h:\W \u\$ '
PS1='\[\e[1;35m\][\[\e[1;33m\]\u@ \[\e[1;31m\]\w\[\e[1;35m\]]\[\e[1;36m\]\$ \[\e[0m\]'

alias vi="vim";
alias ls="ls -G";
alias ll="ls -l";
alias les="less -S";

alias pipinstall="pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com";

alias login0="ssh liangzb@183.247.166.83 -p 9100";

export PYENV_ROOT="$HOME/.pyenv"
export PLENV_ROOT="$HOME/.plenv"
export RVM_ROOT="$HOME/.rvm"

export PATH=$RVM_ROOT/bin:$PYENV_ROOT/bin:$PLENV_ROOT/bin:$PATH

export LD_LIBRARY_PATH="/usr/local/include:$LD_LIBRARY_PATH"

eval "$(pyenv init -)"
eval "$(plenv init -)"
