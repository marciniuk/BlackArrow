
" Color Scheme  [ '#rrggbb', Xresources number]
let s:black =   [ '#002b36', 0 ]
let s:blue =    [ '#f02e6e', 1 ]
let s:green =   [ '#859900', 2 ]
let s:yellow =  [ '#b58900', 3 ]
let s:blue =    [ '#1da0e2', 4 ]
let s:magenta = [ '#a742ea', 5 ]
let s:cyan =    [ '#47bae8', 6 ]
let s:white =   [ '#dbdbdb', 7 ]


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}


" Airline have something like boxes, where you put plugins. So you have to
" change colors for all boxes individually. If you don't want to, you don't have
" to set different colors for different Vim modes, you can just comment them out.
"
" Syntax:
" let s:p.mode.position    [[ s:foreground, s:background ], [ s:foreground, s:background ]]

" Normal
let s:p.normal.left =      [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]
let s:p.normal.middle =    [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
let s:p.normal.right =     [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]
let s:p.normal.error =     [[ s:black, s:white ]]
let s:p.normal.warning =   [[ s:black, s:yellow ]]

" Inactive
"let s:p.inactive.left =    [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.inactive.middle =  [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.inactive.right =   [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]

" Insert
"let s:p.insert.left =      [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.insert.middle =    [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.insert.right =     [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]

" Replace
"let s:p.replace.left =     [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.replace.middle =   [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.replace.right =    [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]

" Visual
"let s:p.visual.left =      [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.visual.middle =    [[ s:white, s:black ], [ s:white, s:black ], [ s:white, s:black ]]
"let s:p.visual.right =     [[ s:black, s:white ], [ s:white, s:black ], [ s:white, s:black ]]

" Tabs
let s:p.tabline.left =     [[ s:white, s:black ]]
let s:p.tabline.tabsel =   [[ s:black, s:white ]]
let s:p.tabline.middle =   [[ s:white, s:black ]]
let s:p.tabline.right =    [[ s:black, s:black ]]


let g:lightline#colorscheme#biual#palette = lightline#colorscheme#flatten(s:p)
