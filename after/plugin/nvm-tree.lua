-- each of these are documented in `:help nvim-tree.OPTION_NAME`

-- local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  update_cwd          = true,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
  },
  view = {
    width = 30,
    -- height = 30,
    hide_root_folder = false,
    side = 'left',
    adaptive_size = true,
    mappings = {
      custom_only = false,
      list = {
	-- { key ='<C-s>', cb =  tree_cb('split') },
	-- { key ='<C-v>', cb =  tree_cb('vsplit') },
	-- { key ='<C-t>', cb =  tree_cb('tabnew') },
	-- { key ='L', cb =  tree_cb('cd') },
	{ key = "u", action = "dir_up" },
      }
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
}

