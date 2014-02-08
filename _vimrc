"        _
" __ _  (_)_ __ ___ _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: MinJie Wang <wangminjiede@gmail.com>
" Version:2.0 
" Last Change: 2014/01/31
"
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General

filetype plugin indent on

set nocompatible                " Be iMproved

let mapleader = ","             " 配置<Leader>，默认为\
let g:mapleader = ","
set history=100                 " history文件中需要记录的行数
set number                      " 设置行号
set ruler                       " 显示光标位置 
set cursorline                  " 高亮当前行

set go=m                        " 设置工具栏
set viminfo+=!                  " 保存全局变量

set shortmess=atI 	         	" 启动的时候不显示那个援助索马里儿童的提示`
set report=0 		         	" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set noerrorbells 	         	" 不让vim发出讨厌的滴滴声
set novisualbell                " 不要声音
set mouse=a 		        	" 可以在buffer的任何地方使用鼠标
set selection=exclusive
set selectmode=mouse,key
set whichwrap+=<,>,h,l          " 允许backspace和光标键跨越行边界

set confirm                     " 用确认对话框（对于 gvim）或命令行选项
set scrolloff=5                 " 设定光标离窗口上下边界 5 行时窗口自动滚动
set autoread                    " 当文件在外部被修改，自动更新该文件
set showcmd                     " 在状态栏显示目前所执行的指令

set bsdir=buffer                " 设定文件浏览器目录为当前目录
set autochdir
autocmd BufReadPost * cd %:p:h  " 读文件时自动设定当前目录为刚读入文件所在的目录


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on                                 " 语法高亮 
colorscheme desert      		          " desert 配色方案
"colorscheme solarized     		          " solarized 配色方案
"colorscheme hybrid
"

