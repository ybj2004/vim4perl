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

let mapleader = ","             " ����<Leader>��Ĭ��Ϊ\
let g:mapleader = ","
set history=100                 " history�ļ�����Ҫ��¼������
set number                      " �����к�
set ruler                       " ��ʾ���λ�� 
set cursorline                  " ������ǰ��

set go=m                        " ���ù�����
set viminfo+=!                  " ����ȫ�ֱ���

set shortmess=atI 	         	" ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ`
set report=0 		         	" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set noerrorbells 	         	" ����vim��������ĵε���
set novisualbell                " ��Ҫ����
set mouse=a 		        	" ������buffer���κεط�ʹ�����
set selection=exclusive
set selectmode=mouse,key
set whichwrap+=<,>,h,l          " ����backspace�͹�����Խ�б߽�

set confirm                     " ��ȷ�϶Ի��򣨶��� gvim����������ѡ��
set scrolloff=5                 " �趨����봰�����±߽� 5 ��ʱ�����Զ�����
set autoread                    " ���ļ����ⲿ���޸ģ��Զ����¸��ļ�
set showcmd                     " ��״̬����ʾĿǰ��ִ�е�ָ��

set bsdir=buffer                " �趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set autochdir
autocmd BufReadPost * cd %:p:h  " ���ļ�ʱ�Զ��趨��ǰĿ¼Ϊ�ն����ļ����ڵ�Ŀ¼


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on                                 " �﷨���� 
colorscheme desert      		          " desert ��ɫ����
"colorscheme solarized     		          " solarized ��ɫ����
"colorscheme hybrid
"

" Only have cursorline in current window and in normal window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
auto InsertEnter * set nocursorline
auto InsertLeave * set cursorline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �ļ�����
"                            
set textwidth=78                " ���ù�곬�� 78 �е�ʱ������
set linebreak                   " ���ڵ����м����
set magic                       " ���������ʽ
set formatoptions=tcrqn     	" �Զ���ʽ��
set autoindent 			        " �̳�ǰһ�е�������ʽ���ر������ڶ���ע��
set smartindent 	            " ΪC�����ṩ�Զ�����
set cindent                     " ʹ��C��ʽ������  
set smarttab 		        	" ���кͶο�ʼ��ʹ���Ʊ��
set backspace=2                 " �����˸��ɾ��
set tabstop=4                   " �Ʊ��Ϊ4
set shiftwidth=4
set expandtab                   " �ÿո�����Ʊ��  
set softtabstop=4               " vim���水һ��tab����4���ո�                       
set wrap                        " �Զ�������ʾ
set iskeyword+=_,$,@,%,#,-      " �������·��ŵĵ��ʲ�Ҫ�����зָ�
set nobackup                    " ��Ҫ�����ļ��������Լ���Ҫȡ�ᣩ
set foldmethod=manual           " �ֹ������۵�
set foldcolumn=0                " �����۵�����Ŀ��
setlocal foldlevel=1            " �����۵�����
set foldlevelstart=99           " ���ļ�ʱĬ�ϲ��۵�����
autocmd!   BufNewFile,BufRead *    setlocal nofoldenable   " ����Ϊ�Զ��ر��۵�        

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Chinese Coding
"
set enc=gbk                                                     " �����ں�ΪUTF-8
set fencs=cp936,utf-8,ucs-bom,shift-jis,big5,gb18030,gbk,gb2312 " ���ý���˳�� 
set guifont=Consolas:h14:cANSI                                  " ����ʹ�С
set helplang=cn
set fileencodings=utf-8,gbk,ucs-bom,cp936 		
set fileencodings=utf-8  		
set fileencoding=utf-8  		
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"
au GUIEnter * simalt ~x                   " �����������
set fillchars=vert:\ ,stl:\ ,stlnc:\      " �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set clipboard+=unnamed                    " ���������
set wildmenu                              " �Զ���ȫ����ʱ��ʹ�ò˵�ʽƥ���б�
set guioptions+=r 		                  " �����ұߵĹ�����
set guioptions+=b 		                  " �����±ߵĹ�����
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"
set showmatch 			" ������ʾƥ�������
set matchtime=5 		" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set novisualbell 		" ��Ҫ��˸
set hlsearch 			" ��������
set nowrapscan 			" ���ҵ��ļ�ͷ���ļ�βʱֹͣ
set incsearch 			" ������߲���
set ignorecase 	       	" ��������ʱ����Դ�Сд

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""NeoBundleͳһ���� ~/.vim/bundle/�µĲ��""""""""""""""""""""""""""
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
                "let g:miniBufExplorerMoreThanOne=1    "�Զ���  
                let g:miniBufExplCycleArround=1
                nnoremap <TAB> :MBEbn<CR>
                noremap <leader>bn :MBEbn<CR>
                noremap <leader>bp :MBEbp<CR>
                noremap <leader>bd :MBEbd<CR>
                ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""״̬�������ã�airline or Powerline )""""""""""""""
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



