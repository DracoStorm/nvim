return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function ()
		local lint = require("lint")
		lint.linters_by_tf = {
			javascript = {"eslint_d"},
			typescript = {"eslint_d"},
			svelte = {"eslint_d"}
		}
		local lint_au_group = vim.api.nvim_create_augroup("lint", {clear = true})

		vim.api.nvim_create_autocmd({"BufEnter","BufWritePost", "InsertLeave"}, {
			group = lint_au_group,
			callback = function ()
				lint.try_lint()
			end
		})
		
		vim.keymap.set("n", "<leader>ll",function ()
			lint.try_lint()
		end, { desc = "trigger linting for current file"})
	end
}
