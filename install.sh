# !/bin/bash
# $FileName: install.sh
# $Date: 15-09-2017
# $Purpose: 
# $LastModified: Fri Sep 15 15:55:41 2017
# $Author: Jeasine Ma [jeasinema[at]gmail[dot]com]

echo "start deployment..."
echo 
# update submodule 
git submodule sync
git submodule update
git submodule foreach git checkout HEAD 
git submodule foreach git pull 

# checkout some submodule manually
cd .vim 
git checkout HEAD 
cd ..

# update some file 
curl -L  git.io/.gdbinit  > .gdbinit
curl -L git.io/antigen > antigen.zsh

# build link 
mkdir -p ~/bundle  
rm .vim/bundle
ln -nsf ~/bundle $(pwd)/.vim/.

ln -nsf $(pwd)/.zshrc ~/.
ln -nsf $(pwd)/antigen.zsh ~/.antigen.zsh 
ln -nsf $(pwd)/.gdbinit ~/.
ln -nsf $(pwd)/.gitconfig ~/.
ln -nsf $(pwd)/.tmux.conf ~/.
ln -nsf $(pwd)/.vim ~/.
ln -nsf $(pwd)/.ycm_extra_conf.py ~/.
ln -nsf $(pwd)/.vim/.vimrc ~/.

# install plugin 
vim +PlugUpdate +PlugInstall +qall 
echo 
echo "please manually compile ycm kernel by ./install.py --clang-completer"
echo 
exec zsh 
source ~/.zshrc 
# remove redundent file 
rm ~/.antigen/.zcompdump*
rm ~/.zcompdump*
exec zsh 
exit 
exit 
echo 
echo "done."
