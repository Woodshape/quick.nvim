local catppuccin = require("catppuccin")

catppuccin.setup {
  flavour = "mocha"
}

vim.api.nvim_command "colorscheme catppuccin"

--vim.cmd([[colorscheme sonokai]])
--vim.g.tokyonight_style = 'night'
--vim.o.background = 'dark'
