" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                         _
"   _ __   ___  _____   _(_)_ __ ___
"  | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"  | | | |  __/ (_) \ V /| | | | | | |
"  |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Load vim-plug for plugins
call plug#begin('~/.config/nvim/bundle')

	Plug 'https://github.com/w0rp/ale'
	Plug 'https://github.com/Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
		Plug 'https://github.com/Shougo/deoplete-clangx'
		Plug 'https://github.com/deoplete-plugins/deoplete-go', { 'do': 'make'}
		Plug 'https://github.com/deoplete-plugins/deoplete-jedi'
		Plug 'https://github.com/padawan-php/deoplete-padawan', { 'do': 'composer install' }
		Plug 'https://github.com/carlitux/deoplete-ternjs'
		Plug 'https://github.com/deoplete-plugins/deoplete-zsh'
		Plug 'https://github.com/Shougo/neco-vim'
		Plug 'https://github.com/Shougo/neoinclude.vim'
	Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
		Plug 'https://github.com/junegunn/fzf.vim'
	Plug 'https://github.com/itchyny/lightline.vim'
		Plug '~/.config/nvim/bundle/lightline-biual'
	Plug 'https://github.com/cakebaker/scss-syntax.vim'
	Plug 'https://github.com/ap/vim-css-color'
"	Plug 'https://github.com/SirVer/ultisnips'
"		Plug 'https://github.com/honza/vim-snippets'
	Plug 'https://github.com/romainl/vim-cool'
	Plug 'https://github.com/tpope/vim-commentary'
	" Plug 'https://github.com/bfrg/vim-cpp-modern'
	" Plug 'https://github.com/tpope/vim-fugitive'
		" Plug 'https://github.com/shumphrey/fugitive-gitlab.vim'
		" Plug 'https://github.com/tpope/vim-rhubarb'
	" Plug 'https://github.com/itchyny/vim-gitbranch'
	" Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'https://github.com/jelera/vim-javascript-syntax'
	Plug 'https://github.com/matze/vim-meson'
	Plug 'https://github.com/tpope/vim-surround'
	" Plug 'https://github.com/tpope/vim-repeat'
	Plug 'https://github.com/reedes/vim-pencil'
	Plug 'https://github.com/sheerun/vim-polyglot'
	" Plug 'https://github.com/tpope/vim-speeddating'
	" Plug 'https://github.com/cespare/vim-toml'
	Plug 'https://github.com/bronson/vim-trailing-whitespace'
	Plug 'https://github.com/junegunn/goyo.vim'
	Plug 'https://github.com/PotatoesMaster/i3-vim-syntax'
	Plug 'https://github.com/Yggdroot/indentLine'
	Plug 'https://github.com/tommcdo/vim-lion'

call plug#end()

" Basic stuff
syntax on
filetype plugin indent on
set smartindent
set smarttab
set nu relativenumber
set clipboard=unnamedplus
set inccommand=nosplit
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set background=light

augroup langindentation
  autocmd Filetype sh setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
augroup END

augroup pencil
	autocmd!
	autocmd FileType markdown call pencil#init({'wrap': 'soft', 'autoformat': 1})
	autocmd FileType tex call pencil#init({'wrap': 'soft', 'autoformat': 1})
augroup END

