return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	  require('nvim-tree').setup()
	  vim.keymap.set("n", "<leader>r", ":NvimTreeToggle<CR>", { silent = true, desc = "Toggle file explorer" })
	  vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { silent = true, desc = "Toggle file explorer on current file" })
	  vim.keymap.set("n", "<leader>t", ":botright term<CR> | :startinsert<CR>")
	  vim.treesitter.stop(bufnr)
  end
}
