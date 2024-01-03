local cmp = require("cmp")

require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers {
	function (server_name)
	    	require("lspconfig")[server_name].setup {}
		end,
	}

cmp.setup({
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources ({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	{
		{ name = "buffer" },
	}),
})

vim.cmd.colorscheme "catppuccin"
