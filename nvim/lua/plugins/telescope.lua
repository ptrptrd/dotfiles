-- Telescope: Fuzzy Finder

return {
	{ 
		'nvim-telescope/telescope.nvim',
		version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-live-grep-args.nvim',
		},
		config = function()
			local lga_actions = require('telescope-live-grep-args.actions')
			require('telescope').setup{
				defaults = {
					mappings = {
						i = {
							['<C-u>'] = false,
							['<C-d>'] = false,
						},
					},
				},
				extensions = {
					live_grep_args = {
						auto_quoting = true, -- enable/disable auto-quoting
						-- define mappings, e.g.
						mappings = { -- extend mappings
							i = {
								["<C-k>"] = lga_actions.quote_prompt(),
								["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
							},
						},
					}
				}
			}

			-- Live Grep : grep word under cursor
			local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")
			vim.keymap.set("n", "<leader>gc", live_grep_args_shortcuts.grep_word_under_cursor)

			-- See `:help telescope.builtin`
			vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
			vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
			vim.keymap.set('n', '<leader>/', function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
					winblend = 10,
					previewer = false,
				})
			end, { desc = '[/] Fuzzily search in current buffer' })

			vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
			vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
			vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]Find current [W]ord' })
			vim.keymap.set('n', '<leader>fg', '<cmd>lua require(\'telescope\').extensions.live_grep_args.live_grep_args()<cr>', { desc = '[F]ind by [G]rep' })
			vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
		end
	},
	{ 
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
		cond = function()
			return vim.fn.executable 'make' == 1
		end,
 		config = function()
			require('telescope').load_extension('fzf')
		end
	}
}
