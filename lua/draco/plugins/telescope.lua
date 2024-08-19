
-- plugins/telescope.lua:
return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	config = function()
	require('telescope').setup{
	dependencies = { 'nvim-lua/plenary.nvim' },
		defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
			mappings = {
				i = {
					-- map actions.which_key to <C-h> (default: <C-/>)
					-- actions.which_key shows the mappings for your picker,
					-- e.g. git_{create, delete, ...}_branch for the git_branches picker
					["<C-k>"] = "select_default",
					["<C-e>"] = "move_selection_next",
					["<C-i>"] = "move_selection_previous",
				}
			}
		}
	}
end

}

