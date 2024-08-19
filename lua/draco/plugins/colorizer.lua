return {
	"NvChad/nvim-colorizer.lua",
	config = function()
	-- need to specify buftypes
	require 'colorizer'.setup{
	buftypes = {
		"*",
		-- exclude prompt and popup buftypes from highlight
		"!prompt",
		"!popup",
	}}
	end
}
