call plug#begin('~/.vim/bundle')
" ==========Plug Install================
" Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

" c++ highlight
" c++ 11/14/17
Plug 'octol/vim-cpp-enhanced-highlight'

" c support
Plug 'vim-scripts/c.vim'

" color scheme
Plug 'tomasr/molokai'

" airline - status bar
Plug 'vim-airline/vim-airline'

" youcompeleteme
Plug 'valloric/youcompleteme'

" snippets engine and snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" syntax
Plug 'scrooloose/syntastic'
" ======================================
call plug#end()


" ==========Personal config=============

" --------------VIMCONFIG--------------------------------------------------
" enable all youcompleteme features
set encoding=utf-8
" activate mouse
set mouse=a
" activate line number
set nu
" some other setting, copy from vim-IDE config
set cc=80
set tw=80
set ts=4
set shiftwidth=4
" do not store swap file
set noswapfile
filetype plugin on

" vim default syntax
syntax on
" Cursor in terminal
" https://vim.fandom.com/wiki/Configuring_the_cursor
" 1 or 0 -> blinking block
" 2 solid block
" 3 -> blinking underscore
" 4 solid underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
if &term =~ '^xterm'
" normal mode
let &t_EI .= "\<Esc>[0 q"
" insert mode
let &t_SI .= "\<Esc>[6 q"
endif
" --------------VIMCONFIG--------------------------------------------------

" --------------NERDTREE------------------------------------------------------
" Start NERDTree and put the cursor back in the other window.
" Exit Vim if NERDTree is the only window left.
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tags_autoclose=1
let g:nerdtree_tabs_synchronize_view=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_smart_startup_focus=2
" --------------NERDTREE------------------------------------------------------

" --------------SCHEME--------------------------------------------------------
colorscheme molokai
set list listchars=tab:»·,trail:·

" Number of color
set t_Co=256

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
" --------------SCHEME--------------------------------------------------------

" --------------C.VIM---------------------------------------------------------
"c.vim plugin
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen='yes'
" By default, cvim insert a header when opening a filetype supported.
" If it set to 0, it doesn't insert it. If it's set to 1, it inserts the header.
let g:C_insert_header=0
" --------------C.VIM---------------------------------------------------------

" --------------SYNTAX--------------------------------------------------------
"  recommend settings from author
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" --------------SYNTAX--------------------------------------------------------
