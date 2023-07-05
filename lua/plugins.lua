local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({

    -- General
    { "folke/lazy.nvim" },
    { "karb94/neoscroll.nvim", 
        config = function() require("config.neoscroll") end 
    },
    { "kyazdani42/nvim-tree.lua", 
        dependencies = "kyazdani42/nvim-web-devicons" ,
        config = function() require("config.nvim-tree") end,
    },
    { "numToStr/Comment.nvim",
        config = function() require("config.Comment") end 
    },
    { "lukas-reineke/indent-blankline.nvim", 
        config = function() require("config.indent-blankline") end 
    },
    { "nvim-lualine/lualine.nvim",
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function() require("config.lualine") end,
    },
    { "nvim-telescope/telescope.nvim",
        dependencies = "nvim-lua/plenary.nvim",
        config = function() require("config.telescope") end,
    },

    -- Colorschemes
    { "xiyaowong/nvim-transparent",
        config = function () require("config.nvim-transparent") end
    },
    { "sainnhe/sonokai" },
    { "lunarvim/colorschemes" },
    { "lunarvim/darkplus.nvim" },
    { "folke/tokyonight.nvim" },
     
    -- cmp plugins
    { "hrsh7th/nvim-cmp",
        config = function () require("config.nvim-cmp") end
    },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "saadparwaiz1/cmp_luasnip" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lua" },

    -- snippets
    { "L3MON4D3/LuaSnip" },
    { "rafamadriz/friendly-snippets" },
    
    -- LSP
    { "neovim/nvim-lspconfig",
        config = function () require("config.lspconfig") end
    },
    { "williamboman/mason.nvim",
        config = function () require("config.mason") end
    },
    { "williamboman/mason-lspconfig.nvim" },
    
    -- Treesitter
    { "nvim-treesitter/nvim-treesitter",
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        config = function () require("config.treesitter") end
    }
})
