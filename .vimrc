" make vim more usable
set nocompatible

" Always set nocompatible first
set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

" use utf-8 without byte order mark
set encoding=utf-8 nobomb

" enable ruler at the bottom of the screen
set ruler

" show a menu
set wildmenu

" suppress the intro message (I) when starting vim without a file
set shortmess=atI

" enable modeline
set modeline
set modelines=2

" always (=2) display a status line
set laststatus=2

set statusline=Buf\ %n\ %F\ %{getbufvar(bufnr('%'),'&mod')?'[mod]':''}%r%h%=Ln\ %l/%L,\ Col\ %c\ %y

" use 2 spaces for tabs
set tabstop=2
set softtabstop=2
set expandtab

" do not wrap long lines
set nowrap

" enable loading the indent file for specific file types
filetype plugin indent on
" set how many columns << and >> indent
set shiftwidth=2
" indent by multiples of shiftwidth above
set shiftround
" enable autoindent
set autoindent

" highlight the line the cursor is on
set cursorline

" show invisible characters
set list listchars=tab:⇥\ ,nbsp:_,trail:•,extends:»,precedes:«

" enable relative line numbers
set relativenumber

" start scrolling 4 lines before hitting the bottom or top of the screen
set scrolloff=4

" ignore case when searching
set ignorecase
" but be smart about it
set smartcase
" highlight search results as they are found
set incsearch
" highlight last found search results
set hlsearch
" clear last found search results when hitting Escape twice in command mode
nnoremap <Esc><Esc> :nohlsearch<CR>

" Use Gruvbox colorscheme
syntax enable
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" https://begriffs.com/posts/2019-07-19-history-use-vim.html

" Protect changes between writes. Default values of
" " updatecount (200 keystrokes) and updatetime
" " (4 seconds) are fine
set swapfile
set directory^=~/.vim/swap//

" protect against crash-during-write
set writebackup
" but do not persist backup after successful write
set nobackup
" use rename-and-write-new method whenever safe
set backupcopy=auto
" patch required to honor double slash at end
if has("patch-8.1.0251")
  " consolidate the writebackups -- not a big
  " deal either way, since they usually get deleted
  set backupdir^=~/.vim/backup//
end

" persist the undo tree for each file
set undofile
set undodir^=~/.vim/undo//
