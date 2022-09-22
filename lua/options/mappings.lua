local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- save file
map('n','<C-s>','<cmd> w <CR>', opts)

-- create new file
-- :w %:h/newfile.txt
-- map('n','<C-e>','<cmd> e <CR>', opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<Return>', opts)
map('n', '<leader>r', ':Telescope live_grep<Return>', opts)
map('n', '\\', ':Telescope buffers<Return>', opts)
map('n', '<leader>;', ':Telescope help_tags<Return>', opts)

-- Tree
map('n', '<leader>e', ':NvimTreeToggle<Return>', {noremap = true}) --Open/Close Tree Menu

-- LspConfig
-- map('n', '<space>e', vim.diagnostic.open_float, opts)
-- map('n', '[d', vim.diagnostic.goto_prev, opts)
-- map('n', ']d', vim.diagnostic.goto_next, opts)
-- map('n', '<space>q', vim.diagnostic.setloclist, opts)

-- BufferLine
map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

