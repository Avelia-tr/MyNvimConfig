vim.filetype.add({
	extension = {
		hlsl = "hlsl",
		shader = "shader",
	},
})

if not require("lspconfig.configs").hlsl_tools then
	require("lspconfig.configs").hlsl_tools = {
		default_config = {
			cmd =
				-- Install HLSL Tools with VSCode
				-- https://marketplace.visualstudio.com/items?itemName=TimGJones.hlsltools
				-- Check the directory yourself and set version and OS in the string below
				"/home/avelia/.vscode-oss/extensions/antaalt.shader-validator-1.3.1-universal/bin/linux/shader-language-server",
		},
		root_dir = require("lspconfig").util.root_pattern(".git"), -- or whatever you prefer
		filetypes = { "hlsl" },
	}
end

if not require("lspconfig.configs").shader then
	require("lspconfig.configs").shader = {
		default_config = {
			cmd =
				-- Install HLSL Tools with VSCode
				-- https://marketplace.visualstudio.com/items?itemName=TimGJones.hlsltools
				-- Check the directory yourself and set version and OS in the string below
				"shader-lsp",
		},
		root_dir = require("lspconfig").util.root_pattern(".git"), -- or whatever you prefer
		filetypes = { "shader" },
	}
end
-- Set it up as usual
-- lspconfig.hlsl_tools.setup({})
-- lspconfig.configs.shader.setup({})
