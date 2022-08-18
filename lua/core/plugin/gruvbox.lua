local _2afile_2a = "plugin/gruvbox.fnl"
local _2amodule_name_2a = "core.plugin.gruvbox"
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
nvim.g.gruvbox_material_background = "medium"
nvim.ex.colorscheme("gruvbox-material")
return _2amodule_2a