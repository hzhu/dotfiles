" Syntax highlighting {{{
set t_Co=256
set background=dark
syntax on
colorscheme candyman
" }}}

" Custom vimdiff colors because candyman's vimdiff isn't great.
" https://vi.stackexchange.com/questions/10897/how-do-i-customize-vimdiff-colors
" https://vi.stackexchange.com/questions/4883/overwrite-colorscheme-syntax-highlighting
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#468410 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold

set history=1000 " Increase history from 20 default to 1000
set cursorline " Highlight current line
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed
set nu " Enable line numbers
set lazyredraw " Don't redraw when we don't have to
set shortmess+=A " Don't give attention message when existing swap file is found
set title " Show the filename in the window titlebar
set softtabstop=2 " Tab key results in 2 spaces
set backspace=indent,eol,start " Backspace over everything in insert mode
set expandtab " Expand tabs to spaces
set shiftwidth=2 " The # of spaces for indenting


" yank to clipboard
" https://www.markcampbell.me/2016/04/12/setting-up-yank-to-clipboard-on-a-mac-with-vim.html#setting-vim-to-use-the-clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'Valloric/YouCompleteMe', { 'do': 'python install.py --ts-completer' }

" Initialize plugin system
call plug#end()
