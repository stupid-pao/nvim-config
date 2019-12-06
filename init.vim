call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
" Git command inside vim
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'machakann/vim-highlightedyank'
" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" line number
Plug 'myusuf3/numbers.vim'
" git
Plug 'airblade/vim-gitgutter'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'mhinz/vim-startify'

"python
"python code folding
Plug 'tmhedberg/SimpylFold'
" hightlighting
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': 'python' }
Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

Plug 'majutsushi/tagbar'

Plug 'mbbill/undotree'



call plug#end()


colorscheme dracula

" set <LEADER> as <SPACE>
" 注释 LEADER cc   反注释 LEADER cu
let mapleader=" "
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

let g:neomake_python_enabled_makers = ['flake8']


" 设置自动检查
call neomake#configure#automake('nrwi', 500)
" Change warning signs and color, see https://goo.gl/eHcjSq.
let g:neomake_warning_sign={'text': '!', 'texthl': 'NeomakeWarningSign'}
let g:neomake_error_sign={'text': '✗'}


hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 200 


" === NERDTree
noremap <leader>tn :NERDTreeToggle<CR>

" fzf
noremap <leader>ff :FZF<enter>
noremap <leader>fa :Ag 

" cursor move insert model
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" coursorline
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" code folding
set foldlevel=99

" tagbar
noremap <leader>tt :TagbarToggle<enter>

" undotree
noremap <leader>tu :UndotreeToggle<enter>

" buffer
noremap <leader>bb :Buffers<enter>

" my custome operation
noremap <leader>w/ <C-w>v
" <C-w> + s  上下分屏










