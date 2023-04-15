-- Treesitter: highligh, edit, and navigate code

return { 	
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      -- A list of parser names
      ensure_installed = {
        "lua", 
        "vim", 
        "vimdoc", 
        "javascript", 
        "python", 
        "c_sharp"
      },

      -- Install parsers synchronously
      sync_install = false,

      -- Auto install missing parser when entering buffer
      auto_install = true,

      highlight = {
        enable = true,
      },

      textobjects = {
				select = {
					enable = true, 
					lookahead = true, 
					keymaps = {
						['aa'] = '@parameter.outer',
						['ia'] = '@parameter.inner',
						['af'] = '@function.outer',
						['if'] = '@function.inner',
						['ac'] = '@class.outer',
						['ic'] = '@class.inner',
					},
				},
				move = {
					enable = true, 
					set_jumps = true, 
					goto_next_start = {
						[']m'] = '@function.outer',
						[']]'] = '@class.outer',
					},
					goto_next_end = {
						[']M'] = '@function.outer',
						[']['] = '@class.outer',
					},
					goto_previous_start = {
						['[m'] = '@function.outer',
						['[['] = '@class.outer',
					},
					goto_previous_end = {
						['[M'] = '@function.outer',
						['[]'] = '@class.outer',
					},
				},
				swat = {
					enable = true, 
					swap_next = {
						['<leader>a'] = '@parameter.inner',
					},
					swap_previous = {
						['<leader>A'] = '@parameter.inner',
					},
				}
			}
		}
		end
}
