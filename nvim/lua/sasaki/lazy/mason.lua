return {{
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
 },
    "mason-org/mason-lspconfig.nvim",
		enabled = not os.getenv("NVIM_GIT_DIFF"),
		opts = {},

		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
	},
}

