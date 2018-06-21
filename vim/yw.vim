set background=dark "하이라이팅
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
set formatoptions-=r " disable auto comment
set ruler " 현재 커서 위치 표시
set incsearch " 키워드 입력 시 점진적 검색
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 마지막으로 수정된 곳에 커서를 위치함

set tags+=./tags

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
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
Plugin 'Tagbar' " Tagbar
Plugin 'Syntastic' " 문법 체크


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

let g:colors_name="yw_python.vim"
let python_highlight_all = 1
let python_version_2 = 0
let g:pydiction_location='~/.vim/pydiction/complete-dict'

let c_gnu = 1

"nmap <C-W> <C-W>k
"nmap <C-S> <C-W>j
"nmap <C-A> <C-W>h
"nmap <C-D> <C-W>l
nmap <F2> <C-W>w " 창이동
nmap <F3> gT     " 탭이동

"ctags
if version >= 500
func! Sts( )
   let st = expand("<cword>")
   exe "sts ".st
endfunc
nmap ,st :call Sts()<cr>

func! Tj( )
   let st = expand("<cword>")
   exe "tj ".st
   endfunc
   nmap ,tj :call Tj( )<cr>
   nmap <C-]> :call Tj( )<cr>
endif


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

hi Normal       ctermfg=253         ctermbg=234         cterm=None
hi Cursor       ctermfg=253         ctermbg=57          cterm=None
hi SpecialKey   ctermfg=70          ctermbg=None        cterm=None
hi Directory    ctermfg=57          ctermbg=254         cterm=None
hi ErrorMsg     ctermfg=160         ctermbg=245         cterm=None
hi PreProc      ctermfg=243         ctermbg=None        cterm=Bold
hi Search       ctermfg=125         ctermbg=None        cterm=Bold
hi Type         ctermfg=166         ctermbg=None        cterm=Bold
hi Statement    ctermfg=172         ctermbg=None        cterm=Bold
hi Comment      ctermfg=4         	ctermbg=None        cterm=bold
hi LineNr       ctermfg=244         ctermbg=233         cterm=None
hi NonText      ctermfg=105         ctermbg=None        cterm=Bold
hi DiffText     ctermfg=165         ctermbg=244         cterm=None
hi Constant     ctermfg=76          ctermbg=None        cterm=None
hi Todo         ctermfg=162         ctermbg=None        cterm=Bold
hi Identifier   ctermfg=142         ctermbg=None        cterm=Bold
hi Error        ctermfg=None        ctermbg=196         cterm=Bold
hi Special      ctermfg=172         ctermbg=None        cterm=Bold
hi Ignore       ctermfg=221         ctermbg=None        cterm=Bold
hi Underline    ctermfg=147         ctermbg=None        cterm=Italic

hi FoldColumn   ctermfg=132         ctermbg=None        cterm=None
hi Folded       ctermfg=132         ctermbg=None        cterm=Bold

hi Visual       ctermfg=248         ctermbg=238         cterm=None

hi Pmenu        ctermfg=62          ctermbg=233         cterm=None
hi PmenuSel     ctermfg=69          ctermbg=232         cterm=Bold
hi PmenuSbar    ctermfg=247         ctermbg=233         cterm=Bold
hi PmenuThumb   ctermfg=248         ctermbg=233         cterm=None

hi StatusLineNC ctermfg=248         ctermbg=239         cterm=None
hi StatusLine   ctermfg=39          ctermbg=239         cterm=None
hi VertSplit    ctermfg=239         ctermbg=239         cterm=None

hi TabLine      ctermfg=245         ctermbg=239         cterm=None
hi TabLineFill  ctermfg=239         ctermbg=239
hi TabLineSel   ctermfg=104         ctermbg=236         cterm=Bold
"vim: sw=4