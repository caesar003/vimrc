# .vimrc configuration

**Important Note:**

> This Vim configuration is tailored to my specific needs and preferences, optimized for developing Node.js applications. I've intentionally omitted popular plugins like [coc.vim](https://github.com/neoclide/coc.nvim) or [ale](https://github.com/dense-analysis/ale), which offer features like autocomplete and linting at the expense of increased complexity and resource usage.
> 
> Instead, this configuration prioritizes speed and simplicity, focusing on leveraging Vim's native capabilities to enhance productivity. By forgoing certain advanced features and language servers running in the background, I've aimed to enforce a "Vim-centric" approach to coding, emphasizing efficient text editing and navigation.
> 
> While this setup may lack some modern conveniences, such as advanced autocompletion and real-time linting, it offers a lightweight and responsive environment for writing JavaScript projects. Users are encouraged to evaluate their own workflow and requirements before incorporating elements of this configuration into their own setup.
> 
> Remember, the essence of Vim lies in its flexibility and extensibility. Feel free to experiment and customize this configuration to better suit your individual needs and preferences. And if you're new to Vim or have questions about specific aspects of this setup, don't hesitate to me reach out for assistance.


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
ln -s ~/.vim/init/init.vimrc ~/.vimrc 
```

4. Install the packages

- run vim
```sh
vim
```

you might get few errors here, but ignore those and proceed with `:PlugInstall`

**Note**: If you encounter issues, consult the documentation of individual plugins and ensure that all requirements are met.
