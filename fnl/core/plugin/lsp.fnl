(module core.plugin.lsp
        {autoload {util core.util}})

(defn- map [from to]
  (util.nnoremap from to))

(let [(ok? lsp) (pcall require :lspconfig)]
  (when ok?
    (lsp.clojure_lsp.setup {})
    (lsp.sumneko_lua.setup {})
    (lsp.clangd.setup {})
    (lsp.cmake.setup {})
    (lsp.pyright.setup {})
    (lsp.zk.setup {})

    (map :gd "lua vim.lsp.buf.definition()")
    (map :gD "lua vim.lsp.buf.declaration()")
    (map :gr "lua vim.lsp.buf.references()")
    (map :gi "lua vim.lsp.buf.implementation()")
    (map :K "lua vim.lsp.buf.hover()")
    (map :<c-k> "lua vim.lsp.buf.signature_help()")
    (map :<c-n> "lua vim.lsp.diagnostic.goto_prev()")
    (map :<c-p> "lua vim.lsp.diagnostic.goto_next()")

    (map :<leader>lr "lua vim.lsp.buf.rename()")
    (map :<leader>lf "lua vim.lsp.buf.formatting()")))

(let [(ok? mason) (pcall #(require :mason))]
  (when ok?
    (mason.setup {:ensure_installed [;;formatter
                                     :clang-format
                                     ;; lsp
                                     :clangd
                                     :clojure-lsp
                                     :lua-language-server
                                     :pyright
                                     :zk]})))
