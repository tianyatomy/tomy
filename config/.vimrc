"" 主题
"colorscheme murphy
"" 不要使用vi的键盘模式，而是vim自己的
"set nocompatible
"" 语法高亮
"syntax on
""set number
"set cursorline
"" 在状态行上显示光标所在位置的行号和列号
"set ruler
"set rulerformat=%20(%3l\ %c\ %p%%%)
"" 制表符为4统一缩进为4
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4
"set nu
"
"" history文件中需要记录的行数
"set history=100

"set showcmd
"set laststatus=2
"set autoindent
"set number
"set shiftwidth=4
"set tabstop=4
"set whichwrap=b,s,h,l,<,>,[,]
"set encoding=euc-jp
"set fileencoding=euc-jp
"set fileencodings=euc-jp,utf-8,iso-2022-jp,sjis
"set termencoding=euc-jp
"set expandtab
"set t_Co=256
"set backspace=indent,eol,start
"set cursorline
"set hlsearch
"set ignorecase
"colorscheme desert256
"set nobackup
"set autochdir
"
"" filetype plugin indent on "
"set backupcopy=yes
"set ignorecase smartcase
"set nowrapscan
"set incsearch
"set hlsearch
"set noerrorbells
"set novisualbell
"" set showmatch
"" set matchtime=2
"set magic
"set hidden
"set guioptions-=T
"set guioptions-=m
"set smartindent
"set backspace=indent,eol,start
"" Delete
"set cmdheight=1
"set laststatus=2
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
"
"set foldenable
"set foldmethod=syntax
"set foldcolumn=0
"setlocal foldlevel=1
"
" set foldclose=all
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


set ruler
set showcmd
set laststatus=2
set autoindent
set number
set shiftwidth=4
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
set encoding=euc-jp
set fileencoding=euc-jp
set fileencodings=euc-jp,utf-8,iso-2022-jp,sjis
set termencoding=euc-jp
set expandtab
set t_Co=256
set backspace=indent,eol,start
set cursorline
set hlsearch
set ignorecase
" colorscheme solarized
colorscheme desert256
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <C-a> <Esc>
syntax on

""" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_smart_case = 1
"" like AutoComplPop
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_disable_auto_complete = 1
"" search with camel case like Eclipse
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
"imap <C-k> <Plug>(neocomplcache_snippets_expand)
"smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
"" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
"" <CR>: close popup and save indent.
"inoremap <expr><CR> neocomplcache#smart_close_popup() . (&indentexpr != '' ? "\<C-f>\<CR>X\<BS>":"\<CR>")
inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup() . "\<C-h>"
""inoremap <expr><BS> neocomplcache#smart_close_popup() . "\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

" tpl css scssで独自設定
au BufNewFile,BufRead *.tpl set expandtab
au BufNewFile,BufRead *.css set nowrap ts=2 sw=2 expandtab