""""""""""""""""""""""��""""""�﷨���"""""""""""""""""""""""""""""""""""""""""""
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




"""""""""""""""""""""""""""""""""���߶���""""""""""""""""""""""""""""""""""""""""
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




"""""""""""""""""""""""""""""""��ǩ����"""""""""""""""""""""""""""""""""""""""""
" => Tagbar" {{{
                 nnoremap <Leader>t :TagbarToggle<CR>
                 let g:tagbar_autofocus=1
                 let g:tagbar_expand=1
                 let g:tagbar_foldlevel=2
                 let g:tagbar_autoshowtag=1
            """}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""�鿴�����б���Ҫctags���� """""""""""""""""""""""""""""""""
" ���Exuberant Ctags�İ�װ·������$PATH��, ���������ָ��.
" let Tlist_Ctags_Cmd = 'C:\Program Files\Vim\vim73\ctags.exe'
"
"=> Taglist {{{
                set tags=tags;
                set autochdir
                let Tlist_Auto_Open = 0                 " ��vim����ʱ�Զ���taglist����, Ĭ��Ϊ0.
                let Tlist_Use_Right_Window = 1          " ���Ҳ���ʾ����
                "let Tlist_Use_Left_Window = 1          " ���Ҳ���ʾ����
                let Tlist_Compart_Format = 1            " ����ģʽ
                let Tlist_Exit_OnlyWindow = 1           " �������˳�ʱ�Զ��ص�taglist����, Ĭ��Ϊ���Զ��ر�.
                let Tlist_Inc_Winwidth = 1              " �Ƿ������taglist����ʱ�Զ��ӿ���, Ĭ��Ϊ����.
                let Tlist_File_Fold_Auto_Close =1       " �Զ��ر������ļ���taglist����, Ĭ����0.
                let Tlist_Show_One_File = 1             " ֻ��ʾ���ļ���tag, Ĭ��Ϊ��ʾ���д��ļ���tag.
                let Tlist_WinWidth = 30                 " taglist���ڵĿ��, Ĭ��Ϊ30.
                let Tlist_Show_Menu = 1                 " �ڲ˵�����ʾtag
                let Tlist_Enable_Fold_Column = 0        " ��Ҫ��ʾ�۵��� (�����Ե㿪)
                let Tlist_Process_File_Always=0         " �Ƿ�һֱ����tags.1:����;0:������ 
                nnoremap <silent> <F8> :TlistToggle<CR>
" �� LaTex Ҳ���� Taglist ��ʾ�½� http://vim.wikia.com/wiki/Use_Taglist_with_LaTeX_files
"let s:tlist_def_tex_settings = 'tex;s:section;c:chapter;l:label;r:ref'
"let s:tlist_def_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections;l:label;r:ref'

" Tex language 
                let g:tlist_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections;l:label;r:ref'
" let g:tlist_tex_settings = 'tex;c:chapters;s:sections;u:subsections;b:subsubsections' 
"let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
"let tlist_make_settings  = 'make;m:makros;t:targets'


            ""}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""�ļ�����""""""""""""""""""""""""""""""""""""""""
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





""""""""""""""""""""""""""""""�������""""""""""""""""""""""""""""""""""""""""""
" =>  Tabular {{{
                    nmap <Leader>a= :Tabularize /=<CR>
                    vmap <Leader>a= :Tabularize /=<CR>
                    nmap <Leader>a: :Tabularize /:\zs<CR>
                    vmap <Leader>a: :Tabularize /:\zs<CR>
                 " }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""�ṩ�鿴�ļ�"""""""""""""""""""""""""""""""""""""""""""
" => NERDTree {{{ "
"
            "autocmd VimEnter * NERDTree             " ����Vimʱ�Զ���nerdtree
            let NERDTreeShowBookmarks=1             " һֱ��ʾ��ǩ
            let NERDTreeChDirMode=2                 " ����ǩʱ���Զ���Vim��pwd��Ϊ�򿪵�Ŀ¼
            let NERDTreeMouseMode=2                 " ָ�����ģʽ��1.˫���򿪣�2.��Ŀ¼˫�ļ���3.�����򿪣�
            let NERDTreeWinPos = "left"             " �������ʾ����
            let NERDTreeQuitOnOpen = 1
            let NERDTreeShowLineNumbers=1
            let NERDTreeHighlightCursorline=1       " ����NERDTrre���ڵĵ�ǰ��
            let NERDTreeWinSize = 20                " NERDTree ���ڴ�С
            let NERDTreeShowHidden=0                " ����ʾ�����ļ�(����ֻ��linux��������Ч)
            let NERDTreeIgnore=[ '\.o', '\.pc', '\.png', '\.jpg', '\.gif']
            noremap <leader>n :NERDTreeToggle<cr>  
            ""}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""�ı��ļ�"""""""""""""""""""""""""""""""""""""""""
 ""=> TxtBrowser {{{
                    au BufRead,BufNewFile *.txt setlocal ft=txt
"               "}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""perltidy"""""""""""""""""""""""""""""""""""""""""""""""""
"=> perltidy {{{
""vim�б༭��perl��������롰,pt���Ϳ���ֱ����������ʽ���������ˡ�
            nnoremap ,pt :%!perltidy -t -nola<CR>
            vnoremap ,pt :!perltidy -t -nola<CR>
            """}}}

""Perl�����ע�ͱ��""
""ѡ���һ������Ժ�,����c,�ٰ���m�����ڴ���ǰ#
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


""/*��pdflatex���б���*/
"let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode $*'

""/*��xelatex���б���*/
let g:Tex_CompileRule_pdf = 'xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'

"TexLet g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*' "/*��xelatex���б���*/
"
" ��α���=�вο����׻���Ŀ¼����Ҫ��η��������ʱ��
"let g:Tex_MultipleCompileFormats = 'dvi,pdf'
"
let g:Tex_GotoError=0
            """}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


