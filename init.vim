let g:python_host_prog = $PYENV_ROOT.'/versions/neovim2/bin/python'
let g:python3_host_prog = $PYENV_ROOT.'/versions/neovim3/bin/python'

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
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
set laststatus=3


" treesitter setting
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
vim.g.tokyonight_colors = { border = "dark3" }
EOF

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

source ~/.config/nvim/mapping.vim

let g:tokyonight_style = 'storm'
colorscheme tokyonight

source ~/.config/nvim/marking.vim

lua require('iron')
lua require('toggle_term')
lua require('bufferl')
lua require('neogit').setup{}
lua require('todo-comments').setup{}
lua require('lualine').setup{ options = { component_separators = '|' , section_separators = { left = '', right = ''} } }
lua require("nvim-tree").setup{}
lua require('gitsigns').setup()

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

nnoremap <silent> <leader>lg :LazyGit<CR>
nnoremap <silent> <leader>r :IronFocus<CR>

" let g:coc_snippet_next = '<tab>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:tex_flavor = 'latex'
" let g:coc_filetype_map = {'tex': 'jl'}
let g:latex_to_unicode_file_types = ['julia', 'tex', 'latex']
