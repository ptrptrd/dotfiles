-- Nvim Tree: File explorer
return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
  config = function()
		require('nvim-web-devicons').setup{
			default = true, 
			strict = true,
		}
		require('nvim-tree').setup{}
	end		
}
