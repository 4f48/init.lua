	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
	  vim.fn.system({
	    "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim.git",
	    "--branch=stable",
	    lazypath,
	  })
	end
	vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
        	"kdheepak/lazygit.nvim",
                dependencies = {
            		"nvim-lua/plenary.nvim",
        	},
    	},
	{ "neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason-lspconfig.nvim" },
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
		}
	},
	{
		"L3MON4D3/LuaSnip",
		build = "make install_jsregexp",
	},
	{ "folke/neodev.nvim", opts = {} },
	{ "williamboman/mason.nvim" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
})
