
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>k", ":noh<CR>")

vim.keymap.set({"n", "i"}, "<C-s>", "<cmd>:w<CR>")

vim.keymap.set("n", "<C-j>", "5j")
vim.keymap.set("n", "<C-k>", "5k")

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree left focus<CR>")
vim.keymap.set("n", "<leader>t", ":Neotree float focus<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- BufferLine
vim.keymap.set('n','<C-Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n','<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCloseOthers<CR>')
vim.keymap.set('n', '<C-q>', ':bd<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>s', ':ToggleTerm direction=float<CR>')

-- Ruff LSP
vim.keymap.set('n', "<leader>a", ":lua vim.lsp.buf.code_action()<CR>")

-- CMP
vim.keymap.set('n', "<leader>h", vim.lsp.buf.signature_help, {noremap = true, silent = true})

-- Fold all text
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)


