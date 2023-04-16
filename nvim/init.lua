----------------------------------
-- NVIM Confiuguration           -
----- Inspired by kickstart.nvim -
----------------------------------

-- Set <space> as leader key before load lazy packages
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Config folders
require("config.options")

-- Lazy Package Manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then 
  vim.fn.system {
    'git', 
    'clone', 
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- Latest stable release
    lazypath, 
}
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
