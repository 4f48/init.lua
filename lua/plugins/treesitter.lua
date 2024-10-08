return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
				-- disable highlighting on files larger than 100 MB
				disable = function(lang, buf)
					local max_filesize = 100000 * 1024
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
			},
			indent = { enable = true },
		})
	end,
}
