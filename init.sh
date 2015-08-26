##更新yum源
cd /etc/yum.repos.d
sudo mv CentOS-Base.repo CentOS-Base.repo.bk
sudo wget http://mirrors.163.com/.help/CentOS6-Base-163.repo

##环境配置
sudo yum install gcc.x86_64 gcc-c++.x86_64
sudo yum install vim
sudo yum install openssl-devel.x86_64
sudo yum install libtool.x86_64 libtool-ltdl.x86_64  
sudo yum install lapack.x86_64 lapack-devel.x86_64

##个人配置文件
git clone https://github.com/lozybean/myConfig.git ~/.myConfig
cp ~/.myConfig/.bashrc ~/.bashrc
git clone https://github.com/lozybean/myVimConfig.git ~/.myVimConfig
cp ~/.myVimConfig/.vimrc ~/.vimrc

##安装配置python
##numpy, scipy, matplotlib, qiime, biopython
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
pyenv install 2.7.10
pyenv global 2.7.10
pipinstall numpy
pipinstall qiime
pipinstall biopython

##安装配置perl
git clone git://github.com/tokuhirom/plenv.git ~/.plenv
git clone git://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/
plenv install 5.22.0
plenv global 5.22.0
plenv install-cpanm

##perl多线程支持
cd ~/.plenv/cache
tar xvf perl-5.22.0.tar.bz2
cd perl-5.22.0
./Configure -des -Dprefix=~/.plenv/versions/5.22.0 -Dusethreads  -Uinstalluserbinperl -Dcc=gcc
make
make install
cpanm threads



