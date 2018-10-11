execute pathogen#infect()
syntax on
color dracula
filetype plugin indent on

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

set number

autocmd vimenter * NERDTree
autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif

let g:livedown_autorun = 1
let g:livedown_browser = "google-chrome-stable"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key bindings
nmap <F8> :TagbarToggle<CR>
