# !/bin/bash
# $FileName: install.sh
# $Date: 15-09-2017
# $Purpose: 
# $LastModified: Fri 15 Sep 2017 03:04:00 PM CST
# $Author: Jeasine Ma [jeasinema[at]gmail[dot]com]

echo "start deployment..."
# update some file 
wget -P . git.io/.gdbinit
curl -L git.io/antigen > antigen.zsh

# build link 
mkdir -p ~/bundle  
rm .vim/bundle
ln -nsf ~/bundle $(pwd)/.vim/.

ln -nsf $(pwd)/.zshrc ~/.
ln -nsf $(pwd)/antigen.sh ~/.
ln -nsf $(pwd)/.gdbinit ~/.
ln -nsf $(pwd)/.gitconfig ~/.
ln -nsf $(pwd)/.tmux.conf ~/.
ln -nsf $(pwd)/.vim ~/.
ln -nsf $(pwd)/.ycm_extra_conf.py ~/.
ln -nsf $(pwd)/.vim/.vimrc ~/.

# install plugin 
vim +PlugUpdate +PlugInstall +qall 
echo "please manually compile ycm kernel by ./install.py --clang-completer"
exec zsh 
source ~/.zshrc 
exit 
echo "done."
