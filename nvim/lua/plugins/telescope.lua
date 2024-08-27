return {
	{
		"nvim-telescope/telescope.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"nvim-telescope/telescope-project.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},

		init = function()
			local telescope = require('telescope')
			telescope.setup({
				defaults = { file_ignore_patterns = { "vendor", ".git", "node_modules", ".venv", "venv", "build", "__pycache__" } },
				extensions = {
					file_browser = {
						theme = "ivy",
						-- disables netrw and use telescope-file-browser in its place
						hijack_netrw = true,
						mappings = {
							["i"] = {
								-- your custom insert mode mappings
							},
							["n"] = {
								-- your custom normal mode mappings
							},
						},
					},
				}
			})
			telescope.load_extension("project")
			telescope.load_extension("ui-select")
			telescope.load_extension("file_browser")
		end
	},
}
