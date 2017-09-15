# !/bin/bash
# $FileName: install.sh
# $Date: 15-09-2017
# $Purpose: 
# $LastModified: Fri 15 Sep 2017 02:57:21 PM CST
# $Author: Jeasine Ma [jeasinema[at]gmail[dot]com]

echo "start deployment..."
# update some file 
wget -P . git.io/.gdbinit
curl -L git.io/antigen > antigen.zsh

# build link 
ln -s $(pwd)/.zshrc ~/.
ln -s $(pwd)/antigen.sh ~/.
ln -s $(pwd)/.gdbinit ~/.
ln -s $(pwd)/.gitconfig ~/.
ln -s $(pwd)/.tmux.conf ~/.
ln -s $(pwd)/.vim ~/.
ln -s $(pwd)/.ycm_extra_conf.py ~/.
ln -s $(pwd)/.vim/.vimrc ~/.

# install plugin 
vim +PlugUpdate +PlugInstall +qall 
echo "please manually compile ycm kernel by ./install.py --clang-completer"
exec zsh 
source ~/.zshrc 
exit 
echo "done."
