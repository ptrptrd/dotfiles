return {
	'ellisonleao/glow.nvim',
	config = true,
	cmd = 'Glow',
	opts = {
		width = 300,
		height = 100,
		--width_ratio = 0.9,
		height_ratio = 0.9,
	},
	keys = {
		{'<leader>mp', '<cmd>Glow<cr>', desc = '[M]arkdown [P]review'},
	}
}
