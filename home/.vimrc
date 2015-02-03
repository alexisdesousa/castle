set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'desert-warm-256'
Plugin 'vim-neatstatus'
Plugin 'Markdown-syntax'
Plugin 'minibufexpl.vim'
Plugin 'Jinja'
Plugin 'UltiSnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden
set nowrap

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" set nostartofline

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" set confirm
set cmdheight=1

" Display line numbers on the left
set number
"set relativenumber " Displays cursor position from current

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Backups


let preferred_dir = expand("~/.vim/backup")
   if !isdirectory(preferred_dir)
      if exists("*mkdir")
         echo "Creating preferred backup file location: " . preferred_dir
         call mkdir(preferred_dir,"p",0700)
      else
         echo "Cannot create directory: " . preferred_dir . " because the mkdir function does not exist"
      endif
   endif


set backup
set writebackup
set backupdir=~/.vim/backup

syntax on
color desert-warm-256
