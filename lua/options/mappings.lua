local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- save file
map('n','<C-s>','<cmd> w <CR>', opts)

-- Tree
map('n', '<leader>e', ':NvimTreeToggle<Return>', {noremap = true}) --Open/Close Tree Menu

-- BufferLine
map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
