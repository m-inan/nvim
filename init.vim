call plug#begin(stdpath('data') . '/plugged')

  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  
  " FZF
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " Status bar
  Plug 'bling/vim-bufferline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Language Syntax
  Plug 'fatih/vim-go'
  Plug 'vim-jp/vim-cpp'
  Plug 'jparise/vim-graphql'
  Plug 'thosakwe/vim-flutter'
  Plug 'pangloss/vim-javascript'
  Plug 'pantharshit00/vim-prisma'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-python/python-syntax'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'stevearc/vim-arduino'

  " Color
  Plug 'arzg/vim-colors-xcode'
  
call plug#end()


" Start My Config

syntax on

set number
set hidden
set nowrap
set expandtab
set tabstop=2
set autoindent
set cursorline
set nohlsearch
set smartindent
set shiftwidth=2
set pumheight=20
set softtabstop=2
set termguicolors
set relativenumber
set encoding=UTF-8
set background=dark

colorscheme xcodewwdc

let mapleader = ' '

nmap <leader>j <C-W><C-J>
nmap <leader>k <C-W><C-K>
nmap <leader>l <C-W><C-L>
nmap <leader>h <C-W><C-H>

nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>

nmap <leader>db :bd<CR>

nmap <leader>H :split<CR>
nmap <leader>V :vsplit<CR>

nnoremap <leader>s :w<CR>
nnoremap <leader>e :E<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

noremap <leader>P "*p
vnoremap <leader>Y "*y

" End My Config


" Coc Nvim
  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  " Show commands.
  nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>

  " If enter is pressed after the brackets are opened, add an extra line
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction


" Git Gutter
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_set_sign_backgrounds = 1

set updatetime=150

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nmap <silent><leader>gu <Plug>(GitGutterUndoHunk)
nmap <silent><leader>ga <Plug>(GitGutterStageHunk)
nmap <silent><leader>gp <Plug>(GitGutterPreviewHunk)
nmap <silent><leader>gt :GitGutterLineHighlightsToggle<CR>

highlight GitGutterAdd    guifg=#33d157
highlight GitGutterChange guifg=#ff9f0e 
highlight GitGutterDelete guifg=#ff385f

highlight DiffAdd    guifg=#33d157
highlight DiffChange guifg=#ff9f0e
highlight DiffDelete guifg=#ff385f 


" Git Fugitive
nmap <silent><leader>gs :G<CR>

nmap <silent><leader>gj :diffget //2<CR>
nmap <silent><leader>gl :diffget //3<CR>


" Vim Airline
let g:airline_theme='monochrome'


" FZF
let g:fzf_preview_window = 'right:60%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp' } }

nmap <silent><leader>t :GFiles<CR>
nmap <silent><leader>b :Buffers<CR>
nmap <silent><leader>/ :BLines<CR>
nmap <silent><leader>f :Rg<CR>


" Vim Colors Xcode
let g:xcodewwdc_emph_types = 1
let g:xcodewwdc_emph_funcs = 0
let g:xcodewwdc_emph_idents = 0
let g:xcodewwdc_match_paren_style = 1
let g:xcodewwdc_dim_punctuation = 0

hi Comment        cterm=italic gui=italic
hi SpecialComment cterm=italic gui=italic

