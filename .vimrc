syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'     " required for Vundle to work
Plugin 'sjl/badwolf'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'sbdchd/neoformat'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'mg979/vim-visual-multi'
Plugin 'arcticicestudio/nord-vim'
Plugin 'jesseleite/vim-agriculture' " make fzf usable

" Plugins for JavaScript
" Plugin 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
" Plugin 'pangloss/vim-javascript'    " JavaScript support
" Plugin 'leafgarland/typescript-vim' " TypeScript syntax
" Plugin 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
" Plugin 'HerringtonDarkholme/yats.vim' " Support for .tsx files
" Plugin 'jparise/vim-graphql'        " GraphQL syntax
" Plugin 'neoclide/coc.nvim' , { 'branch' : 'release' } " auto completion

" Fuzzy finder plugin http://ctrlpvim.github.io/ctrlp.vim/#installation
" Needed by fzf  brew install the_silver_searche
" Universal ctags for https://github.com/kristijanhusak/vim-js-file-import

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent on
filetype plugin indent on    " required

" auto-completion extension
let g:coc_global_extensions = [ 'coc-tsserver' ]

" configure ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'

let mapleader = ","

" See full path name
set laststatus=2

" Prettier: format on save
let g:neoformat_try_formatprg = 1
let g:prettier#autoformat = 0
if filereadable(findfile('.prettierrc', '.;'))
	echo "Using prettier..."
	autocmd BufWritePre *.ts*,*.js*,*.graphql Neoformat
endif

" Scroll with mouse
set mouse=a

" Visualize lines
set number

" Use fontawesome icons as signs
let g:gitgutter_async=0

" Nord theme colors with proper highlighting colors
colorscheme nord
highlight Visual cterm=reverse ctermbg=NONE

" ctags
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:class',
    \ 'n:namespace',
    \ 'f:function',
    \ 'G:generator',
    \ 'v:variable',
    \ 'm:method',
    \ 'p:property',
    \ 'i:interface',
    \ 'g:enum',
    \ 't:type',
    \ 'a:alias',
  \ ],
  \'sro': '.',
    \ 'kind2scope' : {
    \ 'c' : 'class',
    \ 'n' : 'namespace',
    \ 'i' : 'interface',
    \ 'f' : 'function',
    \ 'G' : 'generator',
    \ 'm' : 'method',
    \ 'p' : 'property',
    \},
\ }
