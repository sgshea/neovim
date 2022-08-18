(module core.plugin.lualine
        {autoload {nvim aniseed.nvim}})

(let [(ok? lualine) (pcall #(require :lualine))]
  (when ok?
    (lualine.setup {})))
