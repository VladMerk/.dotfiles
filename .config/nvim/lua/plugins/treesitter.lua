
require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "css",
        "python",
        "dockerfile",
        "html",
        "json",
        "json5",
        "lua",
        "yaml",
        "vim",
        "javascript",
        "typescript",
        "tsx",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
