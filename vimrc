source $VIMRUNTIME/defaults.vim
" Custom settings!
set hlsearch
set incsearch
set autoindent
set number
set ruler
set tabstop=4
syntax on

" Custom keybinds
ino " ""<left>
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>

" Language-Specific keybinds
autocmd FileType python nmap <F5> : :!python3 %:p
autocmd FileType kotlin nmap <F5> : :!kotlinc -include-runtime -d a.jar %:p && java -jar a.jar

"Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'rakr/vim-one'
Plug 'OmniSharp/omnisharp-vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

let g:OmniSharp_server_use_net6 = 1

" Colors
"set background=light
"colorscheme one
