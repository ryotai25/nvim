let g:startify_bookmarks = [ {'n': '~/.config/nvim/init.vim'}, {'z': '~/.zshrc'}, {'f': '~/.config/fish/config.fish'}, 
            \{'s': '~/.julia/dev/SeismicAnalysis/src/SeismicAnalysis.jl'}, {'c': '~/.julia/dev/CADs/src/CADs.jl'}, 
            \{'g': '~/.julia/dev/GraphicalLassos/src/GraphicalLassos.jl'}, {'t': '~/ghq/github.com/ryotai25/Tmp.jl/src/Tmp.jl'},
            \{'e': '~/ghq/github.com/ryotai25/Experiments.jl/src/Experiments.jl'}]
let g:startify_change_to_vcs_root = 1
nnoremap <Leader>s  :Startify<CR>
