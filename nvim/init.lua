require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]
vim.g.terminal_emulator='kitty'
if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

if vim.g.neovide then
   vim.o.guifont = "Hurmit Nerd Font:h14"
   vim.g.neovide_padding_top = 10
   vim.g.neovide_padding_bottom = 0
   vim.g.neovide_theme = 'auto'
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
