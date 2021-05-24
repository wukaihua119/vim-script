set nocompatible

set rtp+=~/.vim/bundle/vundle
" or set rtp+=~/.vim/bundle/Vundle.vim

" Setting Plugins 
call vundle#begin() 

Plugin 'Valloric/YouCompleteMe' 
Plugin 'scrooloose/synctastic'
Plugin 'preservim/nerdtree'
Plugin 'gmarik/vundle'

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()           
filetype plugin indent on    

"YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" Forbidding checking Python syntax by syntastic. 
let g:syntastic_ignore_files=[".*\.py$"] 
" using the tags documents generated by ctags 
let g:ycm_collect_identifiers_from_tag_files = 1  
" Turn the syntax completion 
"let g:ycm_key_invoke_completion = '<M-;>'
"nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR> 
"let g:ycm_seed_identifiers_with_syntax = 1
set completeopt-=preview
set completeopt=longest,menu
"turn off the syntax checking 
"let g:ycm_show_diagnostics_ui=0
let g:ycm_confirm_extra_conf=0
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_comments=1
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>*'
" let g:ycm_use_ultisnips_completer=0


" Settings 
set nu

set cursorline

syntax on

set tabstop=4

set shiftwidth=4

set smarttab

set smartindent

set expandtab "Convert tab to space 

retab

set autoindent

set splitbelow

set expandtab "Convert tab to space 

set backspace=indent,eol,start 

set splitbelow

set hlsearch



" ctags 
" ctags -R 
set tags=./tags,./TAGS,tags:~,TAGS;~



" cscope 
" cscope -Rbqk 
set cscopetag
set csto=0

if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif 
set cscopeverbose
    

