vim.g.mapleader = " "
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '80'
vim.o.showmode = true
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

local options = { noremap = true }

vim.api.nvim_set_keymap("n", "<leader>s", ":source %<CR>", options)

vim.api.nvim_set_keymap("i", "jj", "<Esc>", options)
vim.api.nvim_set_keymap("i", "jk", "<Esc>", options)
vim.api.nvim_set_keymap("i", "kj", "<Esc>", options)
vim.api.nvim_set_keymap("i", "kk", "<Esc>", options)

vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', options)

vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', options)
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', options)
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', options)
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', options)
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', options)
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', options)
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', options)
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', options)
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', options)
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', options)
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', options)
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<C-N>', ":Lexplore<CR> :vertical resize 30<CR>", options)

-- vim.g["netrw_banner"] = 0
-- vim.g["netrw_liststyle"] = 3
-- vim.g["netrw_winsize"] = 25

vim.cmd([[
  hi ActiveWindow guibg=#1B1B26
  hi InactiveWindow guibg=#2d2d3b

  augroup WindowManagement
    autocmd!
    autocmd WinEnter * call Handle_Win_Enter()
  augroup END

  function! Handle_Win_Enter()
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
    highlight SignColumn guibg=Normal:ActiveWindow,NormalNC:InactiveWindow
  endfunction
]])

