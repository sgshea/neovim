(module core.plugin.alpha
        {autoload {nvim aniseed.nvim}})

(let [(ok? alpha-nvim) (pcall #(require :alpha.themes.dashboard))]
  (when ok?
    (alpha-nvim.setup {})))
