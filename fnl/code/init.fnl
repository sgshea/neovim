;; Shortened config for use when vscode-neovim is detected
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
;; General Plugins
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
