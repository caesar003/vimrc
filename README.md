# .vimrc configuration

**Important Note:**

> This Vim configuration is tailored to my specific needs and preferences, optimized for developing Node.js applications. I've intentionally omitted popular plugins like [coc.vim](https://github.com/neoclide/coc.nvim) or [ale](https://github.com/dense-analysis/ale), which offer features like autocomplete and linting at the expense of increased complexity and resource usage.
>
> Instead, this configuration prioritizes speed and simplicity, focusing on leveraging Vim's native capabilities to enhance productivity. By forgoing certain advanced features and language servers running in the background, I've aimed to enforce a "Vim-centric" approach to coding, emphasizing efficient text editing and navigation.
>
> While this setup may lack some modern conveniences, such as advanced autocompletion and real-time linting, it offers a lightweight and responsive environment for writing JavaScript projects. You are highly encouraged to evaluate your own workflow and requirements before incorporating elements of this configuration into your own setup.
>
> Remember, the essence of Vim lies in its flexibility and extensibility. Feel free to experiment and customize this configuration to better suit your individual needs and preferences. And if you're new to Vim or have questions about specific aspects of this setup, don't hesitate to reach me out for assistance.

Welcome to my Vim configuration tailored for developing Node.js applications. After experimenting with various setups, I've settled on this minimal configuration that suits my needs.

## Clone [vim-plug](https://github.com/junegunn/vim-plug.git)

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Backup your current configuration (optional but recommended):

```sh
mv ~/.vimrc ~/.vimrc_back
```

## Set up the new configuration:

```sh
mkdir -p ~/.vim/
git clone https://github.com/caesar003/vimrc.git ~/.vim/init
ln -s ~/.vim/init/init.vimrc ~/.vimrc
```

## Install the packages by running Vim

```sh
vim
```

you might get few errors here, but ignore those and proceed with `:PlugInstall`

## Enhance Navigation with Vim's Native Tag Support (Optional)

If you want to further improve your navigation experience within Vim, you can utilize Vim's native tag support along with ctags. This allows you to quickly jump to function or variable definitions within your codebase.

### Install ctags:

Ensure you have ctags installed on your system. You can usually install it using your package manager. For example, on Ubuntu, you install it with:

```sh
sudo apt install ctags
```

### Generate tags for your project:

Navigate to your project directory and generate a tags file using ctags. This tags file will contain information about the structure of your codebase.

```sh
ctags -R .
```

You may also add language-specific flags to the ctags command for better tag generation. For example, for JavaScript projects, you might add the `--javascript-kinds=+cf` flag to include functions and classes. Please refer to the documentation for ctags or language-specific plugins for more information on customizing tag generation.

### Configure Vim to use the tags file:

In the `.vimrc` file, you'll find a line similar to the following:

```vim
set tags=./tags,tags;$HOME
```

This line tells Vim where to find the tags file. Here's what each part of the line does:

- `set tags`: This command sets the value of the `'tags'` option, which specifies the file or files to be used for tag searching
- `./tags`: This specifies that Vim should look for a `tags` file in the current directory.
- `tags;$HOME`: This specifies that Vim should also look for a `tags` file in the home directory.

### Navigate using tags:

Now, within Vim, you can navigate to function or variable definitions by placing your cursor over the identifier and pressing `CTRL + ]`. This will jump to the definition. Use `CTRL + i` to jump back to where you were. Additionally you can use `:tag` command followed by the name of the tag to jump to a specific tag

## Additional Consideration: Building Vim from Source for Enhanced Compatibility and Features

When setting up your Vim environment, it's worth noting that there could be compatibility issues if you're using pre-built packages from package managers like `sudo apt install vim`. Certain plugins may require additional support or features that are not included in these pre-built packages.

Moreover, features such as clipboard integration are often unavailable in pre-built Vim packages. By building Vim from source, you can ensure compatibility with plugins that require extra support and enable additional features like clipboard integration.

Here are step-by-step I took when I built my installation

### Ensure you have what it needs to build programs from source.

```sh
sudo apt update && sudo apt upgrade -y
sudo apt install build-essential
sudo apt-get build-dep vim # this one is important
```

### Clone The repository

```sh
git clone https://github.com/vim/vim ~/vim-repo
cd ~/vim-repo
```

### Configure Vim

```sh
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.11/config-3.11-x86_64-linux-gnu/ \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-cscope \
            --enable-gtk2-check \
            --with-x \
            --with-compiledby="caesar003 - github.com/caesar003" \
            --prefix=$PREFIX
```

Note: Change `--with-compiledby` to your own name or identifier.

### Build and install Vim:

```sh
make VMRUNTIMEDIR=/usr/share/vim/vim9
sudo make install
```

**Note**: If you encounter issues, consult the documentation of individual plugins and ensure that all requirements are met.
