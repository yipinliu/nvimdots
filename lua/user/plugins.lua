local fn = vim.fn

-- Automatically install lazyNvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    return
end

-- Install your plugins here
local plugins = {

    "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
    "nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
    "kyazdani42/nvim-web-devicons",
    "kyazdani42/nvim-tree.lua",
    "nvim-lualine/lualine.nvim",
    "arkav/lualine-lsp-progress",
    "akinsho/bufferline.nvim",
    "akinsho/toggleterm.nvim",
    "folke/which-key.nvim",
    "Pocco81/auto-save.nvim",
    'simrat39/symbols-outline.nvim',

    -- Color schemes --
    'navarasu/onedark.nvim',

    -- cmp plugins
    "hrsh7th/nvim-cmp",      -- The completion plugin
    "hrsh7th/cmp-buffer",    -- buffer completions
    "hrsh7th/cmp-path",      -- path completions
    "hrsh7th/cmp-cmdline",   --cmdline completions
    "saadparwaiz1/cmp_luasnip", -- snippet completions
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",

    -- snippets
    "L3MON4D3/LuaSnip",  -- snippet engine
    "rafamadriz/friendly-snippets", -- a bunch of snippets to use

    -- LSP
    "neovim/nvim-lspconfig", -- enable LSP
    "williamboman/nvim-lsp-installer", -- simple to use language server installer
    "glepnir/lspsaga.nvim",

    -- Telescope
    "nvim-telescope/telescope.nvim",
    "stevearc/dressing.nvim",

    "mrjones2014/legendary.nvim",
    -- Git
    "lewis6991/gitsigns.nvim",

    -- tree-sitter
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
    },
    "p00f/nvim-ts-rainbow",
    "windwp/nvim-autopairs",

    "numToStr/Comment.nvim",
}

lazy.setup(plugins)
