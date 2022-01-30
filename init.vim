
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive' "git short cuts

"highlights
Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'

Plug 'morhetz/gruvbox'
"Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bling/vim-airline' "status bar
Plug 'vim-airline/vim-airline-themes' "Themes
Plug 'isRuslan/vim-es6'
Plug 'alvan/vim-closetag'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set inccommand="split"

set tabstop=2
set shiftwidth=2
set expandtab

"NerdTree config
let NERDTreeShowHidden=1
let NERDTreeMapActivateNode='<space>'

" airline vim
let g:airline_left_sep = ''
let g:airline_right_sep = ''


" coc.vim config
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
autocmd CursorHold * silent call CocActionAsync('highlight')

if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

"set tab to autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


let mapleader="\<space>"
nmap <leader>rc :e ~/.config/nvim/init.vim "open vimrc
nmap <C>s :source  ~/.config/nvim/init.vim "reload vim

"Split panes
nmap <leader>v :vsplit<CR>
nmap <leader>h :split<CR>

"Panes navigation
nmap <leader>w :wincmd k<CR>        " go window up
nmap <leader>s :wincmd j<CR>        " go window down
nmap <leader>a :wincmd h<CR>        " go window left
nmap <leader>d :wincmd l<CR>        " go window right

"NerdTree
nmap <C-]> :NERDTreeToggle<CR> 
nmap <C-F> :NERDTreeFind<CR>

nmap <silent> K :call CocAction('doHover')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"Close Tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>'

"Snippets
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"

let g:UltiSnipsSnippetsDirr="~/.config/nvim/UltiSnips"

