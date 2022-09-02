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

set nobackup
set noswapfile
set hidden
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set foldlevelstart=20
set breakindent
set breakindentopt=shift:0

" LaTexのquickfixで画面が狭くならないようにする
au FileType qf call AdjustWindowHeight(2, 10)
function! AdjustWindowHeight(minheight, maxheight)
  exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
endfunction

" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
" Don't save options.
set viewoptions-=options

lua vim.g.tokyonight_colors = { border = "dark3" }
let g:tokyonight_style = 'storm'
colorscheme tokyonight

source ~/.config/nvim/mapping.vim
source ~/.config/nvim/marking.vim

nnoremap <silent> <leader>lg :LazyGit<CR>
nnoremap <silent> <leader>r :IronFocus<CR>

imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:tex_flavor = 'latex'
let g:latex_to_unicode_file_types = ['julia', 'tex', 'latex']

set laststatus=3
