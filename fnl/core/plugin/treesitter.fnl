(module dotfiles.plugin.treesitter)

(let [(ok? treesitter) (pcall require :nvim-treesitter.configs)]
  (when ok?
    (treesitter.setup
      {:indent {:enable true}
       :highlight {:enable true}
       :rainbow {:enable true}})))
