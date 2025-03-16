" Basic configuration
set number	 
set linebreak	 
set showbreak=+++ 	 
set textwidth=100	 
set showmatch	 
set hlsearch	 
set smartcase	 
set ignorecase	 
set incsearch	 
set autoindent	 
set shiftwidth=4	 
set smartindent	 
set smarttab	 
set softtabstop=4	 
set ruler	 
set undolevels=2000	 
set backspace=indent,eol,start

" Auto-close brackets, quotes, etc
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Vim plugins managed by vim-plug
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Emmet setup for HTML and CSS only
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Lightline configuration
set laststatus=2

" Theme
set background=light
colorscheme PaperColor
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }

" ALE configuration below, add line to CocConfig -> diagnostic.displayByAle: true
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_lint_on_text_changed = 'always'
highlight ALEWarning ctermbg=LightMagenta
highlight ALEError ctermbg=Red ctermfg=White

" CoC use <CR> to select completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" CoC plugins
" coc-tsserver
" coc-json
" coc-clangd
" coc-snippets
" @yaegassy/coc-pylsp
