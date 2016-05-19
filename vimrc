"定义快捷键的前缀,即<Leader>
let mapleader=";"

"显示行号
set nu
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>ep :e sudo:%:p<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 开启实时搜索功能
set incsearch
set hlsearch
"设置shell为bash
set shell=/bin/bash

set nocompatible               " be iMproved
filetype off                   " required!

call vundle#rc()

" My Bundles here:
"
" original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'altercation/vim-colors-solarized'
 Bundle 'vim-scripts/taglist.vim'
" vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
" non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 Bundle 'https://github.com/Lokaltog/vim-powerline.git'
 Bundle 'racer-rust/vim-racer'
 Bundle 'rust-lang/rust.vim'
 Bundle 'tsaleh/vim-supertab'
 Bundle 'szw/vim-tags'
 Bundle 'vim-scripts/sudo.vim'
 Bundle 'vhdirk/vim-cmake'
 "Bundle 'Valloric/ycmd'
 Bundle 'scrooloose/nerdtree'
 Bundle 'vim-scripts/winmanager--Fox'
 Bundle 'vim-scripts/nertw.vim'

" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"颜色设置
syntax on
colorscheme desert

"Taglist设置
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Left_Window=1
let Tlist_File_Fold_Auto_Close=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>
"Powerline设置
let g:Powerline_symbols='fancy'
set laststatus=2
set t_Co=256
set encoding=utf-8

"vim-ctags设置
set exrc
set secure
let g:vim_tags_auto_generate=1
let g:vim_tags_extension='.tags'
set tags+=/home/zwh/.tags;

"开启rust的自动reformat的功能
let g:rustfmt_autosave=1
"racer路径
let g:racer_cmd="/usr/bin/racer"
let $RUST_SRC_PATH="/usr/local/src/rustc-1.8.0/src"

""YCM的一些设置
let g:ycm_rust_src_path=$RUST_SRC_PATH
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_seed_identifers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/ycmd/cpp/ycm/.ycm_extra_conf.py'
"设置自动缩进4个空格
set shiftwidth=4
"启用Supertab插件自动补全
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType=""

"修改Status着色
hi VertSplit ctermfg=230 ctermbg=201

" 定义快捷键make编译工程
nmap <Leader>make :make<CR>
