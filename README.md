# .vimrc configuration

Welcome to my Vim configuration tailored for developing Node.js applications. After experimenting with various setups, I've settled on this minimal configuration that suits my needs.


1. Clone [vim-plug](https://github.com/junegunn/vim-plug.git)
   
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Backup your current configuration (optional but recommended):

```sh
mv ~/.vimrc ~/.vimrc_back
```

3. Set up the new configuration:
   
```sh
mkdir -p ~/.vim/ 
git clone https://github.com/caesar003/vimrc.git ~/.vim/init
ln -s ~/.vim/init/init.vimrc .vimrc 
```

4. Install the packages

- run vim
```sh
vim
```

you might get few errors here, but ignore those and proceed with `:PlugInstall`

**Note**: If you encounter issues, consult the documentation of individual plugins and ensure that all requirements are met.
