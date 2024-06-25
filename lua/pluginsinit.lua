

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  -- "ThePrimeagen/harpoon",
  "fatih/vim-go",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/nvim-cmp",
  "hrsh7th/vim-vsnip",
  "morhetz/gruvbox",
  "dracula/vim",
  "joshdick/onedark.vim",
  "preservim/nerdtree",
  { "simrat39/rust-tools.nvim", requires = "neovim/nvim-lspconfig" },
  })
