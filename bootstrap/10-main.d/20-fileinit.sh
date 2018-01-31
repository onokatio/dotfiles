ln -sf $CTG/config/tmux.conf ~/.tmux.conf
ln -sf $CTG/config/ssh-config ~/.ssh/config
ln -sf $CTG/config/gitconfig ~/.gitconfig
ln -sf $CTG/config/yaourtrc ~/.yaourtrc
ln -sf $CTG/config/locale.conf ~/.config/locale.conf
ln -sf $CTG/config/w3mconfig ~/.config/.w3mconfig
ln -sf $CTG/vim/vimrc ~/.vimrc
ln -sf $CTG/zsh/zshrc ~/.zshrc
#ln -sf $CTG/zsh/zshrc ~/.zshrc
echo 'export CTG=$HOME/.conf-to-git' > ~/.zprofile
echo "export MYLOCAL=$MYLOCAL" >> ~/.zprofile
echo 'source $HOME/.zprofile.local' >> ~/.zprofile
echo 'source $CTG/zsh/zprofile' >> ~/.zprofile

touch ~/.zshrc.local
#touch ~/.zprofile.local

mkdir -p $MYLOCAL/usr/share/icons
mkdir -p $MYLOCAL/usr/lib/locale
mkdir -p $MYLOCAL/tmp
mkdir -p $MYLOCAL/opt
mkdir -p $MYLOCAL/lib
mkdir -p $MYLOCAL/etc
mkdir -p $MYLOCAL/bin
mkdir -p $MYLOCAL/share
mkdir -p $MYLOCAL/local

#exec zsh -l
echo Run zsh.
