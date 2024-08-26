
local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end
	vim.keymap.set('n', '<C-]>',		api.tree.change_root_to_node,				opts('CD'))
	vim.keymap.set('n', '<C-e>',		api.node.open.replace_tree_buffer,		opts('Open: In Place'))
	vim.keymap.set('n', '<C-k>',		api.node.show_info_popup,					opts('Info'))
	vim.keymap.set('n', '<C-r>',		api.fs.rename_sub,							opts('Rename: Omit Filename'))
	vim.keymap.set('n', '<C-t>',		api.node.open.tab,							opts('Open: New Tab'))
	vim.keymap.set('n', '<C-v>',		api.node.open.vertical,						opts('Open: Vertical Split'))
	vim.keymap.set('n', '<C-x>',		api.node.open.horizontal,					opts('Open: Horizontal Split'))
	vim.keymap.set('n', '<BS>',		api.node.navigate.parent_close,			opts('Close Directory'))
	vim.keymap.set('n', '<CR>',		api.node.open.edit,							opts('Open'))
	vim.keymap.set('n', '<Tab>',		api.node.open.preview,						opts('Open Preview'))
	vim.keymap.set('n', 'a',       api.fs.create,                       opts('Create File Or Directory'))
	vim.keymap.set('n', 'd',       api.fs.remove,                       opts('Delete'))
end

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- empty setup using defaults
	config = function()
	require("nvim-tree").setup({on_attach = my_on_attach})
	local keymap = vim.keymap
	-- optionally enable 24-bit colour
	vim.opt.termguicolors = true

	keymap.set("n", "<leader>we", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	keymap.set("n", "<leader>wF", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
	keymap.set("n", "<leader>wf", "<cmd>NvimTreeFocus<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
	keymap.set("n", "<leader>wc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
	keymap.set("n", "<leader>wr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end
}
