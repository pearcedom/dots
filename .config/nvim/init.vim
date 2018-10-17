" VIM PLUGGED
call plug#begin('~/.local/share/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'sjl/badwolf'
Plug 'KeitaNakamura/neodark.vim'
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim' 
" Plug 'itchyny/lightline.vim'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-surround'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'jordwalke/flatlandia'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'dylanaraps/wal'
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }
Plug 'reedes/vim-wordy'
Plug 'beloglazov/vim-online-thesaurus'
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'
Plug 'vimwiki/vimwiki'
Plug 'rafaqz/citation.vim'
Plug 'jacoborus/tender.vim'
Plug 'dylanaraps/wal.vim'
call plug#end()

" WORKAROUNDS
set nofsync         " fsync appears to mess with writing files on a network share

" PYTHON INTEGRATION
let g:python_host_prog = '/Users/dom/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/dom/.pyenv/versions/neovim3/bin/python'

" COLORS
" set termguicolors
set notermguicolors
colorscheme wal
" colorscheme nord    
" colorscheme neodark

syntax enable
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" SPACES AND TABS
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4    " when using the >> or << commands, shift lines by 4 spaces

" COPY PASTE
set clipboard=unnamed   " allows clipboard shared between tmux panes

" LEADER SHORTCUTS
let mapleader=","
inoremap jk <esc>
nnoremap <leader>u :GundoToggle<CR>

" UI CONFIG
" set nu          " line numbers
set noshowmode
set showcmd
set nocursorline    " line highlight
set wildmenu        " command menu better autocomplete cues
set lazyredraw
set showmatch       " [{()}] match highlighting
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
nnoremap <leader><space> :nohlsearch<CR>

" FOLDING
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent   "fold based on indent level
set foldcolumn=0        "remove fold column
let g:pandoc#folding#fdc=0
nnoremap <space> za

" MOVEMENT
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
"nnoremap B 0
nnoremap E $
set mouse=a

" TMUX INTEGRATION
"" block/line cursors in normal/insert mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" SWP FILES
"" move swp files to a separate location
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" SLIME
let g:slime_target = "tmux"
let vimrplugin_assign = 0       "disable underscore to <- shortcut
nmap <leader>f <C-c><C-c>})
nmap <leader>v <S-v><C-c><C-c>

" MISC BINDINGS
nnoremap <leader>d 0D                           " delete line contents but not line itself
                                                " this fixes move by paragraph skipping errors
nnoremap <leader>j kJi<enter><Esc>              " reformats current line indentation

" SPELLING
set spell spelllang=en_gb
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal
nnoremap <leader>s :hi SpellBad cterm=underline<enter>

" DEOPLETE
noremap <Leader>a :call deoplete#toggle()<enter>    " toggle on/off
let g:acp_enableAtStartup = 0                       " disable AutoComplPop
let g:deoplete#enable_at_startup=1                  " enable deoplete at startup
let g:deoplete#enable_smart_case = 1                " use smartcase
" Let <Tab> also do completion
inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ deoplete#mappings#manual_complete()

" PANDOC
let g:pandoc#syntax#conceal#use = 0
"let g:pandoc#syntax#conceal#blacklist = ["codeblock_start", "codeblock_delim", "titleblock", "block"]

" GOYO
let g:goyo_width=100
nnoremap <leader>g :Goyo<enter>

" SNIPPETS
" ...snips

" SUPERTAB
let g:SuperTabDefaultCompletionType = "context"

" NETRW (AKA (V/S)EXPLORE)
let g:netrw_liststyle = 3                   " display style
let g:netrw_banner = 0                      " remove the banner
let g:netrw_winsize = 20                    " width as a %

" PYTHON GOODIES
" let python_highlight_all = 1

" MINIMAL STATUS LINE
hi StatusLine ctermfg=NONE ctermbg=NONE guibg=NONE
hi StatusLineNC ctermfg=NONE ctermbg=NONE guibg=NONE
set statusline=%=%l/%L\ %f\
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
set laststatus=2
set noshowmode

let g:gitgutter_enabled = 0
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! GitGutterAddLine ctermbg=NONE guibg=NONE
hi! GitGutterChangeLine ctermbg=NONE guibg=NONE
hi! GitGutterDeleteLine ctermbg=NONE guibg=NONE
hi! GitGutterChangeDeleteLine ctermbg=NONE guibg=NONE
hi! SignColumn ctermfg=NONE ctermbg=NONE guibg=NONE

" LIMELIGHT
" let g:limelight_conceal_ctermfg = 'gray'
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_ctermfg = 245  " Solarized Base1
" let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
let g:limelight_conceal_ctermfg = '#454d5a'
let g:limelight_conceal_guifg = '#454d5a'
let g:limelight_paragraph_span = 1

" GOYO + LIMELIGHT
autocmd! User GoyoEnter Limelight

" ITALICS
highlight Comment cterm=italic  

" Citations
let g:citation_vim_bibtex_file="~/Zotero/better-bib-refs.bib"
let g:citation_vim_mode="bibtex"
"let g:citation_vim_mode="zotero"
"let g:citation_vim_zotero_path="~/Zotero" 
"let g:citation_vim_zotero_version=5
let g:citation_vim_cache_path='~/.vim/cache/'
let g:citation_vim_outer_prefix="["
let g:citation_vim_inner_prefix="@"
let g:citation_vim_suffix="]"
nnoremap <silent>[unite]c       :<C-u>Unite -buffer-name=citation-start-insert -default-action=append      citation/key<cr>

" VIM WIKI
set nocompatible
filetype plugin on
" let g:vimwiki_list = [{'path': '~/my_site/',
"             \ 'syntax': 'markdown', 'ext': '.md'}]