" Colorscheme
"hi LineNr 			ctermfg=3
"hi CursorLineNr 	ctermfg=11
"hi Statement 		ctermfg=3
"hi Visual 						ctermbg=8
"hi Search 						ctermbg=8
"hi SpellBad 		ctermfg=0 	ctermbg=1 	cterm=underline
"hi SpellCap 		ctermfg=0 	ctermbg=2 	cterm=underline
"hi SpellRare 		ctermfg=0 	ctermbg=3 	cterm=underline
"hi SpellLocal 		ctermfg=0 	ctermbg=5 	cterm=underline
"hi Pmenu 			ctermbg=0 	ctermfg=4
"hi PmenuSel 		ctermbg=8 	ctermfg=4
"hi PmenuSbar 		ctermbg=0
hi LineNr           ctermfg=3
hi CursorLineNr     ctermfg=3
hi Statement        ctermfg=3
hi Visual           ctermfg=0   ctermbg=3
hi Search           ctermfg=0   ctermbg=3
hi SpellBad         ctermfg=0   ctermbg=1   cterm=underline
hi SpellCap         ctermfg=0   ctermbg=2   cterm=underline
hi SpellRare        ctermfg=0   ctermbg=3   cterm=underline
hi SpellLocal       ctermfg=0   ctermbg=5   cterm=underline
hi Pmenu            ctermbg=0   ctermfg=4
hi PmenuSel         ctermbg=8   ctermfg=4
hi PmenuSbar        ctermbg=0
hi DiffAdd          ctermbg=2   ctermfg=0
hi DiffChange       ctermbg=4   ctermfg=0
hi DiffDelete       ctermbg=1   ctermfg=0
hi Folded           ctermbg=8
hi FoldColumn       ctermbg=8
hi SignColumn       ctermbg=0   ctermfg=7
hi ALEWarning       ctermbg=1   ctermfg=0
hi ALEErrorSign     ctermbg=1   ctermfg=0
hi indentLine       ctermbg=3   ctermfg=3

" Deoplete - autocompletion
let g:deoplete#enable_at_startup = 1
" UltiSnips
call deoplete#custom#source('ultisnips', 'rank', 1000)

" Lightline
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'biual',
	\ 'active': {
	\ 'left': [  [ 'mode' ],
	\            [ 'readonly', 'filename', 'gitbranch' ],
	\            [ 'modified' ] ],
    \ 'right': [ [ 'filetype', 'fileencoding' ],
	\            [ 'percent' ] ]
	\ },
	\ 'component_function': {
	\   'gitbranch': 'gitbranch#name'
	\ },
	\ }

" ALE
hi ALEWarning       ctermbg=1   ctermfg=0
hi ALEErrorSign     ctermbg=1   ctermfg=0

let g:ale_linters = {
\   'c':          ['ccls', 'clang'],
\   'cpp':        ['clang'],
\   'javascript': ['eslint'],
\   'php':        ['php'],
\   'python':     ['pyls', 'flake8'],
\   'sh':         ['shellcheck'],
\   'vim':        ['vint'],
\}
let g:ale_fixers = {
\   'sh':         ['shfmt'],
\   '*':          ['trim_whitespace'],
\   'c':          ['clang-format'],
\   'cpp':        ['clang-format'],
\   'css':        ['prettier'],
\   'go':         ['gofmt'],
\   'html':       ['prettier'],
\   'javascript': ['prettier'],
\   'json':       ['prettier'],
\   'php':        ['prettier'],
\   'python':     ['black'],
\   'scss':       ['prettier'],
\   'yaml':       ['prettier'],
\}

map <C-b> :ALEFix<CR>

" indentLine
let g:indentLine_setColors = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 8

" vim-plug - plugin manager
" Fix https://github.com/junegunn/vim-plug/issues/502
"let g:plug_threads = 1

" vim-pencil
let g:pencil#textwidth = 88
let g:pencil#wrapModeDefault = 'soft'

" vim-polygot
let g:polyglot_disabled = ['markdown']

" Disable changing cursor to line
set guicursor=
autocmd OptionSet guicursor noautocmd set guicursor=

" Tab Managment
map <C-o> :tabnew<CR>
map <C-d> :tabclose<CR>
map <C-j> :tabprev<CR>
map <C-k> :tabnext<CR>

" Complete with <TAB>
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" Open Ranger, file manager
map <C-\> :RangerEdit<CR>

" Mouse support
map <F2> :set mouse=<CR>
map <F3> :set mouse=a<CR>

" Delete unneeded spaces
map <F4> :ALEFix<CR>

" Spell-check (English US and Polish)
map <F5> :setlocal spell! spelllang=en_us<CR>
map <F6> :setlocal spell! spelllang=pl<CR>

" Toggle Goyo, distraction free mode
map <F8> :Goyo<CR>

" Toggle Pencil, wrapping text
map <F9> :PencilSoft<CR>
map <F10> :PencilHard<CR>
