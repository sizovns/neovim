" guide https://github.com/rstacruz/vim-from-scratch
set nocompatible
let g:mapleader=" "
set clipboard=unnamedplus

call plug#begin('~/.vim/vendor')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'

" fzf is a very fast file picker https://github.com/junegunn/fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ale verifies your files for syntax errors https://github.com/w0rp/ale
Plug 'w0rp/ale'

" vim-sleuth auto-detects if files use space or tabs, and how many spaces each file should have https://github.com/tpope/vim-sleuth
Plug 'tpope/vim-sleuth'

" vim-polyglot adds automatic language support for every language that Vim can support through 3rd party plugins https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Theme onedark
Plug 'navarasu/onedark.nvim'
" Theme HTB
Plug 'audibleblink/hackthebox.vim'

" Bottom panel and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" terminal https://github.com/akinsho/toggleterm.nvim
Plug 'akinsho/toggleterm.nvim'

call plug#end()

" "Use theme onedark
let g:onedark_style = 'deep'
let g:onedark_termcolors=256
colorscheme onedark
" Use theme htb
" colorscheme hackthebox

" Smarter tab line
let g:airline#extensions#tabline#enabled = 1
" Separators can be configured independently for the tabline, so here is how you can define 'straight' tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Airline theme
let g:airline_theme='base16'

" list of CoC extensions needed
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-yaml', 'coc-go', 'coc-pyright', 'coc-docker']

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
