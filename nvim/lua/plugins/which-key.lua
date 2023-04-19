  -- Which Key: show pending keybinds
 return { 
    'folke/which-key.nvim',
		config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
			require("which-key").setup({})
			
			-- Global Mappings
			---- Normal Mode
			local opts = {
				mode = "n", -- Normal mode
				prefix = "<leader>",
				buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
				silent = true, -- use `silent` when creating keymaps
				noremap = true, -- use `noremap` when creating keymaps
				nowait = false, -- use `nowait` when creating keymaps
			}

			require('which-key').register{
				['<leader>'] = {
					f = { name = '[F]ind' }, -- Fuzzy find things (treesitter.lua)
					p = { '<cmd>Lazy<cr>', '[P]lugin Manager' }, -- Open Lazy Package Manager
				},
				opts
			}
    end,
} 
