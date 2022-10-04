let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_color.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_telescope.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

set mouse=
set nobackup
set noswapfile
set hidden
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set foldlevelstart=20
set breakindent
set breakindentopt=shift:0 " wrapした行もインデントする
set formatoptions+=mM "日本語の行の連結時には空白を入力しない
set laststatus=3 "status bar を一つだけ表示

autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif " Save fold settings.
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
set viewoptions-=options " Don't save options.

source ~/.config/nvim/mapping.vim
