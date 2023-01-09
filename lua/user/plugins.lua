-- Automatically install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
   augroup packer_user_config
       autocmd!
       autocmd BufWritePost plugins.lua source <afile> | PackerSync
   augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Initialize packer options
-- Have packer use a popup window
packer.init({
    display = {
        open_fn = function() return require("packer.util").float({ border = "rounded" }) end,
    },
})

-- Install your plugins here
return packer.startup(function(use)

    -- General Plugins
	use({ "wbthomason/packer.nvim" }) -- Have packer manage itself
    use({ "karb94/neoscroll.nvim" })
	use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
	use({ "numToStr/Comment.nvim"})
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true }})
	use({ "nvim-telescope/telescope.nvim", requires = "nvim-lua/plenary.nvim" })
	-- use({ "windwp/nvim-autopairs" })
	-- use({ "ahmedkhalf/project.nvim" })

	-- Colorschemes
    use ({ "xiyaowong/nvim-transparent" })
    use ({ "sainnhe/sonokai" })
    use ({ "lunarvim/colorschemes" })
    use ({ "lunarvim/darkplus.nvim" })
    use ({ "folke/tokyonight.nvim" })

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- snippets
	use({ "L3MON4D3/LuaSnip" })
	use({ "rafamadriz/friendly-snippets" })

	-- LSP
	use({ "neovim/nvim-lspconfig" })
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })


	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = function() require('nvim-treesitter.install').update({ with_sync = true }) end })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
