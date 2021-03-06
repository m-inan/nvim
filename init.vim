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

  " Language Syntax
  Plug 'jparise/vim-graphql'
  Plug 'thosakwe/vim-flutter'
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'vim-python/python-syntax'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'HerringtonDarkholme/yats.vim'

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
set ignorecase
set cursorline
set nohlsearch
set splitbelow
set splitright
set smartindent
set shiftwidth=2
set pumheight=20
set softtabstop=2
set termguicolors
set relativenumber
set encoding=UTF-8
set background=dark
set formatoptions-=cro

colorscheme xcodewwdc

let mapleader = ' '
let g:netrw_bufsettings = 'nu nobl'

nmap J <C-W><C-J>
nmap K <C-W><C-K>
nmap L <C-W><C-L>
nmap H <C-W><C-H>

nmap <leader>j <C-W><C-J>
nmap <leader>k <C-W><C-K>
nmap <leader>l <C-W><C-L>
nmap <leader>h <C-W><C-H>

nmap <leader>n :bn<CR>
nmap <leader>p :bp<CR>
nmap <silent>ge :q<CR>

nmap <leader>db :bd<CR>
nmap <leader>dba :%bd<CR>

nmap <leader>s :split<CR>
nmap <leader>v :vsplit<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>e :E<CR>

nnoremap <silent> + :resize +5<CR>
nnoremap <silent> _ :resize -5<CR>
nnoremap <silent> = :vertical resize +5<CR>
nnoremap <silent> - :vertical resize -5<CR>

vnoremap <leader>p "*p
vnoremap <leader>y "*y

nnoremap <leader>, <C-o>
nnoremap <leader>. <C-i>

" End My Config


" Coc Nvim
  let g:coc_global_extensions = [
      \'coc-json', 
      \'coc-pairs',
      \'coc-python',
      \'coc-flutter', 
      \'coc-tsserver',
      \'coc-snippets',
      \'coc-prettier',
      \'coc-sourcekit',
      \]

  " Use `gg` to navigate diagnostics
  nmap <silent> gg <Plug>(coc-diagnostic-next)

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Show commands.
  nnoremap <silent><nowait> <space>c :<C-u>CocList commands<cr>

  " If enter is pressed after the brackets are opened, add an extra line
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Git Gutter
let g:gitgutter_map_keys = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_set_sign_backgrounds = 1

set updatetime=50

nmap gn <Plug>(GitGutterNextHunk)
nmap gp <Plug>(GitGutterPrevHunk)

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
nmap <silent>gs :top G<CR>
nmap <silent><leader>gc :top Git commit<CR>

nnoremap <silent><leader>gh :diffget //2<CR>
nnoremap <silent><leader>gl :diffget //3<CR>


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
let g:xcodewwdc_green_comments = 1

hi Comment        cterm=italic gui=italic
hi SpecialComment cterm=italic gui=italic

" green comment
hi Comment guifg=#23ad68 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#35d585 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#35d585 guibg=NONE gui=bold cterm=bold

" emph types
hi Typedef guifg=#b9b5f6 guibg=NONE gui=NONE cterm=NONE
hi LocalType guifg=#c7faa4 guibg=NONE gui=NONE cterm=NONE
hi LibraryType guifg=#64dcd4 guibg=NONE gui=NONE cterm=NONE

" emph funcs
hi FunctionDef guifg=#8884c5 guibg=NONE gui=NONE cterm=NONE
hi LocalFunc guifg=#94c66e guibg=NONE gui=NONE cterm=NONE
hi LibraryFunc guifg=#00aba4 guibg=NONE gui=NONE cterm=NONE

" emph idents
hi IdentifierDef guifg=#8884c5 guibg=NONE gui=NONE cterm=NONE
hi LocalIdent guifg=#94c66e guibg=NONE gui=NONE cterm=NONE
hi LibraryIdent guifg=#00aba4 guibg=NONE gui=NONE cterm=NONE

" match paren style
hi MatchParen guifg=#292c36 guibg=#fef937 gui=NONE cterm=NONE

" punctuation
hi Delimiter guifg=#e7e8eb guibg=NONE gui=NONE cterm=NONE
hi Operator guifg=#e7e8eb guibg=NONE gui=NONE cterm=NONE


