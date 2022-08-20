(module core.plugin.nvim-tree
        {autoload {nvim aniseed.nvim}})

(let [(ok? nvim-tree) (pcall #(require :nvim-tree))]
  (when ok?
    (nvim-tree.setup {})))

(nvim.set_keymap :n :<leader>nt ":NvimTreeToggle<CR>" {:noremap true})
