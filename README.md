
## Neovim Configuration
* packer.nvim plugin management in lua
### Major plugins
* nvim-tree for file stuff
* 	spc-n-t to toggle
* nvim-treesitter for better highlighting
* barbar for the top bufferline
* vim-fugitive for git
* telescope for fuzzy finding
* 	spc-f-f for files
* lualine for the bottom statusbar
* alpha-nvim for start dashboard
* presence for discord integration (status)
* nvim-web-devicons for the icon integration
* which-key to help remember keybindings
* nvim-notify for fancy notifications

#### lsp/completion
* mason.nvim to configure lsp, dap, linters, formatters
*   Use :mason or edit lsp.lua to configure
*   Currently have lua, java, clojure, and c configured
* nvim-cmp for completion
* 	cmp-nvim-lsp
* 	cmp-buffer
* 	cmp-path
* 	cmp-cmdline
* LuaSnip for snippets
* 	cmp_luasnip

#### barbar
* top bufferline
* move between using ALT-, and ALT-.

#### Conjure
This neovim conjuration includes plugins to also work with the Clojure language!
Uses the localleaderkey ","
* Conjure for interactive development (REPL)
* 	`:Lein` to start a REPL
* 	`, c f` to connect to a REPL, or open a Clojure file
* 	`, l v` to close the log window
* 	`, l v` for a vertical split between code and REPL
* 	`, l h` for a horizontal split between code and REPL
* 	`, e b` evaluate current buffer
* 	`, e f` evaluate code in the file
* 	`, e e` evaluate current expression
* 	`, e r` evaluate top level form
* 	`, e !` evaluate current form and replace with result
