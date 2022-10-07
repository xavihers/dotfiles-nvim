-- Line number
vim.wo.number = true
vim.wo.relativenumber = true

-- Completion
vim.opt.completeopt = "menu,menuone,noselect"

-- Select text with mouse
vim.cmd [[set mouse=a]]

-- Copy / Paste from clipboard to vim or outside
vim.cmd [[set clipboard=unnamedplus]]

-- Bufferline
vim.opt.termguicolors = true

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
vim.g.tokyonight_transparent_sidebar = true

--onedarkpro
--vim.cmd("colorscheme onedarkpro")

--nightfox
vim.cmd("colorscheme nightfox")

-- Disable provider Nodejs
-- let g:loaded_node_provider = 0`

-- Python provider
-- let g:python3_host_prog = "/usr/bin/python3"

--vim.g.user_emmet_mode='a'

vim.opt.timeoutlen = 1000
