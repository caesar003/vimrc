# .vimrc configuration

After quite awhile playing around with a couple of configuration, I now am satisfied with current minimal setup for developing nodejs applications. 

### Clone [vim-plug](https://github.com/junegunn/vim-plug.git)

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### keep your current configuration, not required but recommended

```sh
cp ~/.vimrc ~/.vimrc_back
```

```sh
mkdir -p ~/.vim/ 
git clone https://github.com/caesar003/vimrc.git ~/.vim/init
ln -s ~/.vim/init/init.vimrc .vimrc 
```



