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
alias cpanm="cpanm --mirror http://mirrors.163.com/cpan --mirror-only"

alias login0="ssh liangzb@183.247.166.83 -p 9100";

# set pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# set plenv
export PLENV_ROOT="$HOME/.plenv"
export PATH=$PLENV_ROOT/bin:$PATH
eval "$(plenv init -)"

# set rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

export LD_LIBRARY_PATH="/usr/local/include:$LD_LIBRARY_PATH"
