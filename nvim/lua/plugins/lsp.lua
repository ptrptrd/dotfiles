return {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	lazy = false,
	dependencies = {
		'neovim/nvim-lspconfig',

		-- Mason : for installing language lsp 
		{
      'williamboman/mason.nvim',
       build = ':MasonUpdate',
    },
    'williamboman/mason-lspconfig.nvim',

		-- Autocompletion
		'hrsh7th/nvim-cmp',     -- Required
		'hrsh7th/cmp-nvim-lsp', -- Required
		'L3MON4D3/LuaSnip',     -- Required
	},
	config = function()
		-- LSP Setup	
		local lsp = require('lsp-zero').preset({})
		
		lsp.on_attach(function(client, bufnr)
			lsp.default_keymaps({buffer = bufnr})
		end)

		lsp.setup()
		
		-- CMP Keybinds
		local cmp = require('cmp')
		cmp.setup({
			mapping = cmp.mapping.preset.insert {
				['<C-d>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete {},
				['<CR>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				},
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { 'i', 's' }),
				['<S-Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end, { 'i', 's' }),
  	},
	})
    

	end,
	keys = {
		{'<C-l>', '<cmd>Mason<cr>', desc = '[L]anguage Server - Mason'},
		{'<leader>il', '<cmd>LspInstall<cr>', desc = '[I]nstall [L]sp for open file'},
	}
}
