local _2afile_2a = "plugin/alpha.fnl"
local _2amodule_name_2a = "core.plugin.alpha"
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
  local ok_3f, alpha_nvim = nil, nil
  local function _1_()
    return require("alpha.themes.dashboard")
  end
  ok_3f, alpha_nvim = pcall(_1_)
  if ok_3f then
    alpha_nvim.setup({})
  else
  end
end
return _2amodule_2a