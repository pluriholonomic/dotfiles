set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Vundle/Vundle.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'docker/docker'
Plugin 'klen/python-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimplyFold'
Plugin 'kien/crtl.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'lervag/vimtex'
call vundle#end()

filetype plugin indent on

set mouse=a
set backspace=indent,eol,start
set shiftwidth=4
set number
set ruler
syntax on 
"let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'

function! CHANGE_CURR_DIR()
	let _dir = expand("%:p:h")
exec "cd " . _dir
	unlet _dir
endfunction


if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
set history=50          " keep 50 lines of command line history
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set autoindent
set expandtab
set smartindent
set hlsearch            " highlight search
set is                  " incremental search

nmap <silent> ,/ :nohlsearch<CR>

set wrapscan 
set shellslash
set mousehide
set smartcase
set ignorecase
set bs=2

let g:Tex_TEXINPUTS = '~/texlive/**, ~/texlive/texmf-dist/tex/**'
let g:Tex_FormatDependency_pdf = 'pdf'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = '/Library/TeX/texbin/pdflatex'
let g:Tex_ViewRule_dvi = 'xdvi'
let g:Tex_ViewRule_pdf = '/usr/local/bin/mupdf $*.pdf'
let g:Tex_DefaultTargetFormat = 'pdf'

syntax on

" let g:ycm_semantic_triggers = {
" 	\   'python': [ 're!\w{2}' ]
" 	\ }
set runtimepath^=~/.vim/bundle/ctrlp.vim
set colorcolumn=80
set textwidth=80
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.tex setlocal textwidth=90

" Function for automatically inserting month, date, year
function! s:UpdateMonthYear()
    0r ~/Dropbox/repos/byzmoto/byzmoto.license 
    let tstamp = strftime("%B %d, %Y")
    %s:MONTH_YEAR_TAG:\=tstamp:g
endfunction

command! UpdateMonthYear call s:UpdateMonthYear()

function! s:TexTemplate()
    0r ~/.vim/tex_template
endfunction

command! TexTemplate call s:TexTemplate()

augroup twig_ft
  au!
  autocmd BufNewFile,BufRead SConscript,SConstruct   set syntax=python
augroup END
