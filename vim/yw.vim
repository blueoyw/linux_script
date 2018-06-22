set background=dark
set t_Co=256
set nu
set ts=4
set sw=4
set smartindent
set cindent
set hls
set smartcase
set scrolloff=15
set laststatus=2
set ruler " 현재 커서 위치 표시
set incsearch " 키워드 입력 시 점진적 검색
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 마지막으로 수정된 곳에 커서를 위치함
" Set Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

"set tags=/home/syseng/kernelstudy/linux-4.6.3/tags
set tags+=./tags,/usr/local/include/tags

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
set formatoptions=tcroq

set nofoldenable
set enc=utf-8
set fileencodings=utf-8,euc-kr

"cs add /home/syseng/kernelstudy/linux-4.6.3/cscope.out /home/syseng/kernelstudy/linux-4.6.3
set csverb

" configure nerdtree
" https://gist.github.com/dobestan/8e3eac9781baf2e4bd3e#file-vimrc
"
set nocompatible " 오리지널 vi와 호환하지 않음
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

Plugin 'The-NERD-tree' " nerdtree 이용
Plugin 'AutoComplPop' " 자동 완성
Plugin 'taglist-plus' " taglist 이용
Plugin 'Tagbar' " taglist 이용
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dracula/vim'


let NERDTreeWinPos = "left" "NERD Tree 창 왼쪽에 생성
" CR carriage-return
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TlistToggle<CR>

filetype on

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
"let Tlist_WinWidth = 20

"source fold method
set fdm=syntax
nmap <F5> zc " 하나접기
nmap <F6> zo " 하나펴기
"nmap <F5> zM " 다접기
nmap <F4> zR " 다펴기

"let g:colors_name="yw_python.vim"
"let python_highlight_all = 1
"let python_version_2 = 0
"let g:pydiction_location='~/.vim/pydiction/complete-dict'

let c_gnu = 1

"nmap <C-W> <C-W>k
"nmap <C-S> <C-W>j
"nmap <C-A> <C-W>h
"nmap <C-D> <C-W>l
nmap <F2> <C-W>w " 창이동
nmap <F3> gT     " 탭이동

"AutoComplPop function
set wildmode=list:longest,list:full
function! InsertTabWrapper()
	let col = col('.') - 1
	if !col || getline('.')[col - 1] !~ '\k'
		return "\<tab>"
	else
		if pumvisible()
			return "\<c-n>"
		else
			return "\<c-n>\<c-p>"
	endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1


"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++0x'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

syntax on
color dracula
"vim: sw=4
