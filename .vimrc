set nocompatible              " Vim을 Vi와 호환 모드에서 벗어나게 함
filetype off                  " 플러그인 실행 전에 파일 유형 설정을 끔

" Vundle 설정
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--------------------
" 플러그인 목록
"--------------------
" Vundle 관리 플러그인
Plugin 'VundleVim/Vundle.vim'

" VSCode 같은 테마
Plugin 'junegunn/seoul256.vim'   " vim-code 테마
Plugin 'vim-airline/vim-airline'   " 상태바
Plugin 'vim-airline/vim-airline-themes'  " Airline 테마

" 파일 탐색기
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Git 인터페이스
Plugin 'tpope/vim-fugitive'

" 자동 완성 (YouCompleteMe)
Plugin 'Valloric/YouCompleteMe'

" 코드 문법 강조
Plugin 'sheerun/vim-polyglot'

" Fuzzy Finder
Plugin 'junegunn/fzf', {'do': { -> fzf#install() }}
Plugin 'junegunn/fzf.vim'

" 따옴표, 괄호, 태그 등 감싸기
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

"--------------------
" 여기까지 플러그인 설치
"--------------------
call vundle#end()
filetype plugin indent on     " 파일 유형에 맞는 플러그인과 자동 들여쓰기 켜기
syntax on                     " 문법 강조 켜기

"--------------------
" 기본 설정
"--------------------
set number                    " 줄 번호 표시
set cursorline                " 현재 줄 강조
set clipboard=unnamedplus     " 시스템 클립보드와 연동
set tabstop=4                 " 탭을 4칸으로 설정
set shiftwidth=4              " 자동 들여쓰기 시 4칸 사용
set expandtab                 " 탭을 스페이스로 변환
set autoindent                " 자동 들여쓰기
set smartindent               " 스마트 들여쓰기
set smarttab                  " 스마트 탭
set laststatus=0              " 상태바 항상 표시
set cindent                   " C 스타일 자동 들여쓰기
set hlsearch                  " 검색 결과 강조
set completeopt-=preview      " 자동 완성 시 미리보기 비활성화

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" 키 매핑
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden

" 버퍼 새로 열기
" 원래 이 단축키로 바인딩해 두었던 :tabnew를 대체한다.
nmap <leader>T :enew<cr>

" 다음 버퍼로 이동
nmap <leader>l :bnext<CR>

" 이전 버퍼로 이동
nmap <leader>h :bprevious<CR>

" 현재 버퍼를 닫고 이전 버퍼로 이동
" 탭 닫기 단축키를 대체한다.
nmap <leader>bq :bp <BAR> bd #<CR>

" 모든 버퍼와 각 버퍼 상태 출력
nmap <leader>bl :ls<CR>

" 테마 설정
set t_Co=256
set t_ut=
let g:seoul256_background = 235
colorscheme seoul256

" 상태바 설정
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'

" 왼쪽에 현재 모드만 표시
let g:airline_section_a = airline#section#create(['mode'])

" 나머지 불필요한 부분 비우기
let g:airline_section_b = ''
let g:airline_section_c = ''
let g:airline_section_error = ''
let g:airline_section_warning = ''

" 오른쪽에 파일 언어와 라인 정보만 표시
let g:airline_section_x = airline#section#create(['filetype'])
let g:airline_section_y = ''
let g:airline_section_z = airline#section#create(['Ln %l, Col %c'])
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b' ],
      \ [ 'x', 'z' ]
      \ ]

" NERDTree 설정
nnoremap <F2> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" devicons 활성화
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

" FZF 설정 (파일 검색)
nnoremap <C-p> :Files<CR>

" Vim-Fugitive 설정 (Git 인터페이스)
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Gpull<CR>

" YouCompleteMe 설정 (자동 완성)
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_add_preview_to_completeopt = 0

" Cursor 모양 설정
let &t_SI = "\<ESC>[5 q"
let &t_EI = "\<ESC>[2 q"
