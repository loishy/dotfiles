"" ==================================================== Initialize
let mapleader=','

" ==================================================== Plug-in
call plug#begin(expand('~/.config/nvim/plugged'))

""""""""""""""""""""""""""THEME""""""""""""""""""""""""""
Plug 'sainnhe/edge'

""""""""""""""""""""""""""SOURCE CONTROL""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
Plug 'brooth/far.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""file system""""""""""""""""""""""""""
Plug 'kevinhwang91/rnvimr'

""""""""""""""""""""""""""MOVEMENT""""""""""""""""""""""""""
Plug 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""RUBY""""""""""""""""""""""""""
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

""""""""""""""""""""""""""TOOLS""""""""""""""""""""""""""
Plug 'benmills/vimux' "Vi + Tmux
Plug 'kamykn/spelunker.vim' "Check Spell
Plug 'wincent/scalpel' "Replace Text in Buffer
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } "Markdown Preview

call plug#end()

lua require 'init'

" ==================================================== Plug-in Configuration
source ~/.config/nvim/config/abbreviations.vim
source ~/.config/nvim/config/ale.vim
source ~/.config/nvim/config/buffer.vim
source ~/.config/nvim/config/dashboard.vim
source ~/.config/nvim/config/far.vim
source ~/.config/nvim/config/folds.vim
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/lsp.vim
source ~/.config/nvim/config/lspsaga.vim
source ~/.config/nvim/config/mappingkey.vim
source ~/.config/nvim/config/options.vim
source ~/.config/nvim/config/rails.vim
source ~/.config/nvim/config/rnvimr.vim
source ~/.config/nvim/config/scalpel.vim
source ~/.config/nvim/config/spelunker.vim
source ~/.config/nvim/config/telescope.vim
source ~/.config/nvim/config/tmux.vim
source ~/.config/nvim/config/tree.vim
source ~/.config/nvim/config/wildmenu.vim
