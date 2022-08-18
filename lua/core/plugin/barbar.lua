local _2afile_2a = "plugin/barbar.fnl"
local _2amodule_name_2a = "core.plugin.barbar"
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
local nvim, util = autoload("aniseed.nvim"), autoload("core.util")
do end (_2amodule_locals_2a)["nvim"] = nvim
_2amodule_locals_2a["util"] = util
local function map(from, to)
  return util.nnoremap(from, to)
end
_2amodule_locals_2a["map"] = map
return _2amodule_2a