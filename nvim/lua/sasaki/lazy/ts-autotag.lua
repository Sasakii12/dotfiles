return {
	"windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        require('nvim-ts-autotag').setup({
            opts = {
                -- Defaults
                enable_close = true,           -- Auto close tags
                enable_rename = true,          -- Auto rename pairs
                enable_close_on_slash = false, -- Close on [/] checks
            }
        })
    end,
    -- Highly recommended to load on these events for performance
    event = { "InsertEnter", "VeryLazy" },

}
