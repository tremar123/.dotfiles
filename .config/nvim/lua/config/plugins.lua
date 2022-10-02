return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("mattn/emmet-vim")

	-- autopairs
	use("windwp/nvim-autopairs")
	use("ur4ltz/surround.nvim")

	-- comments
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("numToStr/Comment.nvim")

	-- git
	use("tpope/vim-fugitive")
end)
