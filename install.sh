# !/bin/bash
# $FileName: install.sh
# $Date: 15-09-2017
# $Purpose: 
# $LastModified: Fri Sep 15 15:55:41 2017
# $Author: Jeasine Ma [jeasinema[at]gmail[dot]com]

echo "start deployment..."
echo 

# checkout some submodule manually
git clone https://github.com/jeasinema/vim-config
mv vim-config .vim

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
# tmux source 
tmux source ~/.tmux.conf

exit 
exit 
echo 
echo "done."
