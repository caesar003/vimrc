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

5. Enhance Navigation with Vim's Native Tag Support (Optional)

If you want to further improve your navigation experience within Vim, you can utilize Vim's native tag support along with ctags. This allows you to quickly jump to function or variable definitions within your codebase.

1.  Install ctags:  
    Ensure you have ctags installed on your system. You can usually install it using your package manager. For example, on Ubuntu, you install it with:
    ```sh
    sudo apt install ctags
    ```
2.  Generate tags for your project:  
    Navigate to your project directory and generate a tags file using ctags. This tags file will contain information about the structure of your codebase.

    ```sh
    ctags -R .
    ```

    You may also add language-specific flags to the ctags command for better tag generation. For example, for JavaScript projects, you might add the `--javascript-kinds=+cf` flag to include functions and classes. Please refer to the documentation for ctags or language-specific plugins for more information on customizing tag generation.

3.  Configure Vim to use the tags file:  
    In the `.vimrc` file, you'll find a line similar to the following:

    ```vim
    set tags=./tags,tags;$HOME
    ```

    This line tells vim where to find the tags file. Here's what each part of the line does:

    - `set tags`: This command sets the value of the `'tags'` option, which specifies the file or files to be used for tag searching
    - `./tags`: This specifies that Vim should look for a `tags` file in the current directory.
    - `tags;$HOME`: This specifies that Vim should also look for a `tags` file in the home directory.

4.  Navigate using tags:  
     Now, within Vim, you can navigate to function or variable definitions by placing your cursor over the identifier and pressing `CTRL + ]`. This will jump to the definition. Use `CTRL + i` to jump back to where you were. Additionally you can use `:tag` command followed by the name of the tag to jump to a specific tag

**Note**: If you encounter issues, consult the documentation of individual plugins and ensure that all requirements are met.
