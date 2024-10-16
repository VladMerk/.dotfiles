
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
    -- Themas
    {"ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ...},
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},

    -- Highlight syntax
    {"nvim-treesitter/nvim-treesitter"},
    {
        "vhyrro/luarocks.nvim",
        priority = 1001,
        opts = {
            rocks = {"magick"},
        },
    },

    -- Better escape
    {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    },

    -- Nvim tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },

    -- LSP config
    {"neovim/nvim-lspconfig"},

    -- Lua line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons", 'linrongbin16/lsp-progress.nvim',
        },
    },

    -- BufferLine - строка вкладок
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
        
    -- Toggle Terminal
    {"akinsho/toggleterm.nvim", version = "*", config = true},

    -- Telescope - поиск файлов и выражений
    {
        "nvim-telescope/telescope.nvim", branch = "0.1.x",
        dependencies = {"nvim-lua/plenary.nvim"},
    },

    -- Autocomplete support
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp-signature-help"},

    -- Mason
    {
        "williamboman/mason.nvim",
    },

    -- Git Sign
    {'lewis6991/gitsigns.nvim'},

    -- Mini - автозакрытие скобок
    { 'echasnovski/mini.nvim', version = false },
    { 'echasnovski/mini.move', version = false },
    { 'echasnovski/mini.pairs', version = false },

    -- Flog - красота для Git
    {
        "rbong/vim-flog",
        lazy = true,
        cmd = { "Flog", "Flogsplit", "Floggit" },
        dependencies = {
            "tpope/vim-fugitive",
        },
    },

    -- Fold text
    {
        'kevinhwang91/nvim-ufo',
        dependencies = 'kevinhwang91/promise-async',
    },

})


-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
