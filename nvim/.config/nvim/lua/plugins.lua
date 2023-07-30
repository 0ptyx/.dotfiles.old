return require('packer').startup(function()
	use('wbthomason/packer.nvim')
    -- Language things
    use('neovim/nvim-lspconfig')
    use("nvim-lua/lsp_extensions.nvim")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use{'nvim-treesitter/nvim-treesitter', run = function() require('nvim-tresitter.install').update({with_sync = true }) end,}
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use('mfussenegger/nvim-dap')
    use{ "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use('theHamsta/nvim-dap-virtual-text')


    -- nvim functionality things
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('mbbill/undotree')
    use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}
    use('windwp/nvim-ts-autotag')


    -- Colors & UI 
    use('kyazdani42/nvim-web-devicons')
    use("EdenEast/nightfox.nvim")
    use('jacoborus/tender.vim')
    use('folke/tokyonight.nvim')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('rebelot/kanagawa.nvim')
    use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }

    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- Other 
    use('folke/zen-mode.nvim')
end)



