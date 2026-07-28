vim.g.mapleader = " " 
require('sasaki.lazy_init')
vim.wo.number = true
vim.cmd("colorscheme cyberdream")
-- vim.keymap.set("n", "<leader>w", "<CMD>lua vim.diagnostic.open_float()<CR>")
vim.cmd("autocmd TermOpen * resize 10")
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and  -
