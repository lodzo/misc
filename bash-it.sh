#! /bin/bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --none
sed -i -e "/export BASH_IT_THEME/s/^.*$/export BASH_IT_THEME='doubletime_multiline'/" ~/.bashrc
