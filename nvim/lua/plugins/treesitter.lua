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
    }
  end
}
