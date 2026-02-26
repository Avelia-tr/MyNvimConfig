vim.lsp.config("clangd", {
	settings = {
		clangd = {
			InlayHints = {
				Enabled = true,
				ParameterNames = true,
				DefaultArguments = true,
				BlockEnd = true,
				DeducedTypes = true,
				Designators = true,
			},
			Hover = { ShowAKA = true },
		},
	},
})
