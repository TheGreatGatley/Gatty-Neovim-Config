local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads Neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  -- general plugins
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins -- Automatically set up your configuration after cloning packer.nvim
  use "windwp/nvim-autopairs" -- Autopairs plugin for parenthese etc.
  use "kyazdani42/nvim-web-devicons" -- Gives icons used by nvimtree
  use "norcalli/nvim-colorizer.lua" -- Gives auto highlighting of hex colors in Neovim

  -- Plugins for various UI features to make Neovim more like an IDE
  use "kyazdani42/nvim-tree.lua" -- file tree inside Neovim written in lua
  use "akinsho/bufferline.nvim" -- better bufferline at the top of the window
  use "nvim-lualine/lualine.nvim" -- better statusline at the bottom of the window
  use "lukas-reineke/indent-blankline.nvim" -- gives indent guides for Neovim
  use "olimorris/onedarkpro.nvim" -- one dark pro colour scheme for Neovim / treesitter
  use "terrortylor/nvim-comment" --gives you the ability to easily toggle comment a line or a block of code

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The main completion plugin
  use "hrsh7th/cmp-buffer" -- Buffer extension for the completion plugin
  use "hrsh7th/cmp-path" -- Path extension for the completion plugin
  use "hrsh7th/cmp-cmdline" -- Command line extension for the completion plugin
  use "saadparwaiz1/cmp_luasnip" -- Snippet extension for the completion plugin
  use "hrsh7th/cmp-nvim-lsp" -- Plugin for cmp to work with nvim native lsp

  -- snippet plugins
  use "L3MON4D3/LuaSnip" -- Snippet engine
  use "rafamadriz/friendly-snippets" -- A bunch of useful snippets in a plugin

  -- lsp plugins
  use "neovim/nvim-lspconfig" -- Core plugin for neovim lsp
  use "williamboman/nvim-lsp-installer" -- Simple to use installer for new language servers

  -- telescope plugins
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"

  -- treesitter plugins
  use {
      "nvim-treesitter/nvim-treesitter", -- better syntax highlighting plugin
      run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow" -- rainbow parentheses to show depth

  -- gitsigns plugin
  use "lewis6991/gitsigns.nvim"

  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
