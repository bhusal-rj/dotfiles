return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme "catppuccin"
		require('catppuccin').setup({
			transparent_background = true,
			term_colors = true,
			integrations = {
				neotree = {
					enabled = true,
					show_root = true,
					transparent_panel = false,
				}
			}
		})
	end
}
