(module core.plugin.barbar
        {autoload {nvim aniseed.nvim}})

;; Move to previous/next
(nvim.set_keymap :n "<A-,>" "<Cmd>BufferPrevious<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-.> "<Cmd>BufferNext<CR>" {:noremap true :silent true})
;; Reorder
(nvim.set_keymap :n :<A-<> "<Cmd>BufferMovePrevious<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A->> "<Cmd>BufferMoveNext<CR>" {:noremap true :silent true})
;; Goto
(nvim.set_keymap :n :<A-1> "<Cmd>BufferGoto 1<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-2> "<Cmd>BufferGoto 2<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-3> "<Cmd>BufferGoto 3<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-4> "<Cmd>BufferGoto 4<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-5> "<Cmd>BufferGoto 5<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-6> "<Cmd>BufferGoto 6<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-7> "<Cmd>BufferGoto 7<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-8> "<Cmd>BufferGoto 8<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-9> "<Cmd>BufferGoto 9<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-0> "<Cmd>BufferGoto 0<CR>" {:noremap true :silent true})
;; Close buffer
(nvim.set_keymap :n :<A-c> "<Cmd>BufferClose<CR>" {:noremap true :silent true})
;; Magic buffer-pick
(nvim.set_keymap :n :<A-p> "<Cmd>BufferPick<CR>" {:noremap true :silent true})
;; Sort automatically
(nvim.set_keymap :n :<Space>bb "<Cmd>BufferOrderByBufferNumber<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<Space>bd "<Cmd>BufferOrderByDirectory" {:noremap true :silent true})
(nvim.set_keymap :n :<Space>bl "<Cmd>BufferOrderByLanguage<CR>" {:noremap true :silent true})
