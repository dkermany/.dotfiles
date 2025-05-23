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
local package_path_str = "/home/mstudxk5/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/mstudxk5/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/mstudxk5/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/mstudxk5/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mstudxk5/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
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
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["eslint.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/eslint.nvim",
    url = "https://github.com/MunifTanjim/eslint.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nT\0\1\3\1\3\0\r-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\3�-\1\0\0009\1\2\1B\1\1\1K\0\1\0\0�\rcomplete\nclose\fvisible�\2\1\0\t\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\5\0009\4\3\0009\4\4\4=\4\6\0035\4\a\0=\4\b\0035\4\f\0009\5\t\0009\5\n\0055\a\v\0B\5\2\2=\5\r\0049\5\t\0003\a\14\0005\b\15\0B\5\3\2=\5\16\4=\4\t\3B\1\2\0016\1\17\0009\1\18\1'\3\19\0B\1\2\0012\0\0�K\0\1\0005highlight CmpItemSel guibg=#3e4452 guifg=#ffffff\bcmd\bvim\14<C-Space>\1\3\0\0\6i\6c\0\t<Cr>\1\0\2\t<Cr>\0\14<C-Space>\0\1\0\1\vselect\2\fconfirm\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\3\fmapping\0\14preselect\0\15completion\0\tItem\18PreselectMode\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\3\0\0\n\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\22\0005\3\20\0005\4\5\0005\5\4\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\0045\5\15\0006\6\v\0009\6\f\0069\6\r\6'\b\14\0+\t\2\0B\6\3\2=\6\16\5=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\23\2B\0\2\1K\0\1\0\rsettings\1\0\1\rsettings\0\bLua\1\0\1\bLua\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\1\flibrary\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\1\fglobals\0\1\3\0\0\bvim\frequire\fruntime\1\0\4\16diagnostics\0\14workspace\0\fruntime\0\14telemetry\0\1\0\1\fversion\vLuaJIT\nsetup\vlua_ls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/home/mstudxk5/.local/share/nvim/site/pack/packer/start/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nT\0\1\3\1\3\0\r-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\3�-\1\0\0009\1\2\1B\1\1\1K\0\1\0\0�\rcomplete\nclose\fvisible�\2\1\0\t\0\20\0\0296\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\5\0009\4\3\0009\4\4\4=\4\6\0035\4\a\0=\4\b\0035\4\f\0009\5\t\0009\5\n\0055\a\v\0B\5\2\2=\5\r\0049\5\t\0003\a\14\0005\b\15\0B\5\3\2=\5\16\4=\4\t\3B\1\2\0016\1\17\0009\1\18\1'\3\19\0B\1\2\0012\0\0�K\0\1\0005highlight CmpItemSel guibg=#3e4452 guifg=#ffffff\bcmd\bvim\14<C-Space>\1\3\0\0\6i\6c\0\t<Cr>\1\0\2\t<Cr>\0\14<C-Space>\0\1\0\1\vselect\2\fconfirm\fmapping\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\3\fmapping\0\14preselect\0\15completion\0\tItem\18PreselectMode\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\3\0\0\n\0\24\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\22\0005\3\20\0005\4\5\0005\5\4\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\0045\5\15\0006\6\v\0009\6\f\0069\6\r\6'\b\14\0+\t\2\0B\6\3\2=\6\16\5=\5\17\0045\5\18\0=\5\19\4=\4\21\3=\3\23\2B\0\2\1K\0\1\0\rsettings\1\0\1\rsettings\0\bLua\1\0\1\bLua\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\1\flibrary\0\5\26nvim_get_runtime_file\bapi\bvim\16diagnostics\fglobals\1\0\1\fglobals\0\1\3\0\0\bvim\frequire\fruntime\1\0\4\16diagnostics\0\14workspace\0\fruntime\0\14telemetry\0\1\0\1\fversion\vLuaJIT\nsetup\vlua_ls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
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
