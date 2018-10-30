" Enable line numbers
set number
" Set tab width to 2 spaces
set shiftwidth=2
set tabstop=2

" My favourite color scheme
colorscheme nord 
" Set primary font
set guifont=PragmataPro\ Liga:h14

" Enable cyrillic keymap
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Switch keymap on CTRL-6
nnoremap <silent> <C-^> :let &iminsert = (&iminsert == 0 ? 1 : 0)

" Lightline settings
let g:lightline = {
        \ 'colorscheme': 'nord',
        \ 'tabline': {
        \   'left': [['buffers']], 'right': [['close']]
        \ },
        \ 'component_expand': {
        \   'buffers': 'lightline#bufferline#buffers'
        \ },
        \ 'component_type': {
        \   'buffers': 'tabsel'
        \ },
        \ }

" LateX settings for diploma (enabled code highlighting and xelatex)
let g:vimtex_compiler_latexmk = {
  \ 'options' : [
  \ '-xelatex',
  \ '-shell-escape',
  \ '-verbose',
  \ '-file-line-error',
  \ '-interaction=nonstopmode',
  \ '-synctex=1'
  \ ]
  \

