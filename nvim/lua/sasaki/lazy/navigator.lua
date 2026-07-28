return {
	"numToStr/Navigator.nvim",
	config = function ()
	require('Navigator').setup()	
	vim.keymap.set("n", '<leader>n', '<CMD>NavigatorDown<CR>i')
	vim.keymap.set("t", '<leader>n', '<CMD>NavigatorUp<CR>')
	end
}
