" Make vim more useful
set nocompatible


syntax on
set background=dark

set t_Co=256
colorscheme gruvbox

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Set some junk
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set encoding=utf-8 nobomb " BOM often causes trouble

set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set showcmd " Display the command as you are typing it
set splitright " New windows goes right
set title " Show the filename in the window titlebar.
set wildmode=list:longest " Complete only until point of ambiguity.

" Set relative line numbers
set relativenumber " Use relative line numbers. Current line is still in status bar.
au BufReadPost,BufNewFile * set relativenumber


autocmd FileType text setlocal textwidth=78 " Sets text to wrap lines if filetype is plaintext

" Tabs
set shiftwidth=4 " The # of spaces for indenting.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set tabstop=4 " Visually set how tabs are displayed
set softtabstop=4 " How many columns vim uses when you hit tab in insert mode
set noexpandtab " Never expand tabs to spaces

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee Folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh

" Rainbow Parenthesis
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" Rebind W to sudo write
command W w !sudo tee % > /dev/null

" Q -> q
command Q q
