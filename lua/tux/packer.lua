vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use({
	  "folke/tokyonight.nvim",
	  config = function () 
		  vim.cmd("colorscheme tokyonight")
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })

end)
