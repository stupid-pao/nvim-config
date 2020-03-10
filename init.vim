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

" insert or delete brackets, parens, quotes in pair 
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
" A Vim plugin which shows a git diff in the 'gutter'
Plug 'airblade/vim-gitgutter'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" 欢迎界面
Plug 'mhinz/vim-startify'

Plug 'chrisbra/Colorizer' " Show colors with :ColorHighlight

Plug 'majutsushi/tagbar'

Plug 'mbbill/undotree'

Plug 'honza/vim-snippets'

Plug 'tpope/vim-surround'

"Fuzzy file, buffer, mru, tag, etc finder
Plug 'kien/ctrlp.vim'

" a management for ctags file
Plug 'ludovicchabant/vim-gutentags'

" add file type icons to vim plugins
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

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
let g:airline#extensions#virtualenv#enabled = 1

" ===
" === coc
" ===
"set sessionoptions+=globals
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
let  NERDTreeIgnore=[ '\~$' ,  '\.pyc$' ,  '\.swp$' ]
let g:NERDTreeWinSize = 30
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI=1  " Start NERDTree in minimal UI mode (No help lines)
let NERDTreeDirArrows=1  " Display arrows instead of ascii art in NERDTree
let NERDTreeQuitOnOpen=1 " Close NERDtree when files was opened

 " Customize icons on Nerdtree
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'


" cursor move insert model
inoremap <C-b> <Left>
inoremap <C-f> <Right>

" meta + delete  插入模式删除一个单词
"inoremap <M-BS> <C-\><C-o>dB
inoremap <M-BS> <C-\><C-o>db

" coursorline
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" code folding
set foldlevel=99

" tab size
set tabstop=4
set shiftwidth=4
set expandtab

" tagbar
noremap <leader>tt :TagbarToggle<enter>

" undotree
noremap <leader>tu :UndotreeToggle<enter>

" buffer
noremap <leader>bb :Buffers<enter>
noremap <leader>bn :bnext<enter>
noremap <leader>bp :bprev<enter>

" format
xmap <leader>pf  <Plug>(coc-format-selected)
nmap <leader>pf  <Plug>(coc-format-selected)

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

" gitgutter  config 
" You can jump between hunks with [c and ]c.
"  You can preview, stage, and undo hunks with <leader>hp, <leader>hs, and <leader>hu respectively.
set updatetime=100
set signcolumn=yes
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=#50fa7b
highlight GitGutterChange ctermfg=blue guifg=#8be9fd
highlight GitGutterDelete ctermfg=red guifg=#ff5555
highlight GitGutterChangeDelete ctermfg=blue guifg=#8be9fd
" █ ▉ ▉ ➧ ⇒ ⇛ ᐅ ▶ ⇲ ◽ 
let g:gitgutter_sign_added              =' █'
let g:gitgutter_sign_modified           = ' █'
let g:gitgutter_sign_removed            = ' ᐅ'
let g:gitgutter_sign_removed_first_line = ' ▶'
let g:gitgutter_sign_modified_removed   = ' ⇲'


"vim多窗切换快捷键
map gh <C-W>h
map gj <C-W>j
map gk <C-W>k
map gl <C-W>l

let g:python3_host_prog = '/usr/local/bin/python3'

" fzf
" to make fzf find in current .git root
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

"map <C-p> :ProjectFiles<CR>

noremap <leader>ff :ProjectFiles<CR>
"noremap <leader>ff :GFiles<enter>
noremap <leader>fa :Ag 

" gutentags config
" <C-]>  go to definition, <C-o> go back
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
