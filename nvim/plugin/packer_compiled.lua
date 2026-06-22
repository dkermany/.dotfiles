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
local package_path_str = "/home/dkermany/.cache/nvim/packer_hererocks/2.1.1774638290/share/lua/5.1/?.lua;/home/dkermany/.cache/nvim/packer_hererocks/2.1.1774638290/share/lua/5.1/?/init.lua;/home/dkermany/.cache/nvim/packer_hererocks/2.1.1774638290/lib/luarocks/rocks-5.1/?.lua;/home/dkermany/.cache/nvim/packer_hererocks/2.1.1774638290/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/dkermany/.cache/nvim/packer_hererocks/2.1.1774638290/lib/lua/5.1/?.so"
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
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["eslint.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/eslint.nvim",
    url = "https://github.com/MunifTanjim/eslint.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["none-ls.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nT\0\1\3\1\3\0\r-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\3€-\1\0\0009\1\2\1B\1\1\1K\0\1\0\0À\rcomplete\nclose\fvisibleý\2\1\0\t\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\5\0009\4\3\0009\4\4\4=\4\6\0035\4\a\0=\4\b\0035\4\f\0009\5\t\0009\5\n\0055\a\v\0B\5\2\2=\5\r\0049\5\t\0003\a\14\0005\b\15\0B\5\3\2=\5\16\4=\4\t\3B\1\2\0016\1\17\0009\1\18\1'\3\19\0B\1\2\0012\0\0€K\0\1\0005highlight CmpItemSel guibg=#3e4452 guifg=#ffffff\bcmd\bvim\14<C-Space>\1\3\0\0\6i\6c\0\t<Cr>\1\0\2\14<C-Space>\0\t<Cr>\0\1\0\1\vselect\2\fconfirm\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\3\15completion\0\14preselect\0\fmapping\0\tItem\18PreselectMode\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nñ\3\0\0\v\0\29\0+6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\b\0004\4\3\0006\5\0\0009\5\4\0059\5\5\5'\a\6\0B\5\2\2'\6\a\0&\5\6\5>\5\1\4=\4\t\0035\4\25\0005\5\v\0005\6\n\0=\6\f\0055\6\14\0005\a\r\0=\a\15\6=\6\16\0055\6\20\0006\a\0\0009\a\17\a9\a\18\a'\t\19\0+\n\2\0B\a\3\2=\a\21\6=\6\22\0055\6\23\0=\6\24\5=\5\26\4=\4\27\3B\0\3\0016\0\0\0009\0\1\0009\0\28\0'\2\3\0B\0\2\1K\0\1\0\venable\rsettings\bLua\1\0\1\bLua\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\1\flibrary\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\1\fglobals\0\1\3\0\0\bvim\frequire\fruntime\1\0\4\14telemetry\0\fruntime\0\14workspace\0\16diagnostics\0\1\0\1\fversion\vLuaJIT\bcmd\1\0\2\bcmd\0\rsettings\0#/mason/bin/lua-language-server\tdata\fstdpath\afn\vlua_ls\vconfig\blsp\bvim\0" },
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/home/dkermany/.local/share/nvim/site/pack/packer/start/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nT\0\1\3\1\3\0\r-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\3€-\1\0\0009\1\2\1B\1\1\1K\0\1\0\0À\rcomplete\nclose\fvisibleý\2\1\0\t\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\5\0009\4\3\0009\4\4\4=\4\6\0035\4\a\0=\4\b\0035\4\f\0009\5\t\0009\5\n\0055\a\v\0B\5\2\2=\5\r\0049\5\t\0003\a\14\0005\b\15\0B\5\3\2=\5\16\4=\4\t\3B\1\2\0016\1\17\0009\1\18\1'\3\19\0B\1\2\0012\0\0€K\0\1\0005highlight CmpItemSel guibg=#3e4452 guifg=#ffffff\bcmd\bvim\14<C-Space>\1\3\0\0\6i\6c\0\t<Cr>\1\0\2\14<C-Space>\0\t<Cr>\0\1\0\1\vselect\2\fconfirm\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\3\15completion\0\14preselect\0\fmapping\0\tItem\18PreselectMode\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nñ\3\0\0\v\0\29\0+6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\b\0004\4\3\0006\5\0\0009\5\4\0059\5\5\5'\a\6\0B\5\2\2'\6\a\0&\5\6\5>\5\1\4=\4\t\0035\4\25\0005\5\v\0005\6\n\0=\6\f\0055\6\14\0005\a\r\0=\a\15\6=\6\16\0055\6\20\0006\a\0\0009\a\17\a9\a\18\a'\t\19\0+\n\2\0B\a\3\2=\a\21\6=\6\22\0055\6\23\0=\6\24\5=\5\26\4=\4\27\3B\0\3\0016\0\0\0009\0\1\0009\0\28\0'\2\3\0B\0\2\1K\0\1\0\venable\rsettings\bLua\1\0\1\bLua\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\1\flibrary\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\1\fglobals\0\1\3\0\0\bvim\frequire\fruntime\1\0\4\14telemetry\0\fruntime\0\14workspace\0\16diagnostics\0\1\0\1\fversion\vLuaJIT\bcmd\1\0\2\bcmd\0\rsettings\0#/mason/bin/lua-language-server\tdata\fstdpath\afn\vlua_ls\vconfig\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

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
