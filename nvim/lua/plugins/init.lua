return {
  -- Which Key: show pending keybinds
  { 
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
			require("which-key").setup({})
    end,
  },  
}
