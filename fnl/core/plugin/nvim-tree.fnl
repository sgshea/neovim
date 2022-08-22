(module core.plugin.nvim-tree
        {autoload {nvim aniseed.nvim
                   nvim-tree nvim-tree}})

(nvim-tree.setup)

(nvim.set_keymap :n :<leader>nt ":NvimTreeToggle<CR>" {:noremap true})
