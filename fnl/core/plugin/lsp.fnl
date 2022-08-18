(module core.plugin.lsp
        {autoload {nvim aniseed.nvim}})

(let [(ok? mason) (pcall #(require :mason))]
  (when ok?
    (mason.setup {})))

(let [(ok? mason-lspconfig) (pcall #(require :mason-lspconfig))]
  (when ok?
    (mason-lspconfig.setup {})))

