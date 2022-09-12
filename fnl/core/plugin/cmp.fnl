(module config.plugin.cmp
  {autoload {nvim aniseed.nvim}})

(let [(ok? cmp) (pcall require :cmp)]
  (when ok?
    (cmp.setup
      {:sources [{:name "conjure"}
                 {:name "nvim_lsp"}
                 {:name "buffer"}
                 {:name "path"}
                 {:name "cmdline"}
                 {:name "luasnip"}]
       :mapping (cmp.mapping.preset.insert
                  {"<C-b>" (cmp.mapping.scroll_docs -4)
                   "<C-f>" (cmp.mapping.scroll_docs 4)
                   "<C-Space>" (cmp.mapping.complete)
                   "<C-e>" (cmp.mapping.abort)
                   "<CR>" (cmp.mapping.confirm {:select true})})})))