" Only have cursorline in current window and in normal window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
auto InsertEnter * set nocursorline
auto InsertLeave * set cursorline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"                            
set textwidth=78                " 设置光标超过 78 列的时候折行
set linebreak                   " 不在单词中间断行
set magic                       " 设置正表达式
set formatoptions=tcrqn     	" 自动格式化
set autoindent 			        " 继承前一行的缩进方式，特别适用于多行注释
set smartindent 	            " 为C程序提供自动缩进
set cindent                     " 使用C样式的缩进  
set smarttab 		        	" 在行和段开始处使用制表符
set backspace=2                 " 允许退格键删除
set tabstop=4                   " 制表符为4
set shiftwidth=4
set expandtab                   " 用空格代替制表符  
set softtabstop=4               " vim里面按一下tab等于4个空格                       
set wrap                        " 自动换行显示
set iskeyword+=_,$,@,%,#,-      " 带有如下符号的单词不要被换行分割
set nobackup                    " 不要备份文件（根据自己需要取舍）
set foldmethod=manual           " 手工定义折叠
set foldcolumn=0                " 设置折叠区域的宽度
setlocal foldlevel=1            " 设置折叠层数
set foldlevelstart=99           " 打开文件时默认不折叠代码
autocmd!   BufNewFile,BufRead *    setlocal nofoldenable   " 设置为自动关闭折叠        

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Chinese Coding
"
set enc=gbk                                                     " 设置内核为UTF-8
set fencs=cp936,utf-8,ucs-bom,shift-jis,big5,gb18030,gbk,gb2312 " 设置解码顺序 
set guifont=Consolas:h14:cANSI                                  " 字体和大小
set helplang=cn
set fileencodings=utf-8,gbk,ucs-bom,cp936 		
set fileencodings=utf-8  		
set fileencoding=utf-8  		
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"
au GUIEnter * simalt ~x                   " 窗口最大化设置
set fillchars=vert:\ ,stl:\ ,stlnc:\      " 在被分割的窗口间显示空白，便于阅读
set clipboard+=unnamed                    " 共享剪贴板
set wildmenu                              " 自动补全命令时候使用菜单式匹配列表
set guioptions+=r 		                  " 启动右边的滚动条
set guioptions+=b 		                  " 启动下边的滚动条
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"
set showmatch 			" 高亮显示匹配的括号
set matchtime=5 		" 匹配括号高亮的时间（单位是十分之一秒）
set novisualbell 		" 不要闪烁
set hlsearch 			" 高亮搜索
set nowrapscan 			" 查找到文件头或文件尾时停止
set incsearch 			" 边输入边查找
set ignorecase 	       	" 在搜索的时候忽略大小写

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""NeoBundle统一管理 ~/.vim/bundle/下的插件""""""""""""""""""""""""""
          filetype off " required! 

             if has('vim_starting')
              set runtimepath+=~/.vim/bundle/neobundle.vim/ 
             endif
              call neobundle#rc(expand('~/.vim/bundle/'))
              " Let NeoBundle manage NeoBundle
              " Required:
               NeoBundleFetch 'Shougo/neobundle.vim'
              " Recommended to install
               NeoBundle 'Shougo/vimproc'

        " My Bundles here:
             " Original repos on github
                NeoBundle 'jcf/vim-latex'
                NeoBundle 'gooselinux/perltidy'
                NeoBundle 'scrooloose/nerdtree'
                NeoBundle 'altercation/vim-colors-solarized'
                NeoBundle 'fholgado/minibufexpl.vim'
                NeoBundle 'Lokaltog/vim-powerline'
                NeoBundle 'bling/vim-airline'
                NeoBundle 'scrooloose/syntastic'
                NeoBundle 'nathanaelkane/vim-indent-guides'
                NeoBundle 'zhaocai/GoldenView.Vim'
                NeoBundle 'godlygeek/tabular'
                NeoBundle 'majutsushi/tagbar'
                NeoBundle 'kien/ctrlp.vim'
                " vim-scripts repos
                NeoBundle 'taglist.vim'
                NeoBundle 'ctags.vim'
                NeoBundle 'perl-support.vim'
                NeoBundle 'TxtBrowser'
                "Required
                filetype plugin indent on   
         " Installation check.
                NeoBundleCheck
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""minibufferexpl"""""""""""""""""""""""""""""""""""""""""
"=>"minibufferexpl"{{{
                let g:miniBufExplMapWindowNavVim = 1
                let g:miniBufExplMapWindowNavArrows = 1
                let g:miniBufExplMapCTabSwitchBufs = 1
                let g:miniBufExplModSelTarget = 1
                "let g:miniBufExplorerMoreThanOne=1    "自动打开  
                let g:miniBufExplCycleArround=1
                nnoremap <TAB> :MBEbn<CR>
                noremap <leader>bn :MBEbn<CR>
                noremap <leader>bp :MBEbp<CR>
                noremap <leader>bd :MBEbd<CR>
                ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""状态栏的设置（airline or Powerline )""""""""""""""
" =>  Airline {{{
                " Show the statusline
                set laststatus=2 
                " Force Vim into 246 color mode, to display airline colors
                set t_Co=256 
                " Get rid of the default mode indicator
                set noshowmode 
                let g:airline_theme="solarized"
                " not Use powerline symbols
                let g:airline_powerline_fonts=0
                let g:airline_section_b = '%{getcwd()}'
                " Separators between categories
                let g:airline_left_sep = ''
                let g:airline_right_sep = ''             
                " Disable bufferline integration
                let g:airline_enable_bufferline = 0
                " Enable Syntastic integration
                let g:airline_enable_syntastic = 1
                " Enable Fugitive integration
                let g:airline_enable_fugitive = 1
            
"if want to use fancy,need to add font patch ->
"git clone git://gist.github.com/1630581.git ~/.fonts/ttf-dejavu-powerline
                "let g:Powerline_symbols = 'fancy'
                let g:Powerline_symbols = 'unicode'
            ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""“""""""语法检测"""""""""""""""""""""""""""""""""""""""""""
" =>  Syntastic {{{
                " Don't run Syntastic on opening files
                let g:syntastic_check_on_open = 1
                " Print error message for current line to command window
                let g:syntastic_echo_current_error = 1
                " Use the :sign interface to show errors
                let g:syntastic_enable_signs = 1
                " Use these symbols for errors, warnings, and style errors/warnings
                let g:syntastic_error_symbol = '>>'
                let g:syntastic_warning_symbol = '>'
                let g:syntastic_stl_format='[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
                " Don't use balloons
                let g:syntastic_enable_balloons = 0
                " Don't use syntax highlighting
                let g:syntastic_enable_highlighting = 1
                " automatically jump to the first error when first opening a file
                let g:syntastic_auto_jump = 1
                " Always use location list for errors
                let g:syntastic_always_populate_loc_list = 1
                " Automatically close location list when no more errors are found
                let g:syntastic_auto_loc_list = 2
                " Error list height = command window height
                let g:syntastic_loc_list_height = 5
                " Don't automatically check
                let g:syntastic_mode_map = { 'mode': 'passive' }
                " Check manually
                noremap <leader>s :SyntasticCheck<cr>
                nnoremap <Leader>e :Errors<CR>
            " }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'"""




