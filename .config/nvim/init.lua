#Welcome to the world of A


require('MultiversalRainbows.options')
require('MultiversalRainbows.keybindings')
require('MultiversalRainbows.colorscheme')

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('MultiversalRainbows.lazy')
