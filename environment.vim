"---- tabs and spaces
set tabstop=4
"set shiftwidth=2
"set softtabstop=2
set expandtab
set autoindent
set cindent
set smarttab

"---- cursor movement
set backspace=indent,eol,start
set nostartofline " preserve column on page movements

"---- cursor hilite
autocmd InsertEnter,InsertLeave * set cul! " underline current line for insert mode only
"if exists('$TMUX')
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
"autocmd InsertEnter * set cul
"autocmd InsertLeave * set nocul

"---- copy/paste

"" yank and paste with the system clipboard under x11 (ie not ssh)
"if (executable('pbcopy') || executable('xclip') || executable('xsel')) && has('clipboard')
"    "set clipboard=unnamed
"endif

"---- splits
set hidden " enable multi file editing
set splitbelow " open hsplits down (defaults up)
set splitright " open vsplits right (defaults left)

"---- input
set noshowcmd " don't display keypresses in bottom right of screen - it's distracting
set timeout " use timeouts for keyboard combo mappings
set timeoutlen=300 ttimeoutlen=0 " 300ms for key combos, 0ms for <esc>

"---- mouse
set mouse=n
if exists(':ttymouse')
  set ttymouse = xterm2
endif

"---- files
"let g:netrw_keepdir=0 " :e is relative to current buffer
"set autochdir " auto cd to directory of current buffer
"autocmd BufEnter * silent! lcd %:p:h " auto cd to dir of current buffer

"---- commandline
set wildmode=list:longest,full " more linuxy filename completion with <tab>
set wildmenu
set wildignore+=*/tmp/*,*/.git/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set rtp+=/usr/local/opt/fzf

"---- search and replace
set gdefault " always use /g with %s/
set hlsearch " highlight search hits
set incsearch "incremental search
set wrapscan
set ignorecase
set smartcase
set infercase

"---- folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"---- sessions
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"---- backups
"let g:cache_home=$XDG_CACHE_HOME.'/nvim'
"silent !mkdir expand(g:cache_home) > /dev/null 2>&1
"execute "set backupdir=".g:cache_home
"execute "set dir=".g:cache_home
"execute "let g:netrw_home='".g:cache_home."'"
"silent !mkdir $HOME/.cache/nvim > /dev/null 2>&1
set directory=$HOME/.cache/nvim
set backupdir=$HOME/.cache/nvim
let g:netrw_home='~/.cache/nvim'

"set backupdir = '~/.cache/nvim'
"set dir = '~/.cache/nvim'
"let g:netrw_home = '~/.cache/nvim'

"set nobackup
set noswapfile " nvim keeps making huge 50GB .swp files for some reason
"set nowritebackup

"---- whitespace
"set list " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫ " whitespace chars

"---- display
"set breakindent " preserve indentation when wrapping
"set noruler
set noshowmode " airline handles mode display
set ruler " show cursor position
set scrolloff=3 " show context above/below cursorline
set title " change the terminal's title
set wmh=0 " window min height = 0, for splits?
set wmw=0 " window min width = 0, for splits?

"---- vc, diffs
set diffopt+=vertical

"---- buffer hooks

" directly go to insert mode when swtich to terminal window
"au BufEnter * if &buftype == 'terminal' | :startinsert | endif

"---- helper functions
command! ConfigEdit edit $MYVIMRC " edit config file
command! ConfigReload source $MYVIMRC " live reload config

"---- neovim
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'