runtime! debian.vim
"##########################
"color
set t_Co =256
colorscheme ron
"###########################set view setting
syntax on
set nu
set noruler
set showmatch
set incsearch
set ignorecase
set smartcase
set hidden
set mouse=a
set autowrite
set laststatus=2
"#######################set shell check with ALE
let g:ale_sign_column_always = 1 
let g:ale_sign_error = '✖' 
let g:ale_sign_warning = '⚡'
let g:ale_statusline_format = ['✖ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_error_str = 'E'  
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_virtualtext_cursor = 'current'
"##########################setting for ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
"##########################settings for the nerdtree
call pathogen#infect()
syntax on
filetype plugin indent on
"##########################settings for eaymotion
"##########################
map <Leader> <Plug>(easymotion-prefix)
"##########################
if has("syntax")
syntax on
endif
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
"#########################
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
