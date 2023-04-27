return {
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	lazy = false,
	opts = {
		options = {
			always_show_bufferline = true, 
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = true
				}
			},
		}
	},	
	keys = {
		{'<leader>bn', '<cmd>BufferLineCycleNext<cr>', desc = '[B]uffer [N]ext'},
		{'<leader>bp', '<cmd>BufferLineCyclePrev<cr>', desc = '[Buffer] [P]rev'},
		{'<leader>b1', '<cmd>BufferLineGoToBuffer 1<cr>', desc = 'Visible [B]uffer 1'},
		{'<leader>b2', '<cmd>BufferLineGoToBuffer 2<cr>', desc = 'Visible [B]uffer 2'},
		{'<leader>b3', '<cmd>BufferLineGoToBuffer 3<cr>', desc = 'Visible [B]uffer 3'},
		{'<leader>b4', '<cmd>BufferLineGoToBuffer 4<cr>', desc = 'Visible [B]uffer 4'},
		{'<leader>b5', '<cmd>BufferLineGoToBuffer 5<cr>', desc = 'Visible [B]uffer 5'},
		{'<leader>b6', '<cmd>BufferLineGoToBuffer 6<cr>', desc = 'Visible [B]uffer 6'},
		{'<leader>b7', '<cmd>BufferLineGoToBuffer 7<cr>', desc = 'Visible [B]uffer 7'},
		{'<leader>b8', '<cmd>BufferLineGoToBuffer 8<cr>', desc = 'Visible [B]uffer 8'},
		{'<leader>b9', '<cmd>BufferLineGoToBuffer 9<cr>', desc = 'Visible [B]uffer 9'},
		{'<leader>b!', '<cmd>BufferLineGoToBuffer -1<cr>', desc = 'Visible [B]uffer -1'},
	}
}
