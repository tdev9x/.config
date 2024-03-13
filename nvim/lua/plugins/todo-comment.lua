return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")
		vim.keymap.set("n", "<leader>t", "<cmd>TodoTelescope<cr>", {})
		todo_comments.setup()
	end,
}
