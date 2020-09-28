"***************************************************************************
" Vim-Plug Core
"***************************************************************************
if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "javascript,php,python,ruby"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))


"***************************************************************************
" Plug packages
"***************************************************************************

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

"***************************************************************************
" Vim Configuration
"***************************************************************************

set hidden
set number
set relativenumber
" Add suport to mouse
set mouse=a
" Add preview to text changes
set inccommand=split

"***************************************************************************
" Keyboard shortcuts
"***************************************************************************
" Key leadder
let mapleader="\<space>"

" Source
nnoremap <leader>cl :source ~/.config/nvim/init.vim<esc>

nnoremap <leader>bvs :vsplit<esc>
" NERDTree toggle
nnoremap <leader>nt :NERDTreeToggle<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

"***************************************************************************
" COC Configuration
"***************************************************************************
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json'
    \ ]
