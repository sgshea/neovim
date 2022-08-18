local _2afile_2a = "init.fnl"
local _2amodule_name_2a = "core.init"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local nvim, plugin = autoload("aniseed.nvim"), autoload("core.plugin")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["plugin"] = plugin
nvim.o.termguicolors = true
nvim.o.mouse = "a"
nvim.o.updatetime = 500
nvim.o.timeoutlen = 500
nvim.o.sessionoptions = "blank,curdir,folds,help,tabpages,winsize"
nvim.o.clipboard = "unnamedplus"
nvim.o.completeopt = "menuone,noselect"
nvim.o.ignorecase = true
nvim.o.hlsearch = true
nvim.o.showtabline = 2
nvim.o.smartindent = true
nvim.o.expandtab = true
nvim.o.shiftwidth = 4
nvim.o.tabstop = 4
nvim.o.cursorline = true
nvim.o.number = true
nvim.o.relativenumber = false
nvim.o.list = true
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
vim.notify = require("notify")
plugin.use("Olical/aniseed", {}, "Olical/conjure", {}, "nvim-lua/plenary.nvim", {}, "kyazdani42/nvim-web-devicons", {}, "nvim-telescope/telescope.nvim", {}, "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate", mod = "treesitter"}, "kyazdani42/nvim-tree.lua", {mod = "nvim-tree"}, "tpope/vim-dispatch", {}, "clojure-vim/vim-jack-in", {}, "radenling/vim-dispatch-neovim", {}, "williamboman/mason.nvim", {branch = "main"}, "williamboman/mason-lspconfig.nvim", {}, "neovim/nvim-lspconfig", {mod = "lsp"}, "hrsh7th/cmp-nvim-lsp", {}, "hrsh7th/cmp-buffer", {}, "hrsh7th/cmp-path", {}, "hrsh7th/cmp-cmdline", {}, "hrsh7th/nvim-cmp", {mod = "cmp"}, "L3MON4D3/LuaSnip", {}, "saadparwaiz1/cmp_luasnip", {}, "rcarriga/nvim-dap-ui", {mod = "dap", requires = {{"mfussenegger/nvim-dap"}}}, "stevearc/dressing.nvim", {}, "goolord/alpha-nvim", {mod = "alpha"}, "lukas-reineke/indent-blankline.nvim", {}, "p00f/nvim-ts-rainbow", {}, "sainnhe/gruvbox-material", {mod = "gruvbox"}, "romgrk/barbar.nvim", {mod = "barbar"}, "nvim-lualine/lualine.nvim", {mod = "lualine"}, "rcarriga/nvim-notify", {}, "folke/which-key.nvim", {mod = "which-key"}, "guns/vim-sexp", {}, "tpope/vim-sexp-mappings-for-regular-people", {}, "tpope/vim-repeat", {}, "tpope/vim-surround", {}, "ggandor/leap.nvim", {}, "andweeb/presence.nvim", {}, "lewis6991/impatient.nvim", {}, "wbthomason/packer.nvim", {})
return _2amodule_2a