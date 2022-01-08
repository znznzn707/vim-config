set smarttab
set smartindent
set number 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
syntax on
syntax enable
set nocompatible
set backspace=2
filetype plugin on
set hls
set encoding=utf-8
filetype on
set rtp+=~/.vim/bundle/Vundle.vim

    "Plugin Management
call vundle#begin()
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'luochen1990/rainbow'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'scrooloose/nerdtree'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'vim-scripts/taglist.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'mattn/emmet-vim'
    Plugin 'altercation/vim-colors-solarized'
call vundle#end()

    "rainbow
    let g:rainbow_active = 1
    let g:rainbow_conf = {
        \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
        \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
        \   'operators': '_,\|+\|-_',
        \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
        \   'separately': {
            \       '*': {},
            \       'tex': {
                \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
                \       },
            \       'css': 0,
            \   }
        \}
    "nerdcommenter
        let mapleader = ","
        ""nerdtree
        nmap <F2> :NERDTreeToggle<CR>
        "vim-gitgutter
        let g:gitgutter_terminal_reports_focus = 0
        nnoremap ,gd :GitGutterToggle<CR>
        "vim-scripts/taglist.vim
        map <F5> :Tlist<cr>
        let Tlist_Show_One_File = 1
        let Tlist_Exit_OnlyWindow = 1 
        let Tlist_Use_Right_Window = 1
        let Tlist_GainFocus_On_ToggleOpen = 1

        map <Up> <Nop>
        map <Down> <Nop>
        map <Left> <Nop>
        map <Right> <Nop>
        map z % 
        map <F3> I#<Esc> 
        map <F4> 0x<Esc> 

        set background=light
        colorscheme solarized
        let g:solarized_termcolors=256
