local opts = {
	mode = "n",  -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
	["<space>"] = { "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", "Find Files" },
	["/"] = { "<cmd>Telescope live_grep hidden=true no_ignore=true<cr>", "Find Text" },
	["."] = { "<cmd>Neotree toggle<CR>", "File Explorer" },
	["s"] = { "<cmd>w!<CR>", "Save File" },
	["q"] = { "<cmd>q!<CR>", "Quit Neovim" },
	["y"]={'<cmd>+y"<CR>',"Yank to system clipboard"},
	-- [";"] = { "<cmd>source $MYVIMRC<CR>", "Reload nvim" },

	g = {
		name = "Git",
		g = { "<cmd>LazyGit<CR>", "Lazygit" },
		j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
		k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
		l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
		p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
		r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
		R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
		s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
		u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
		o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
		b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
		c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
		d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
	},

	l = {
		name = "LSP",
		a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
		d = { "<cmd>Telescope diagnostics<cr>", "Document Diagnostics" },
		f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
		i = { "<cmd>LspInfo<cr>", "Info" },
		I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
		j = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
		k = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
		l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
		q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
		r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
		o = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" },
		S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" },
	},

	c = {
		name = "Code",
	},
	r = { "<cmd><cr>", "Run" },
	b = {
		name = "Buffers",
		d = { "<cmd>bd<cr>", "Delete" },
		D = { "<cmd>BufferLineCloseOthers<cr>", "Delete Other" },
		p = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
		n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
		L = { "<cmd>BufferLineCloseRight<cr>", "Delete Right" },
		H = { "<cmd>BufferLineCloseLeft<cr>", "Delete Left" },
		b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "List" },
	},

	w = {
		name = "Window",
		l = { "<C-w>l", "Right" },
		h = { "<C-w>h", "Left" },
		j = { "<C-w>j", "Down" },
		k = { "<C-w>k", "Up" },
		["|"] = { "<C-w>|", "Full Window" },
		v = { "<C-w>v", "Split Right" },
		s = { "<C-w>s", "Split Down" },
		L = { "<C-w>5>", "Expand Right" },
		["."] = { "<C-w>5>", "Expand Right" },
		H = { "<C-w>5<", "Expand Left" },
		[","] = { "<C-w>5<", "Expand Left" },
		J = { "<cmd>resize +5<cr>", "Expand Down" },
		K = { "<cmd>resize -5<cr>", "Expand Up" },
		q = { "<C-w>q", "Quit Window" },
		w = { "<C-w>s", "Switch Window" },
		x = { "<C-w>x", "Swap Window" },
		["="] = { "<C-w>=", "Balance Window" },
	},

	f = {
		name = "Find",
		f = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Files" },
		F = { "<cmd>lua require('telescope.builtin').find_files{ hidden=true, no_ignore=true }<cr>", "All Files" },
		b = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Buffers" },
		h = { "<cmd>lua require('telescope.builtin').help_tags()<cr>", "Help Tags" },
		r = { "<cmd>lua require('telescope.builtin').registers()<cr>", "Registers" },
		m = { "<cmd>lua require('telescope.builtin').marks()", "Marks" },
		o = { "<cmd>lua require('telescope.builtin').oldfiles()<cr>", "Old Files" },
		c = { "<cmd>lua require('telescope.builtin').grep_string()<cr>", "Search Word Under Cursor" },
		t = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Search Text" },
		C = { "<cmd>lua require('telescope.builtin').colorscheme()<cr>", "Colorschemes" },
		p = { "<cmd>lua require('telescope.builtin').colorscheme{enable_preview=true}<cr>", "Preview Colorscheme" },
	},
	d = {
		name = "Debug",
		R = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run to Cursor" },
		E = { "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
		C = { "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", "Conditional Breakpoint" },
		U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
		b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
		c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
		d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
		e = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
		g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
		h = { "<cmd>lua require'dap.ui.widgets'.hover()<cr>", "Hover Variables" },
		S = { "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", "Scopes" },
		i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
		o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
		p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
		q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
		r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
		s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
		t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
		x = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
		u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
	},
}
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		local wk = require('which-key')
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		wk.register(mappings, opts)
	end,
	opts = {
	}
}
