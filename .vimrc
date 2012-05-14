" $Id: dot.vimrc,v 1.1 2004/05/10 19:10:50 ali Exp $
"
" My lovely vimrc file
"

" Sorry Ali, I hijacked this file and plan on making it UGLY!! ;)
abbr teh the
abbr tehy they
abbr cahr char
abbr itn int
abbr prnitf printf
abbr pritnf printf
abbr fprnitf fprintf
abbr fpritnf fprintf
abbr strign string
abbr nmae name
abbr ls ls -F
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" add Autocomplete for python
if has("autocmd")
    autocmd FileType python set complete+=k/User/BuggsBunny/.vim/dic/pydiction-0.5 isk+=.,(
endif " has("autocmd")

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set bs=2
" set Spell checking
autocmd BufNewFile,BufRead *.txt,*.htm,*.html,README,*.tex set spell
set viminfo='20,\"50
set history=50		" keep 50 lines of history
set ruler		" display cursor position in lower right
set so=2		" show at lease 2 lines around the cursor
set showmatch		" show match on brackets
set showcmd		" display incomplete commands
set nohlsearch		" do not highlight my search text
set incsearch		" do incremental searching
set nojs		" use only 1 space after '.' when joining a line
set ignorecase
set smartcase
"#set foldmethod=indent

if exists("&matchtime")
  set matchtime=2	" for 2/10 of a second
endif
if exists("&nf")
  set nf=hex		" do not use octal numbers in CTRL-A and CTRL-X
endif

" By default use soft-tabstops of width 4 -- this applies
" to all files
"set sts=4
set expandtab
set ts=4
set sw=4

" Don't use Ex mode, use Q for formatting
map Q gq
map 0x42 = <Esc>
if has("gui_running")
  " GUI specific commands
  set background=dark
  set mousehide
  " These can affect the parent x-term. Turn them off by default
  "set columns=80
  "set lines=55
  " set the X11 font to use
  " set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
  " set guifont=-*-fixed-*-*-*-*-20-*-*-100-*-*-*-1
  set guifont=-misc-fixed-medium-*-normal-*-15-*-100-100-c-*-*-*
  syntax on
elseif &t_Co > 2
  " Color terminal
  syntax on
  highlight Comment ctermfg=DarkCyan
endif


if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  
  "autocmd BufReadPost *
  "  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  "  \   exe "normal g`\"" |
  "  \ endif

  augroup END


  " HTML (.template)
  au BufNewFile,BufRead *.template setf awshtml

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

  
" Use the filename as the icon title
set icon

" Save modified files when doing a make
set autowrite

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Fix mapping
map!  

" Set nice colors
"color midnight
"color desert
"color fog
"color borland
"color oceandeep
"color shine
"color evening
"color darkblue was nice until code folding
"color colorer
color delek
"color morning
"color elflord
"
" Disable auto spell check..
let spell_auto_type = "thisftdoesntexist"

"put search highlighting on
"set hlsearch
