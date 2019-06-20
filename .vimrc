" sets spell check to be enabled to files which
" end with either .md or .txt
" 
" To get auto complete type z= when you are
" over the word.
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us


""" Indentation and Tabs """
"file based indentation
filetype plugin indent on

"copy indentation from current line when making a new line
set autoindent
" Smart indentation when programming: indent after {
set smartindent 

set tabstop=4     " number of spaces per tab
set expandtab     " convert tabs to spaces
set shiftwidth=4  " set a tab press equal to 4 spaces


""" Looks and Appearance"""

" Enable syntax highlighting
syntax enable

try
    "color atomic-dark
    colorscheme desert
catch
endtry

set background=dark


" File Encodings

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Productivity 

" Set Line Numbers to show
set number

" Highlights the current line with a underscore
set cursorline

" Displays a red bar at 80 characters
set colorcolumn=80

" Shows a auto complete tab when you are typing a command
" like :sp <tab>
set wildmenu
set wildignorecase


" sets the size of the status bar at bottom to have a height of two
set laststatus=2



"  Searching when in command mode type /words to find
" search as characters are entered
set incsearch
" highlight matched characters
set hlsearch

" Ignore case when searching
set ignorecase



"Disable ding sound on error, flashes cursor instead
set visualbell

" Display ruler on bottom right -- should be there by default
set ruler

" Enables mouse support
" Auto updates file if an external source edits the file
set autoread

" Maps jj in insertion mode to escape to make
" switching between modes easier
inoremap jj <ESC>


" Improves performance by only redrawing screen when needed
"set lazyredraw


" Selection
    " v and arrows select characters
    " V select entire lines
" Operations on selected text 
    " d on something selected cuts it -- also used for delete
    " y = yank = copy
    " P paste before cursor
    " p paste after cursor
    " u undo
    " ctr r : redo
    " > shift text right
    " < shift test left


" Basic Vim navigation
    " :sp file  -- this will open a new file horizontally
    " :vsp file -- will open a file splitting vertically
    " ctrl-w w -- this will toggle to another open vim windo
    "
"
" Useful commands to memorize
" Movement:
    " Ctr +f move forward a full screen
    " Ctr b move backwards a full screen
    "
    " gg  : go to first line of document
    " G   : go to last line of doucment
    " 
    " 0   : go to start of line 
    " $   : go to end of line
    " zz  : center cursor on screen -- make current line half way on screen
    " }   : jump to next paragraph
    " {   : jump to last paragraph
