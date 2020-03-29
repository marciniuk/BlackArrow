" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                         _
"   _ __   ___  _____   _(_)_ __ ___
"  | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"  | | | |  __/ (_) \ V /| | | | | | |
"  |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Load Pathogen for plugins
execute pathogen#infect()

" Basic stuff
syntax on
filetype plugin indent on
set smartindent
set smarttab
set nu relativenumber
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set bg=light

augroup langindentation
  autocmd Filetype css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype scss setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
augroup END

" Colorscheme
hi LineNr 			ctermfg=3
hi CursorLineNr 	ctermfg=11
hi Statement 		ctermfg=3
hi Visual 						ctermbg=8
hi Search 						ctermbg=8
hi SpellBad 		ctermfg=0 	ctermbg=1 	cterm=underline
hi SpellCap 		ctermfg=0 	ctermbg=2 	cterm=underline
hi SpellRare 		ctermfg=0 	ctermbg=3 	cterm=underline
hi SpellLocal 		ctermfg=0 	ctermbg=5 	cterm=underline
hi Pmenu 			ctermbg=0 	ctermfg=4
hi PmenuSel 		ctermbg=8 	ctermfg=4
hi PmenuSbar 		ctermbg=0

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

" Disable changing cursor to line
set guicursor=
autocmd OptionSet guicursor noautocmd set guicursor=

" Tab Managment
map <C-o> :tabnew<CR>
map <C-d> :tabclose<CR>
map <C-j> :tabprev<CR>
map <C-k> :tabnext<CR>

" Deoplete, autocompletion
call deoplete#enable()

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
