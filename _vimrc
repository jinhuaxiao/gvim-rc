"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

"启动gVIM时最大化
au GUIEnter * simalt ~x

au! BufRead,BufNewFile *.json set filetype=json 
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
colo moria
"let moria_style = 'black'

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=dos,unix
"let g:fencview_autodetect=1                      

set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_cn.utf-8
let mapleader=","
let g:showmarks_enable=0
let g:user_zen_expandabbr_key='<c-e>'
"map <leader>q <Esc>:q<CR>
"map <leader>w <Esc>:w<CR>
"nmap <leader>d <c-d>
"nmap <leader>u <c-u>

" vimrc
autocmd BufWritePost _vimrc so $MYVIMRC
map <silent><leader>e <Esc>:vsp $MYVIMRC<CR>

map <silent><leader>h <Esc>:e C:\windows\system32\drivers\etc\hosts<CR>

set cursorline
"开启右下角光标位置显示
set ruler
"设置命令行高度
set cmdheight=1
set showtabline=2 
"设置上面和下面的外观
set laststatus=2
set smarttab
set smartindent

set nobackup

set nu
set guifont=Monaco:h10

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set expandtab
"set cindent
set smartcase
set smarttab
syntax on
filetype plugin on

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <F2> :if &guioptions =~# 'T' <Bar>
            \set guioptions-=T <Bar>
            \set guioptions-=m <bar>
            \else <Bar>
            \set guioptions+=T <Bar>
            \set guioptions+=m <Bar>
            \endif<CR>

" set autoread
set autoread

set cmdheight=1

" new features in Vim since version 7.3
set undofile
set undodir=d:/undofile

" ignore command case
set ignorecase

"so $HOME/.pass

" setup vimwiki
"let g:vimwiki_list = [{'path': 'E:/Dropbox/wiki/1/', 'path_html': 'E:/Dropbox/wiki/1/html/'}, {'path': 'E:/Dropbox/wiki/2/', 'path_html': 'E:/Dropbox/wiki/2/html/'}]

" insert current time
" like 2011-06-15 18:00:59
"map <silent><F3> <Esc>:echo strftime('%c')<cr>
" To insert timestamp, press F3.
let time_stamp = strftime("%c")
nmap <F3> a<C-R>=strftime("%c")<CR><Esc>
imap <F3> <C-R>=strftime(" %c")<CR>

" for nerdtree
map <silent><F10> <Esc>:NERDTreeToggle<CR>

" for taglist
nmap <silent><F5> <Esc>:TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30


" for programming
"map <F5> :!python %<cr>

" 设置显示list快捷键
"this is really funny... 原来 set list!  == set nolist
nmap <silent><leader>l :set list!<CR>

" 标签相关的快捷键
nmap <C-t> :tabnew<cr>
nmap <C-p> :tabprevious<cr>
nmap <C-n> :tabnext<cr>
nmap <C-o> :browse open<cr>
nmap <leader>t :tabnext<cr>
nmap <C-k> :tabclose<cr>


"Visual 中用 tab 和 shif-tab 做缩排
map <silent><Tab> :><CR>gv
map <silent><S-Tab> :<<CR>gv

" 最大化窗口
"set lines=999 columns=999

" let taglist show current buffer only
let Tlist_Show_One_File = 1


set clipboard+=unnamed
augroup filetypedetect
    au! BufNewFile,BufRead *.as  setf actionscript
augroup END


augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END 

 let g:weibo_access_token = '5156977451268D9D6E9F6D9E3325FACA'


" vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': 'D:/vimwiki/',
\ 'path_html': 'D:/vimwiki/html/',
\ 'html_header': 'D:/vimwiki/template/header.tpl',}]

"vimwiki 插入表格

nmap <silent><F6> <Esc>:VimwikiTable<CR>

"主题可视化
nmap <leader>c :ColorSchemeExplore<cr>
