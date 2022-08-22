(module core.plugin.alpha
        {autoload {alpha alpha
                   nvim aniseed.nvim}})

(fn button [sc txt keybind]
  (let [sc- (: (sc:gsub "%s" "") :gsub :SPC :<leader>)
        opts {:position :center
              :text txt
              :shortcut sc
              :cursor 5
              :width 36
              :align_shortcut :right
              :hl :AlphaButtons}]
    (when keybind
      (set opts.keymap {1 :n 2 sc- 3 keybind 4 {:noremap true :silent true}}))
    {:type :button
     :val txt
     :on_press (fn []
                 (local key
                   (vim.api.nvim_replace_termcodes sc- true false true))
                 (vim.api.nvim_feedkeys key :normal false))
     : opts}))

(local customize {:header {:type :text
  :val {   1 "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ "
           2 "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ "
           3 "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ "
           4 "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ "
           5 "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ "
           6 "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ "
           7 "                                                     " }
                       :opts {:position :center :hl :AlphaHeader}}
              :buttons {:type :group
                        :val {1 (button "SPC f f" "  Find File  "
                                        ":Telescope find_files<CR>")
                              2 (button "SPC f o" "  Recent File  "
                                        ":Telescope oldfiles<CR>")
                              3 (button "SPC f w" "  Find Word  "
                                        ":Telescope live_grep<CR>")
                              4 (button "SPC b m" "  Bookmarks  "
                                        ":Telescope marks<CR>")
                              5 (button "SPC e s" "  Settings"
                                        ":e $MYVIMRC | :cd %:p:h <CR>")}
                        :opts {:spacing 1}}})

(local header-padding (vim.fn.max
                        {1 2
                         2 (vim.fn.floor
                             (* (vim.fn.winheight 0) 0.3))}))

(alpha.setup {:layout {1 {:type :padding :val header-padding}
                       2 customize.header
                       3 {:type :padding :val 2}
                       4 customize.buttons}
              :opts {}})
