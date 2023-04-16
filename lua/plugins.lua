-- git ssh 加速
require('packer').init({
  git = {default_url_format = 'git@github.com:%s'}
})

-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  ------------------ plugins ------------------
  -- Packer 插件管理
	use 'wbthomason/packer.nvim'
  -- nvim-tree
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    tag = 'nightly',
  })
  -- bufferline
  use({
    "akinsho/bufferline.nvim",
    requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
  })
  -- telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  -- telescope extensions
  use("LinArcX/telescope-env.nvim")
  use("nvim-telescope/telescope-ui-select.nvim")
  -- treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
  -------------------- LSP --------------------
  -- use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
  use({ "williamboman/nvim-lsp-installer" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
  -- 补全引擎
  use("hrsh7th/nvim-cmp")
  -- Snippet 引擎
  use("hrsh7th/vim-vsnip")
  -- 补全源
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  use("hrsh7th/cmp-path") -- { name = 'path' }
  use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
  -- 代码格式化
  use("mhartington/formatter.nvim")
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
  ---------------- UI Beautify ----------------
  -- gruvbox
  use({
    "ellisonleao/gruvbox.nvim",
    requires = { "rktjmp/lush.nvim" },
  })
  -- alpha-nvim
  use("goolord/alpha-nvim")
  ------------------- codes -------------------
  -- nvim-autopairs
  use("windwp/nvim-autopairs")
  -- Comment
  use("numToStr/Comment.nvim")

end)