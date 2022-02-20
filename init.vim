:set number 
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a 
" Enable cursor line position tracking:
:set cursorline
highlight CustomError ctermfg=red guifg=red
sign define error numhl=CustomError
sign place 2 name=error line=7
" Remove the underline from enabling cursorline:
:highlight clear CursorLine
" Set line numbering to red background:
:highlight CursorLineNR ctermbg=blue

call plug#begin()
	" everything in here is a plugin
	Plug 'https://github.com/vim-airline/vim-airline' " Vim Airline	
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	" Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
	Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
	Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
	" for tabs in nvim
	" Plug 'kyazdani42/nvim-web-devicons'
	" Plug 'romgrk/barbar.nvim'
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <F2>  :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

" tab related shortcuts
nnoremap <C-t> :tabedit untitled<CR>
nnoremap <C-w> :q<CR> 
nnoremap <C-s> :w<CR>
nnoremap <F12> :TerminalSplit bash<CR>


" :set completeopt-=preview " For No Previews

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
