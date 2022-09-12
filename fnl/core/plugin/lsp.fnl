(module core.plugin.lsp
        {autoload {util core.util
                   nvim aniseed.nvim}})

(defn- map [from to]
  (util.nnoremap from to))

(let [(ok? mason) (pcall #(require :mason))]
  (when ok?
    (mason.setup {})))

(let [(ok? mason-lspconfig) (pcall #(require :mason-lspconfig))]
  (when ok?
    (mason-lspconfig.setup {})))

(let [(ok? nvim-lspconfig) (pcall #(require :nvim-lspconfig))]
  (when ok?
    (nvim-lspconfig.setup {})))

(map :gd "lua vim.lsp.buf.definition()")
(map :gD "lua vim.lsp.buf.declaration()")
(map :gr "lua vim.lsp.buf.references()")
(map :gi "lua vim.lsp.buf.implementation()")
(map :K "lua vim.lsp.buf.hover()")
(map :<c-k> "lua vim.lsp.buf.signature_help()")
(map :<c-n> "lua vim.lsp.diagnostic.goto_prev()")
(map :<c-p> "lua vim.lsp.diagnostic.goto_next()")

(map :<leader>lr "lua vim.lsp.buf.rename()")
(map :<leader>lf "lua vim.lsp.buf.formatting()")
