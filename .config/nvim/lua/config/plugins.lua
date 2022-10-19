return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-path")
	--use 'williamboman/nvim-lsp-installer'

	--snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	use("mattn/emmet-vim")

	-- color schemes
	use("morhetz/gruvbox")

	-- telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter") --, {'do': ':TSUpdate'}
	use("nvim-treesitter/nvim-treesitter-context") --, {'do': ':TSUpdate'}
	use("p00f/nvim-ts-rainbow")

	-- autopairs
	use("windwp/nvim-autopairs")
    use("kylechui/nvim-surround")

	-- comments
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("numToStr/Comment.nvim")

	-- git
	use("tpope/vim-fugitive")

	-- formatter
	use("sbdchd/neoformat")

	-- lualine
	use("nvim-lualine/lualine.nvim")
	use("kyazdani42/nvim-web-devicons")

	use("dstein64/vim-startuptime")
	use("lewis6991/impatient.nvim")

    use("pearofducks/ansible-vim")

    use("editorconfig/editorconfig-vim")
end)
