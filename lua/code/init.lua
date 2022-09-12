local _2afile_2a = "/home/sammy/.config/nvim/fnl/code/init.fnl"
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
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
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
nvim.o.shell = "zsh"
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
plugin.use("Olical/aniseed", {}, "Olical/conjure", {}, "nvim-lua/plenary.nvim", {}, "folke/which-key.nvim", {mod = "which-key"}, "guns/vim-sexp", {}, "tpope/vim-sexp-mappings-for-regular-people", {}, "tpope/vim-repeat", {}, "tpope/vim-surround", {}, "ggandor/leap.nvim", {}, "andweeb/presence.nvim", {}, "lewis6991/impatient.nvim", {}, "wbthomason/packer.nvim", {})
return _2amodule_2a