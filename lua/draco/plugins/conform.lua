return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formaters_by_tf = {
				lua = { "stylua" },
				svelte = { { "prettierd", "prettier" } },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				json = { { "prettierd", "prettier" } },
				markdown = { { "prettierd", "prettier" } },
				html = { "htmlbeautifier" },
				rust = { "rustfmt" },
				css = { { "prettierd", "prettier" } },
				scss = { { "prettierd", "prettier" } },
			},
			vim.keymap.set({ "n", "v" }, "<leader>l", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				})
			end, { desc = "Format a file or rangue (in visual mode)" })
		})
	end
}
