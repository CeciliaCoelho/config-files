" MAP KEYS-----------------------------
inoremap jk <ESC>
                        
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
 
nnoremap <silent> <C-f> :Files<CR>
nnoremap <C-g> :Ag<Cr>

let mapleader = ","
 
" SETTINGS---------------------------
syntax on
 
set encoding=UTF-8
set number
set termguicolors
set nu rnu
set noswapfile
set hlsearch
set incsearch
set nowrap
set clipboard+=unnamedplus
set autoindent
set background=dark
set foldmethod=indent
set scrolloff=8 

" Highlights "{{{
" ---------------------------------------------------------------------
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

"}}}
 

let g:syntastic_auto_jump = 0

" Syntax theme "{{{
" ---------------------------------------------------------------------

" true color
"if exists("&termguicolors") && exists("&winblend")
"  syntax enable
"  set termguicolors
"  set winblend=0
"  set wildoptions=pum
"  set pumblend=5
"  set background=dark
" Use NeoSolarized
"  let g:neosolarized_termtrans=1
"  runtime ./colors/NeoSolarized.vim
"  colorscheme NeoSolarized
"endif
"

"}}}
colorscheme nord

" LATEX SETTINGS
filetype plugin indent on
let g:tex_flavor  = 'latex'
let g:vimtex_view_general_viewer = 'flatpak run org.kde.okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf,bibtex,pdf,bib'

" VIMSPECTOR
let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nnoremap <Leader>is :call vimspector#Launch()<CR>
nnoremap <Leader>iR :call vimspector#Reset()<CR>
nnoremap <Leader>ic :call vimspector#Continue()<CR>

nnoremap <Leader>it :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>iT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>ir <Plug>VimspectorRestart
nmap <Leader>io <Plug>VimspectorStepOut
nmap <Leader>ii <Plug>VimspectorStepInto
nmap <Leader>im <Plug>VimspectorStepOver


call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'hoob3rt/lualine.nvim'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'chrisbra/csv.vim'
Plug 'natebosch/vim-lsc'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'frazrepo/vim-rainbow'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'puremourning/vimspector'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/flutter-tools.nvim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'arcticicestudio/nord-vim'

call plug#end()
