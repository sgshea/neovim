local _2afile_2a = "plugin/nvim-tree.fnl"
local _2amodule_name_2a = "core.plugin.nvim-tree"
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
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
do
  local ok_3f, nvim_tree = nil, nil
  local function _1_()
    return require("nvim-tree")
  end
  ok_3f, nvim_tree = pcall(_1_)
  if ok_3f then
    nvim_tree.setup({})
  else
  end
end
return _2amodule_2a