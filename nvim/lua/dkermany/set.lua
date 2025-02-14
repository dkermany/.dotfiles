vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/site/pack/packer/start/vim-python-pep8-indent")
vim.cmd("filetype plugin indent on")

local function set_tab_width_for_filetype()
    local ft = vim.bo.filetype
    if ft == "javascript" or ft == "javascriptreact" or ft == "css" or ft == "html" then
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
    else
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.softtabstop = 4
    end
end

-- Attach the function to the FileType event
vim.api.nvim_create_autocmd("FileType", {
    callback = set_tab_width_for_filetype,
})

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.completeopt= { "menu", "menuone", "noinsert" }

vim.opt.colorcolumn = "80"

-- Ensure the highlight is set after the colorscheme
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#121212" })
    end,
})

-- Apply it immediately as well (in case colorscheme is already set)
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#121212" })
