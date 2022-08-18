(module core.plugin.dap
        {autoload {nvim aniseed.nvim}})

(let [(ok? dapui) (pcall require :dapui)]
  (when ok?
    (dapui.setup)
    (vim.api.nvim_set_keymap
      :n
      "<leader>dt"
      ":lua require('dapui').toggle()<cr>"
      {})))
