-- 基础配置('./lua')
require("basic")
require("keybindings")
require("plugins")
require("colorscheme")
require("autocmds")

-- 插件配置('./lua/core/init.lua')
-- core plugins config
require('core.alpha')
require("core.nvim-tree")
require("core.nvim-treesitter")
require("core.bufferline")
require("core.telescope")
require("core.nvim-autopairs")
require("core.comment")


-- references
-- https://github.com/LunarVim/LunarVim
-- https://github.com/leslie255/nvim-config
-- https://github.com/nshen/learn-neovim-lua