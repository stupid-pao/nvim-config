call plug#begin('~/.local/share/nvim/plugged')

" ===python
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'
" lint
"Plug 'neomake/neomake'
"python code folding
Plug 'tmhedberg/SimpylFold'
" hightlighting
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for': 'python' }
Plug 'vim-python/python-syntax'
" ====

"coc Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}


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
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'
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

Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

Plug 'majutsushi/tagbar'

Plug 'mbbill/undotree'




call plug#end()


"colorscheme dracula

" set <LEADER> as <SPACE>
" 注释 LEADER cc   反注释 LEADER cu
let mapleader=" "
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

" ===
" === coc
" ===
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
	"let col = col('.') - 1
	"return !col || getline('.')[col - 1]	=~ '\s'
"endfunction
"inoremap <silent><expr> <Tab>
			"\ pumvisible() ? "\<C-n>" :
			"\ <SID>check_back_space() ? "\<Tab>" :
			"\ coc#refresh()
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <silent><expr> <c-space> coc#refresh()
"let g:coc_global_extensions = [
  "\ 'coc-python',
  "\ 'coc-yank',
  "\ 'coc-tsserver',
  "\ 'coc-css',
  "\ 'coc-json',
  "\ 'coc-html',
  "\ 'coc-vimlsp',
  "\ 'coc-highlight'
"\ ]
" Useful commands
" 获取(yank)(vim的剪切板)历史列表
"nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
"" 跳转至定义
"nmap <silent> gd <Plug>(coc-definition)
"" 跳转至类型定义
"nmap <silent> gy <Plug>(coc-type-definition)
"" 列出实现
"nmap <silent> gi <Plug>(coc-implementation)
"" 列出引用
"nmap <silent> gr <Plug>(coc-references)
"nmap <leader>rn <Plug>(coc-rename)
"" exit terminal mode use <C-\><C-n>
"nmap <leader>tl <Plug>(coc-terminal-toggle)

""" Using CocList
""" Show all diagnostics
"nnoremap <silent> <space>ca  :<C-u>CocList diagnostics<cr>
"" Manage extensions
"nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>
"" Show commands
"nnoremap <silent> <space>cm  :<C-u>CocList commands<cr>
"" Find symbol of current document
"nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
"" Search workspace symbols
"nnoremap <silent> <space>cs  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
"" Resume latest coc list
"nnoremap <silent> <space>cp  :<C-u>CocListResume<CR>

"autocmd CursorHold * silent call CocActionAsync('highlight')



" python setting
"" disable autocompletion, cause we use deoplete for completion
"let g:jedi#completions_enabled = 0
"" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"
"" lint
"let g:neomake_python_enabled_makers = ['flake8']
"" 设置自动检查
"call neomake#configure#automake('nrwi', 500)
"" Change warning signs and color, see https://goo.gl/eHcjSq.
"let g:neomake_warning_sign={'text': '!', 'texthl': 'NeomakeWarningSign'}
"let g:neomake_error_sign={'text': '✗'}


hi HighlightedyankRegion cterm=reverse gui=reverse

let g:highlightedyank_highlight_duration = 200 

" vim-go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
"按. 自动补全提示
"au filetype go inoremap <buffer> . .<C-x><C-o>


" === NERDTree
noremap <leader>tn :NERDTreeToggle<CR>

" fzf
noremap <leader>ff :FZF<enter>
noremap <leader>fa :Ag 

" cursor move insert model
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" meta + delete  插入模式删除一个单词
inoremap <M-BS> <C-\><C-o>dB

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


set t_Co=256
set termguicolors	" enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
"color dracula
color deus
"color gruvbox

" vim-go settings
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
noremap <leader>db :GoDebugBreakpoint<enter>
noremap <leader>dc :GoDebugContinue<enter>
noremap <leader>dn :GoDebugNext<enter>
noremap <leader>ds :GoDebugStep<enter>


" python hightlighting
let g:python_highlight_all = 1

