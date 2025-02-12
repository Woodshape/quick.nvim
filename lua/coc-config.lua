vim.api.nvim_set_keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {silent = true})
vim.api.nvim_set_keymap("n", "gi", "<Plug>(coc-implementation)", {silent = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-O>", ":CocList outline<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-I>", ":CocList -I symbols<CR>", {noremap = true})
vim.api.nvim_set_keymap("i", "<C-V>", "coc#refresh()", { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : '<TAB>']], {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-J>", [[coc#pum#visible() ? coc#pum#next(1) : '<C-J>']], {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-K>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-K>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.o.hidden = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
