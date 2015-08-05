syntax on

filetype plugin on

" filetype indent on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" intenta identar con conocimientos del lenguaje, mejor que : set autoindent
" set smartindent

"muestra los numeros de linea
set number

"el autocompletado segun lenguaje
setlocal omnifunc=syntaxcomplete#Complete

"SEARCH OPTIONS--||Ignore case--para la busqueda, ignora la caja de lo que se busca
"Fije las opciones 'hlsearch'(Highlight search) y 'insearch':
set ic
set hls is


"colortheme 
colo default

" Para el plugin de python--ruta al dictionary de python
"let g:pydiction_location = '~/vim/plugins/pydiction-1.2/complete-dict'
