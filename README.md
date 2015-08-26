# myConfig
some config of bash and other soft

1. pyenv install:
	relies: make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm

	1. git clone git://github.com/yyuu/pyenv.git ~/.pyenv
	
	2. then set as .bashrc

	3. use source of douban:  pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com (or set as .bashrc)

2. plenv install:

	1. git clone git://github.com/tokuhirom/plenv.git ~/.plenv	
	2. git clone git://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/
	3. set as .bashrc
	4. plenv install-cpanm

	5. use source of neteasy : cpanm --mirror http://mirrors.163.com/cpan --mirror-only

3. rbenv install:
	
	1. git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
	2. git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build/
	3. set as .bashrc
	4. git clone git://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
	5. git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update
	

3. R install:
	
	wget -c http://mirror.bjtu.edu.cn/cran/src/base/R-3/R-3.1.3.tar.gz
	tar zxvf R-3.1.3.tar.gz
	cd R-3.1.3
	./configure --prefix=./  --with-blas --with-lapack --enable-R-shlib --enable-BLAS-shlib
	make
	make install
