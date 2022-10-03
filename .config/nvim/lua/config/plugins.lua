return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("mattn/emmet-vim")

	-- autopairs
	use("windwp/nvim-autopairs")
	use("kylechui/nvim-surround")

	-- comments
	use("numToStr/Comment.nvim")

	-- git
	use("tpope/vim-fugitive")
end)
