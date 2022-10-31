-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/Ryotai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/Ryotai/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/Ryotai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/Ryotai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/Ryotai/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { 'require("setup/bufferline")' },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["denops.vim"] = {
    load_after = {
      ["vim-pluto"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/denops.vim",
    url = "https://github.com/vim-denops/denops.vim"
  },
  ["drex.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/drex.nvim",
    url = "https://github.com/theblob42/drex.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["iron.nvim"] = {
    config = { 'require("setup/iron")' },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/iron.nvim",
    url = "https://github.com/hkupty/iron.nvim"
  },
  ["julia-vim"] = {
    config = { "\27LJ\2\nQ\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\4\0\0\njulia\btex\nlatex latex_to_unicode_file_types\6g\bvim\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/julia-vim",
    url = "https://github.com/JuliaEditorSupport/julia-vim"
  },
  ["lazygit.nvim"] = {
    config = { 'require("setup/lazygit")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\në\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\23section_separators\1\0\2\nright\5\tleft\5\1\0\1\25component_separators\6|\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["memolist.vim"] = {
    config = { 'require("setup/memolist")' },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/memolist.vim",
    url = "https://github.com/ryotai25/memolist.vim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nnoice\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { 'require("setup/cmp")' },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nŸ\2\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\v\0005\4\b\0005\5\t\0=\5\n\4=\4\f\3=\3\r\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aal\16@loop.outer\ail\16@loop.inner\aaf\20@function.outer\aif\20@function.inner\1\0\2\14loadahead\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\r\0\0\njulia\blua\bvim\nlatex\rmarkdown\tjson\tfish\vpython\6r\ttoml\tbash\nregex\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/kkharji/sqlite.lua"
  },
  ["telescope-command-palette.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-command-palette.nvim",
    url = "https://github.com/LinArcX/telescope-command-palette.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-ghq.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-ghq.nvim",
    url = "https://github.com/nvim-telescope/telescope-ghq.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope-z.nvim"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/telescope-z.nvim",
    url = "https://github.com/nvim-telescope/telescope-z.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("setup/telescope")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tint.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ttint\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/tint.nvim",
    url = "https://github.com/levouh/tint.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\20start_in_insert\1\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n \0\1\2\0\2\0\0039\1\1\0=\1\0\0K\0\1\0\ndark3\vborderç\1\1\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\14on_colors\0\1\0\1\nstyle\nstorm\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/sirver/ultisnips"
  },
  ["vim-findroot"] = {
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/vim-findroot",
    url = "https://github.com/mattn/vim-findroot"
  },
  ["vim-im-select"] = {
    config = { "\27LJ\2\nd\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0005com.apple.inputmethod.Kotoeri.RomajiTyping.Roman\22im_select_default\6g\bvim\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/vim-im-select",
    url = "https://github.com/brglng/vim-im-select"
  },
  ["vim-pluto"] = {
    after = { "denops.vim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vim-pluto",
    url = "https://github.com/hasundue/vim-pluto"
  },
  ["vim-translator"] = {
    config = { "\27LJ\2\nÿ\1\0\0\6\0\r\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22<Plug>TranslateWV\6v\1\0\1\fnoremap\2\21<Plug>TranslateW\14<Leader>w\6n\20nvim_set_keymap\bapi\aja\27translator_target_lang\6g\bvim\0" },
    loaded = true,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/start/vim-translator",
    url = "https://github.com/voldikss/vim-translator"
  },
  vimtex = {
    config = { 'require("setup/vimtex")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: tint.nvim
time([[Config for tint.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ttint\frequire\0", "config", "tint.nvim")
time([[Config for tint.nvim]], false)
-- Config for: iron.nvim
time([[Config for iron.nvim]], true)
require("setup/iron")
time([[Config for iron.nvim]], false)
-- Config for: julia-vim
time([[Config for julia-vim]], true)
try_loadstring("\27LJ\2\nQ\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\4\0\0\njulia\btex\nlatex latex_to_unicode_file_types\6g\bvim\0", "config", "julia-vim")
time([[Config for julia-vim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\20start_in_insert\1\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("setup/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n \0\1\2\0\2\0\0039\1\1\0=\1\0\0K\0\1\0\ndark3\vborderç\1\1\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0'\2\b\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\14on_colors\0\1\0\1\nstyle\nstorm\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\në\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\23section_separators\1\0\2\nright\5\tleft\5\1\0\1\25component_separators\6|\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fdefault\2\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-im-select
time([[Config for vim-im-select]], true)
try_loadstring("\27LJ\2\nd\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0005com.apple.inputmethod.Kotoeri.RomajiTyping.Roman\22im_select_default\6g\bvim\0", "config", "vim-im-select")
time([[Config for vim-im-select]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require("setup/bufferline")
time([[Config for bufferline.nvim]], false)
-- Config for: memolist.vim
time([[Config for memolist.vim]], true)
require("setup/memolist")
time([[Config for memolist.vim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nŸ\2\0\0\6\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\v\0005\4\b\0005\5\t\0=\5\n\4=\4\f\3=\3\r\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aal\16@loop.outer\ail\16@loop.inner\aaf\20@function.outer\aif\20@function.inner\1\0\2\14loadahead\2\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\r\0\0\njulia\blua\bvim\nlatex\rmarkdown\tjson\tfish\vpython\6r\ttoml\tbash\nregex\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-translator
time([[Config for vim-translator]], true)
try_loadstring("\27LJ\2\nÿ\1\0\0\6\0\r\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\n\0'\3\a\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\22<Plug>TranslateWV\6v\1\0\1\fnoremap\2\21<Plug>TranslateW\14<Leader>w\6n\20nvim_set_keymap\bapi\aja\27translator_target_lang\6g\bvim\0", "config", "vim-translator")
time([[Config for vim-translator]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n`\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\vconfig\26alpha.themes.startify\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType latex ++once lua require("packer.load")({'vimtex'}, { ft = "latex" }, _G.packer_plugins)]]
vim.cmd [[au FileType julia ++once lua require("packer.load")({'vim-pluto'}, { ft = "julia" }, _G.packer_plugins)]]
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'lazygit.nvim', 'noice.nvim', 'telescope.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /Users/Ryotai/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
