"" 多平台适配 {{{1
" File Path
let s:is_win = has('win32')
let $VIMFILEPATH = $HOME.(s:is_win ? '\vimfiles' : '/.vim')

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/zsh
endif

" some thing on windows
if s:is_win
  set shell=powershell.exe
  let $BROWSER="C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe"
else
  let $BROWSER="chromium"
endif

"" 原版设置 {{{1
" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible            " 去除Vi一致性

set termguicolors           " 开启真彩色
colorscheme vim-monokai-tasty

set number!                 " 强制显示行号

set guicursor   =a:hor1-blinkon1-blinkwait1
set colorcolumn =80         " 80列提示线

set encoding    =utf-8      " Vim 内部编码
set termencoding=utf-8      " Vim 在于屏幕/键盘交互时使用的编码(取决与实际的终端设定)
set fileencoding=utf-8      " 当前编辑的文件在存储时的编码
set fileencodings=ucs-bom,utf-8,gbk " 打开文件时的尝试使用的编码

set foldmethod  =marker     " 标记折叠

filetype plugin indent on   " 根据检测到的文件类型加载插件
syntax on                   " 开启语法高亮

set autoindent              " 根据上一行自动缩进
set expandtab               " 使用空格代替制表符
set softtabstop =4          " Tab键缩进4个空格
set shiftwidth  =4          " >> 缩进4个空格
set shiftround              " >> 缩进 'shiftwidth' 的下一个倍数

set backspace   =indent,eol,start   " 使退格按预期工作
set hidden                  " 在缓冲区之间切换而不必先保存
set laststatus  =2          " 始终显示状态栏
set display     =lastline   " 尽可能多的显示最后一行

set showmode                " 在命令行中显示当前模式
set showcmd                 " 在需要更多键时显示已键入的键

set incsearch               " 用/或?搜索时突出显示
" set hlsearch                " 保持匹配突出显示

set ttyfast                 " 更快的重绘
set lazyredraw              " 仅在必要时重绘

set splitbelow              " 在当前窗口下方打开新窗口
set splitright              " 在当前窗口的右侧打开新窗口

set cursorline              " 高亮光标所在行
set cursorcolumn            " 高亮光标所在列
set wrapscan                " 循环搜索至文件末尾
set report      =0          " 始终报告更改的行
" set synmaxcol   =200        " 仅突出显示前200列

set list                    " 显示非打印字符
" set listchars   =eol:$,tab:->,space:·,trail:.,extends:❯,precedes:❮,nbsp:±
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'eol:$,tab:->,trail:.,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'eol:$,tab:->,trail:.,extends:>,precedes:<,nbsp:.'
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#temporary-files
set backup
set backupdir   =$VIMFILEPATH/files/backup
set backupext   =-vimbackup
set backupskip  =
set directory   =$VIMFILEPATH/files/swap
set updatecount =100
set undofile
set undodir     =$VIMFILEPATH/files/undo
set viminfo     ='100,n$VIMFILEPATH/files/info/viminfo

"" 插件 {{{1
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$VIMFILEPATH/plugged')

" 启动界面
Plug 'mhinz/vim-startify'

" 彩色状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" 文件树
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" 将文件类型图标添加到Vim插件;例如:NERDTree,vim-airline,CtrlP,unite,Denite,lightline,vim-startify等
Plug 'ryanoasis/vim-devicons'

" 高亮相同的内容
Plug 'itchyny/vim-cursorword'
Plug 'lfv89/vim-interestingwords'

" 缩进线
Plug 'Yggdroot/indentLine'

" 代码格式化
Plug 'sbdchd/neoformat'

" 中文文档
Plug 'yianwillis/vimcdoc'

" Markdown预览
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}

" Java"
" Plug 'mikelue/vim-maven-plugin'

" 浮动窗口
Plug 'voldikss/vim-floaterm'

" 模糊搜索
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" 按键管理
" Plug 'liuchengxu/vim-which-key'
" On-demand lazy load
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" Coc.Nvim 全家桶
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" C/C++
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}

" Rust
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}

" Python
Plug 'fannheyward/coc-pyright', {'do': 'yarn install --frozen-lockfile'}

" Java
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}

" 前端三件套
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Vue
Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}

" Markdown
Plug 'fannheyward/coc-markdownlint', {'do': 'yarn install --frozen-lockfile'}

" 其他
Plug 'josa42/coc-sh', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}

" 官方示例
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

"" 插件设置 {{{1
" startify自定义头图 {{{2
let g:startify_custom_header = [
\'     ▄▄   ▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄▄   ▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ',
\'    █  █▄█  █      █   ▄  █ █   █       █      █',
\'    █       █  ▄   █  █ █ █ █   █  ▄▄▄▄▄█  ▄   █',
\'    █       █ █▄█  █   █▄▄█▄█   █ █▄▄▄▄▄█ █▄█  █',
\'    █       █      █    ▄▄  █   █▄▄▄▄▄  █      █',
\'    █ ██▄██ █  ▄   █   █  █ █   █▄▄▄▄▄█ █  ▄   █',
\'    █▄█   █▄█▄█ █▄▄█▄▄▄█  █▄█▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█',
\]

" Airline配置 {{{2
" PowerLine 字体
let g:airline_powerline_fonts = 1
" Coc.Nvim 相关
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}' 
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:rehash256 = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_monokai'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ''

" Coc.Nvim 按键映射 {{{2
" 回车完成未被选择的第一行上屏「默认补全菜单无选择，逻辑真™地怪 :(」
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" Tab Shift-Tab 补全菜单导航
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" NERDTree设置 {{{2
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Markdown预览 默认浏览器 {{{2
let g:mkdp_browser = $BROWSER

" 保存时自动格式化 {{{2
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" 高亮插件随机色彩 {{{2
let g:interestingWordsRandomiseColors = 1

