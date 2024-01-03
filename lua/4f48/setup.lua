local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require("cmp")
local luasnip = require("luasnip")

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
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping(function(fallback)
	      		if cmp.visible() then
				cmp.select_next_item()
	      		elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
	      		elseif has_words_before() then
				cmp.complete()
	      		else
				fallback()
	      		end
    		end, { "i", "s" }),
	}),
	sources = cmp.config.sources ({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
	{
		{ name = "buffer" },
	}),
})

vim.cmd.colorscheme "catppuccin"
