filetype indent plugin on

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set number

" alias the NERDTree command to nt
command Nt NERDTree

color colorsbox-stnight
set background=dark

" removes functionality of arrow keys
inoremap <Up>     <NOP>
inoremap <Down>   <NOP>
inoremap <Left>   <NOP>
inoremap <Right>  <NOP>
noremap  <Up>     <NOP>
noremap  <Down>   <NOP>
noremap  <Left>   <NOP>
noremap  <Right>  <NOP>

set term=screen-256color
let g:solarized_termcolors=256

execute pathogen#infect()

" syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline setup
let g:airline_powerline_fonts = 1
let g:airline_theme='kolor'
set laststatus=2

" numbers.vim settings
let g:numbers_exclude = ['nerdtree']
