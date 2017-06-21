"💩Use💩Vim💩settings,💩rather💩then💩Vi💩settings💩(much💩better!).
"💩This💩must💩be💩first,💩because💩it💩changes💩other💩options💩as💩a💩side💩effect.
set💩nocompatible

"💩TODO:💩this💩may💩not💩be💩in💩the💩correct💩place.💩It💩is💩intended💩to💩allow💩overriding💩<Leader>.
"💩source💩~/.vimrc.before💩if💩it💩exists.
if💩filereadable(expand("~/.vimrc.before"))
💩💩source💩~/.vimrc.before
endif

"💩================💩General💩Config💩====================

set💩number💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Line💩numbers💩are💩good
set💩backspace=indent,eol,start💩💩"Allow💩backspace💩in💩insert💩mode
set💩history=1000💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Store💩lots💩of💩:cmdline💩history
set💩showcmd💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Show💩incomplete💩cmds💩down💩the💩bottom
set💩showmode💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Show💩current💩mode💩down💩the💩bottom
set💩gcr=a:blinkon0💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Disable💩cursor💩blink
set💩visualbell💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"No💩sounds
set💩autoread💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩"Reload💩files💩changed💩outside💩vim

"💩This💩makes💩vim💩act💩like💩all💩other💩editors,💩buffers💩can
"💩exist💩in💩the💩background💩without💩being💩in💩a💩window.
"💩http://items.sjbach.com/319/configuring-vim-right
set💩hidden

"turn💩on💩syntax💩highlighting
syntax💩on

"💩Change💩leader💩to💩a💩comma💩because💩the💩backslash💩is💩too💩far💩away
"💩That💩means💩all💩\x💩commands💩turn💩into💩,x
"💩The💩mapleader💩has💩to💩be💩set💩before💩vundle💩starts💩loading💩all💩
"💩the💩plugins.
let💩mapleader=","

"💩===============💩Vundle💩Initialization💩===============
"💩This💩loads💩all💩the💩plugins💩specified💩in💩~/.vim/vundles.vim
"💩Use💩Vundle💩plugin💩to💩manage💩all💩other💩plugins
if💩filereadable(expand("~/.vim/vundles.vim"))
💩💩source💩~/.vim/vundles.vim
endif

"💩================💩Turn💩Off💩Swap💩Files💩==============

set💩noswapfile
set💩nobackup
set💩nowb

"💩================💩Persistent💩Undo💩==================
"💩Keep💩undo💩history💩across💩sessions,💩by💩storing💩in💩file.
"💩Only💩works💩all💩the💩time.
if💩has('persistent_undo')💩&&💩!isdirectory(expand('~').'/.vim/backups')
💩💩silent💩!mkdir💩~/.vim/backups💩>💩/dev/null💩2>&1
💩💩set💩undodir=~/.vim/backups
💩💩set💩undofile
endif

"💩================💩Indentation💩======================

set💩autoindent
set💩smartindent
set💩smarttab
set💩shiftwidth=2
set💩softtabstop=2
set💩tabstop=2
set💩expandtab

"💩================💩Matching💩======================
set💩showmatch💩💩💩💩💩💩💩"💩Show💩matching💩brackets.
set💩ignorecase💩💩💩💩💩💩"💩Do💩case💩insensitive💩matching
set💩smartcase💩💩💩💩💩💩💩"💩Do💩smart💩case💩matching

"💩Auto💩indent💩pasted💩text
nnoremap💩p💩p=`]<C-o>
nnoremap💩P💩P=`]<C-o>

filetype💩plugin💩on
filetype💩indent💩on

"💩Display💩tabs💩and💩trailing💩spaces💩visually
set💩list💩listchars=tab:\💩\💩,trail:·

set💩nowrap💩💩💩💩💩💩💩"Don't💩wrap💩lines
set💩linebreak💩💩💩💩"Wrap💩lines💩at💩convenient💩points