"""""""""""""""""""""""""""""""""竖线对齐""""""""""""""""""""""""""""""""""""""""
" => Indent Guides{{{
        if !has('gui_running')
           let g:indent_guides_auto_colors=0
           autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=237
           autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=239
       endif
          let g:indent_guides_enable_on_vim_startup=1
          let g:indent_guides_guide_size=1
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""标签导航"""""""""""""""""""""""""""""""""""""""""
" => Tagbar" {{{
                 nnoremap <Leader>t :TagbarToggle<CR>
                 let g:tagbar_autofocus=1
                 let g:tagbar_expand=1
                 let g:tagbar_foldlevel=2
                 let g:tagbar_autoshowtag=1
            """}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""查看函数列表，需要ctags程序 """""""""""""""""""""""""""""""""
" 如果Exuberant Ctags的安装路径不在$PATH里, 必须从这里指定.
" let Tlist_Ctags_Cmd = 'C:\Program Files\Vim\vim73\ctags.exe'
"
"=> Taglist {{{
                set tags=tags;
                set autochdir
                let Tlist_Auto_Open = 0                 " 当vim启动时自动打开taglist窗口, 默认为0.
                let Tlist_Use_Right_Window = 1          " 在右侧显示窗口
                "let Tlist_Use_Left_Window = 1          " 在右侧显示窗口
                let Tlist_Compart_Format = 1            " 精简模式
                let Tlist_Exit_OnlyWindow = 1           " 主窗口退出时自动关掉taglist窗口, 默认为不自动关闭.
                let Tlist_Inc_Winwidth = 1              " 是否允许打开taglist窗口时自动加宽窗口, 默认为允许.
                let Tlist_File_Fold_Auto_Close =1       " 自动关闭其它文件的taglist窗口, 默认是0.
                let Tlist_Show_One_File = 1             " 只显示本文件的tag, 默认为显示所有打开文件的tag.
                let Tlist_WinWidth = 30                 " taglist窗口的宽度, 默认为30.
                let Tlist_Show_Menu = 1                 " 在菜单中显示tag
                let Tlist_Enable_Fold_Column = 0        " 不要显示折叠树 (鼠标可以点开)
                let Tlist_Process_File_Always=0         " 是否一直处理tags.1:处理;0:不处理 
                nnoremap <silent> <F8> :TlistToggle<CR>
" 让 LaTex 也能用 Taglist 显示章节 http://vim.wikia.com/wiki/Use_Taglist_with_LaTeX_files
"let s:tlist_def_tex_settings = 'tex;s:section;c:chapter;l:label;r:ref'
"let s:tlist_def_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections;l:label;r:ref'

" Tex language 
                let g:tlist_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections;l:label;r:ref'
" let g:tlist_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections' 
"let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
"let tlist_make_settings  = 'make;m:makros;t:targets'


            ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""文件搜索""""""""""""""""""""""""""""""""""""""""
"=> ctrlp {{{
                let g:ctrlp_map = '<leader>p'
                let g:ctrlp_cmd = 'CtrlP'
                map <leader>f :CtrlPMRU<CR>
                "set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
                let g:ctrlp_custom_ignore = {
                     \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
                     \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
                      \ }
                "\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
                let g:ctrlp_working_path_mode=0
                let g:ctrlp_match_window_bottom=1
                let g:ctrlp_max_height=15
                let g:ctrlp_match_window_reversed=0
                let g:ctrlp_mruf_max=500
                let g:ctrlp_follow_symlinks=1
                ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""代码对齐""""""""""""""""""""""""""""""""""""""""""
" =>  Tabular {{{
                    nmap <Leader>a= :Tabularize /=<CR>
                    vmap <Leader>a= :Tabularize /=<CR>
                    nmap <Leader>a: :Tabularize /:\zs<CR>
                    vmap <Leader>a: :Tabularize /:\zs<CR>
                 " }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""提供查看文件"""""""""""""""""""""""""""""""""""""""""""
" => NERDTree {{{ "
"
            "autocmd VimEnter * NERDTree             " 启动Vim时自动打开nerdtree
            let NERDTreeShowBookmarks=1             " 一直显示书签
            let NERDTreeChDirMode=2                 " 打开书签时，自动将Vim的pwd设为打开的目录
            let NERDTreeMouseMode=2                 " 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
            let NERDTreeWinPos = "left"             " 在左侧显示窗口
            let NERDTreeQuitOnOpen = 1
            let NERDTreeShowLineNumbers=1
            let NERDTreeHighlightCursorline=1       " 高亮NERDTrre窗口的当前行
            let NERDTreeWinSize = 20                " NERDTree 窗口大小
            let NERDTreeShowHidden=0                " 不显示隐藏文件(好像只在linux环境中有效)
            let NERDTreeIgnore=[ '\.o', '\.pc', '\.png', '\.jpg', '\.gif']
            noremap <leader>n :NERDTreeToggle<cr>  
            ""}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""文本文件"""""""""""""""""""""""""""""""""""""""""
 ""=> TxtBrowser {{{
                    au BufRead,BufNewFile *.txt setlocal ft=txt
"               "}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""perltidy"""""""""""""""""""""""""""""""""""""""""""""""""
"=> perltidy {{{
""vim中编辑完perl代码后，输入“,pt”就可以直接美化（格式化）代码了。
            nnoremap ,pt :%!perltidy -t -nola<CR>
            vnoremap ,pt :!perltidy -t -nola<CR>
            """}}}

""Perl里面的注释标记""
""选择好一块代码以后,按下c,再按下m键就在代码前#
vmap cm :s/\(.*\)/#\1/<CR>:noh<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""latex""""""""""""""""""""""""""""""""""""""""""""""
" => vim-latex {{{
"
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'


""/*用pdflatex进行编译*/
"let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'

""/*用xelatex进行编译*/
let g:Tex_CompileRule_pdf = 'xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'

"TexLet g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*' "/*用xelatex进行编译*/
"
" 多次编译=有参考文献或者目录而需要多次反复编译的时候
"let g:Tex_MultipleCompileFormats = 'dvi,pdf'
"
let g:Tex_GotoError=0
            """}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


