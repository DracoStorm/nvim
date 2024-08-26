return { 
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag"
	},
	build = ':TSUpdate',
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
			ignore_install = { "latex" },
			auto_install = true,
			highlight = {
				enable = true,
				disable = { "latex" },
			},
			autotag = {
				enable = true
			}
		})
	end
}
