set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
"Bundle 'godlygeek/tabular'
"Bundle 'plasticboy/vim-markdown'
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28                    "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window=1            "在右侧窗口中显示taglist窗口
let Tlist_Use_Left_Window =1                "在左侧窗口中显示taglist窗口
Bundle 'godlygeek/tabular'
"Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-markdown'
"Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F3> :Tagbar<CR>
"set tags=tags; "自动加载tags 
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"如果是c语言的程序的话，tagbar自动开启
Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>
Bundle 'bling/vim-airline'
set laststatus=2
Bundle 'ctrlpvim/ctrlp.vim'

"Bundle 'gabrielelana/vim-Markdown'
"let g:Markdown_enable_spell_checking = 0
"let g:Markdown_enable_mappings = 0

Bundle 'iamcco/markdown-preview.vim'
let g:mkdp_path_to_chrome = "chromium-browser"
let g:mkdp_auto_start = 1
let g:mkdp_auto_open = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0

let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.
" 256 colors
"set t_Co=256
"set tab as 4 spaces
"set ts=4
"set expandtab
"set autoindent
set tabstop=4 "tab show as 4 space
set softtabstop=4 "backup show
set shiftwidth=4 "should same as softtabstop

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
"hi Comment ctermfg=green guifg=green
set fileencodings=utf-8,GBK,GB2312
set nocompatible
set nu
syntax on
set hlsearch
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set shortmess=atl
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set csverb
	set cspc=3
	set nocscopeverbose  " 添加数据库时不显示详细信息
	if filereadable("cscope.out")
		cs add cscope.out
	endif
endif


