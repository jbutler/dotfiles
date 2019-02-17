call plug#begin(expand('$VIM_BUNDLE_DIR'))
    " general
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-sleuth'
    Plug 'tpope/vim-repeat'

    " git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

    " go
    Plug 'fatih/vim-go'
    Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

    " navigation, productivity
    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'terryma/vim-multiple-cursors'

    " completion
    Plug 'roxma/nvim-yarp' " Required for ncm2
    Plug 'ncm2/ncm2'
    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-tmux'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-go'

    " ui, syntax highlighting
    Plug 'altercation/vim-colors-solarized'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " python
    Plug 'klen/python-mode'

call plug#end()
