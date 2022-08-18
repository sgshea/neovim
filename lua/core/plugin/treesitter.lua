local _2afile_2a = "plugin/treesitter.fnl"
local _2amodule_name_2a = "dotfiles.plugin.treesitter"
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
do
  local ok_3f, treesitter = pcall(require, "nvim-treesitter.configs")
  if ok_3f then
    treesitter.setup({indent = {enable = true}, highlight = {enable = true}, rainbow = {enable = true}})
  else
  end
end
return _2amodule_2a