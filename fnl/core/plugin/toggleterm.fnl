(module core.plugin.toggleterm
  {autoload {toggleterm toggleterm
             nvim aniseed.nvim}})

(toggleterm.setup {:size (fn [t]
                     (if (= t.direction "horizontal")
                         15
                         (= t.direction "vertical")
                         (* vim.o.columns 0.4)))
                   :direction "vertical"
                   :shade_terminals true
                   })

(nvim.set_keymap :n :<leader>ot "<cmd>ToggleTerm direction=horizontal<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>oT "<cmd>ToggleTerm direction=vertical<CR>" {:noremap true})

;; lazygit integration


