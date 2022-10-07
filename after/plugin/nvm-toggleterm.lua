local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup {
	open_mapping = [[<c-t>]],
	size = 10,
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shadding_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "tab", -- Only if is float, add float_opts
	close_on_exit = true,
	shell = vim.o.shell,
	-- float_opts = {
	--	border = "curved",
	--	winbled = 0,
	--	highlights = {
	--		border = "Normal",
	--		background = "Normal"
	--	}
	-- }
	 winbar = {
    		enabled = false,
    		name_formatter = function(term) --  term: Terminal
      			return term.name
    		end
  	},
}
