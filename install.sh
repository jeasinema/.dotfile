
verlte() {
    [  "$1" = "$(echo -e "$1\n$2" | sort -V | head -n1)" ]
}

verlt() {
    [ "$1" = "$2" ] && return 1 || verlte $1 $2
}

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
verlte 2.9 $(tmux -V | awk '{print $2}')  &&  ln -nsf $(pwd)/.tmux.conf.3x ~/.tmux.conf || ln -nsf $(pwd)/.tmux.conf.2x ~/.tmux.conf
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
echo "Please install xclip to allow copy-paste in tmux, ex. sudo apt install xclip"
echo 
echo "done."

# for macOS
# omf install yimmy
