# Gatty-Neovim-Config
My personal Neovim configuration which I use for most development work. It has several plugins, with relevant lua files, for adding additional IDE like functionality such as treesitter for syntax highlighting, nvim-tree for a file tree and nvim-cmp for code completion. 

## Installation
* To install you first need Neovim installed. You can find guides online for how to install Neovim with different package managers or for building Neovim from source. 
* Once you have Neovim installed, move the nvim folder into your ~/.config directory if you do not already have an nvim folder inside the directory, or replace it if one exists already. 
* Then, run the command ":PackerSync" inside Neovim to ensure the plugins are installed. 
* Lastly, run the command ":LspInstallInfo" inside Neovim and choose the language servers you want to install (some languages may depend on other programs being installed for purposes such as unzipping, this you will have to resolve yourself by ensuring the necessary programs / packages are installed) 

## Plugin List
This is a list of the main plugins used in this config. Some other plugins are installed, but they will not be mentioned either due to the fact they make a minor difference or due to the fact they are only used due to being a dependency.

* Packer: used to manage plugins
* Bufferline: provides a more useful bufferline at the top of the window
* Lualine: provides a more useful statusline at the bottom that shows the current mode, the number of errors, the number of warnings and several other useful pieces of information
* Indent-blankline: provides guides for showing indents and what sections of code are on the same indent as other sections
* onedarkpro: the colorscheme used within this config, changes are made to it and can be found in the onedark.lua file
* Nvim-comment: provides keybindings for quickly and easily commenting and uncommenting sections of code 
* Nvim-tree: provides as a file tree that can be used within Neovim to easily access other files. Can be toggled with Ctrl-n
* Nvim-autopairs: used for automatically inserting a closing parenthese, brace, bracket etc. 
* Nvim-colorizer: used for displaying color codes as their respective color, useful as a preview for css
* Nvim-cmp : provides autocompletion capabilities 
* Nvim-lsp-config : provides language server protocol support inside Neovim
* Nvim-treesitter: provides better quality syntax highlighting
* Nvim-ts-rainbow: provides different colour parentheses etc. to show depth
* Telescope: provides a fuzzy finder inside Neovim
* Gitsigns: allows you to see what you have modified and added to a file that is inside a Git repository


