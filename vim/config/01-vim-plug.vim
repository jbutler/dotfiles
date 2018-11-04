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

    " navigation, productivity
    Plug 'easymotion/vim-easymotion'
    Plug 'terryma/vim-multiple-cursors'

    " ui, syntax highlighting
    Plug 'altercation/vim-colors-solarized'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
