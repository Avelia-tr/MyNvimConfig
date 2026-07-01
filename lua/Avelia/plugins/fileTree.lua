return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		skip_confirm_for_simple_edits = true,
		watch_for_changes = true,
		view_options = {
			is_hidden_file = function(name, bufnr)
				return name == ".git/"
			end,
		},
	},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvimweb-devicons
}
