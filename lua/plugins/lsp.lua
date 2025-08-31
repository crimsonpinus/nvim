local keyMapper = require("utils.keyMapper").mapKey
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"gopls",
					"jdtls",
					"kotlin_language_server",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.kotlin_language_server.setup({})
			lspconfig.pyright.setup({})

			-- LSP 진단 가상텍스트 스타일
			vim.diagnostic.config({
				virtual_text = {
					prefix = "■", -- 진단 앞에 심볼
					spacing = 2,
					severity = nil,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
			})

			-- 줄 끝 공백 하이라이트 (플러그인 없이)
			vim.cmd([[highlight ExtraWhitespace ctermbg=red guibg=red]])
			vim.cmd([[match ExtraWhitespace /\s\+$/]])

			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("gd", vim.lsp.buf.definition)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}
