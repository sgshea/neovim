local _2afile_2a = "plugin/lsp.fnl"
local _2amodule_name_2a = "core.plugin.lsp"
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
  local ok_3f, mason = nil, nil
  local function _1_()
    return require("mason")
  end
  ok_3f, mason = pcall(_1_)
  if ok_3f then
    mason.setup({})
  else
  end
end
do
  local ok_3f, mason_lspconfig = nil, nil
  local function _3_()
    return require("mason-lspconfig")
  end
  ok_3f, mason_lspconfig = pcall(_3_)
  if ok_3f then
    mason_lspconfig.setup({})
  else
  end
end
return _2amodule_2a