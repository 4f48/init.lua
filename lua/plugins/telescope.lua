return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim", "debugloop/telescope-undo.nvim" },
	opts = function()
		require("telescope").setup({
			extensions = {
				undo = { }
			}
		})
		require("telescope").load_extension("undo")
	end,
	keys = {
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fs", "<cmd>Telescope git_status<cr>", desc = "Find Git changes" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live GREP" },
		{ "<leader>fu", "<cmd>Telescope undo<cr>" }
	},
	lazy = true
}
