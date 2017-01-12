set nocompatible                                                                                                                                     
syntax on                                                                                                                                            
set number                                                                                                                                           
set title                                                                                                                                            
set ruler                                                                                                                                            
set wrap                                                                                                                                             
                                                                                                                                                     
set guioptions-=m                                                                                                                                    
set guioptions-=T                                                                                                                                    
                                                                                                                                                     
                                                                                                                                                     
" Search                                                                                                                                             
set ignorecase                                                                                                                                       
set smartcase                                                                                                                                        
set incsearch                                                                                                                                        
set hlsearch                                                                                                                                         
                                                                                                                                                     
set visualbell                                                                                                                                       
set noerrorbells                                                                                                                                     
set backspace=indent,eol,start                                                                                                                       
                                                                                                                                                     
set hidden                                                                                                                                           
                                                                                                                                                     
" Set <Leader> key                                                                                                                                   
let mapleader="/"                                                                                                                                    
                                                                                                                                                     
" Install pathogen for external plugin                                                                                                               
execute pathogen#infect()                                                                                                                            
                                                                                                                                                     
" Themes and colors                                                                                                                                  
set background=dark                                                                                                                                  
colorscheme solarized

" Cusor switching in Gnome-Terminal                                                                                                                  
if !exists("vimrc_autocommands_cursor_loaded")                                                                                                       
  let vimrc_autocommands_cursor_loaded = 1                                                                                                           
  if has("autocmd")                                                                                                                                  
    if executable("gconftool-2")                                                                                                                     
      au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"                    
      au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"                    
      au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"                       
    endif                                                                                                                                            
  endif                                                                                                                                              
endif

" Disable arrow keys for navigation
map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>

" Make sure all plugin are on. Make sure this is the LAST line                                                                                       
filetype plugin indent on  
