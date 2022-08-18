(module core.plugin.barbar
        {autoload {util core.util
                   nvim aniseed.nvim}})

;; Move to previous/next
(nvim.set_keymap :n :<A-,> ":BufferPrevious<cr>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-.> ":BufferNext<cr>" {:noremap true :silent true})
;; Reorder
(nvim.set_keymap :n :<A-<> ":BufferMovePrevious<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A->> ":BufferMoveNext<CR>" {:noremap true :silent true})
;; Goto
(nvim.set_keymap :n :<A-1> ":BufferGoto 1<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-2> ":BufferGoto 2<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-3> ":BufferGoto 3<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-4> ":BufferGoto 4<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-5> ":BufferGoto 5<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-6> ":BufferGoto 6<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-7> ":BufferGoto 7<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-8> ":BufferGoto 8<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-9> ":BufferGoto 9<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<A-0> ":BufferGoto 0<CR>" {:noremap true :silent true})
;; Close buffer
(nvim.set_keymap :n :<A-c> ":BufferClose<CR>" {:noremap true :silent true})
;; Magic buffer-pick
(nvim.set_keymap :n :<A-p> ":BufferPick<CR>" {:noremap true :silent true})
;; Sort automatically
(nvim.set_keymap :n :<Space>bb ":BufferOrderByBufferNumber<CR>" {:noremap true :silent true})
(nvim.set_keymap :n :<Space>bd ":BufferOrderByDirectory" {:noremap true :silent true})
(nvim.set_keymap :n :<Space>bl ":BufferOrderByLanguage<CR>" {:noremap true :silent true})
