(module core.init
        {autoload {plugin core.plugin
                   nvim aniseed.nvim}})

;; Contains generic configurations and all plugins
;; Some helper functions in plugin.fnl
(nvim.set_keymap :n :<space> :<nop> {:noremap true})

(set nvim.o.termguicolors true) ;; set term gui colors
(set nvim.o.mouse "a")  ;; allow mouse to be used
(set nvim.o.updatetime 500)
(set nvim.o.timeoutlen 500)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")
(set nvim.o.clipboard "unnamedplus")  ;; access to system clipboard
(set nvim.o.completeopt "menuone,noselect") ;; completion
(set nvim.o.ignorecase true) ;; ignore case in searches
(set nvim.o.hlsearch true) ;; highlight all matches on search pattern
(set nvim.o.showtabline 2) ;; always show tabs
(set nvim.o.smartindent true) ;; smart
(set nvim.o.expandtab true) ;; convert tabs to spaces
(set nvim.o.shiftwidth 4) ;; numver spaces for each indentation
(set nvim.o.tabstop 4)  ;; spaces for each tab
(set nvim.o.cursorline true) ;; highlight current line
(set nvim.o.number true) ;; numbered lines
(set nvim.o.relativenumber false) ;; relative numbered lines
(set nvim.o.list true)

;; shell
(set nvim.o.shell "zsh")

;; Mappings
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

(plugin.use
;; Required
            :Olical/aniseed {} ;; Fennel
            :Olical/conjure {} ;; Lisps
;; Large/Important Plugins
            :nvim-lua/plenary.nvim {}
            :kyazdani42/nvim-web-devicons {:mod :devicons}
            :nvim-telescope/telescope.nvim {:mod :telescope} ;; telescope fuzzy finder
            :nvim-treesitter/nvim-treesitter {:run ":TSUpdate" :mod :treesitter} ;; treesitter
            :kyazdani42/nvim-tree.lua {:mod :nvim-tree} ;; file explorer
            :akinsho/toggleterm.nvim {:mod :toggleterm}
            :chipsenkbeil/distant.nvim {:mod :distant} ;; remote plugin
;; Languages and completion
            :tpope/vim-dispatch {}
            :clojure-vim/vim-jack-in {}
            :radenling/vim-dispatch-neovim {}
            :williamboman/mason.nvim {:branch "main"} ;; lsp, dap, linter config
            :williamboman/mason-lspconfig.nvim {} ;; use command "Mason"
            :neovim/nvim-lspconfig {:mod :lsp}
            :hrsh7th/cmp-nvim-lsp {}
            :hrsh7th/cmp-buffer {}
            :hrsh7th/cmp-path {}
            :hrsh7th/cmp-cmdline {}
            :hrsh7th/nvim-cmp {:mod :cmp} ;; completion
            :L3MON4D3/LuaSnip {} ;; snippets
            :saadparwaiz1/cmp_luasnip {}
            :folke/trouble.nvim {:mod :trouble}
;; Debugging
            :rcarriga/nvim-dap-ui {:mod :dap :requires [[:mfussenegger/nvim-dap]]}

;; Appearance
            :goolord/alpha-nvim {:mod :alpha}
            :stevearc/dressing.nvim {}
            :lukas-reineke/indent-blankline.nvim {}
            :p00f/nvim-ts-rainbow {} ;; rainbow brackets
            :sainnhe/gruvbox-material {:mod :themes} ;; gruvbox colorscheme
            :romgrk/barbar.nvim {:mod :barbar} ;; top bufferline
            :nvim-lualine/lualine.nvim {:mod :lualine} ;; statusline
            :lewis6991/gitsigns.nvim {:mod :gitsigns}
;; General Plugins
            :rcarriga/nvim-notify {} ;; fancy notifications
            :folke/which-key.nvim {:mod :which-key} ;; helps with keybindings
            :guns/vim-sexp {}
            :tpope/vim-sexp-mappings-for-regular-people {}
            :tpope/vim-repeat {} ;; repeat for plugins '.'
            :tpope/vim-surround {}
            :ggandor/leap.nvim {} ;; enhanced motion
            :andweeb/presence.nvim {} ;; discord integration
            :lewis6991/impatient.nvim {} ;; makes startup fast

            ;; Packer
            :wbthomason/packer.nvim {}
            )
