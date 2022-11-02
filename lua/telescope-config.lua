local telescope = require("telescope")

telescope.setup{
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
    }
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      previewer = false,
    }
  }
}

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-N>', ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-W>', "<cmd>lua require('telescope.builtin').grep_string({grep_open_files=true})<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Q>', "<cmd>lua require('telescope.builtin').grep_string()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", { noremap = true })
