local keyMapper = require("utils.keyMapper").mapKey

return {
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				-- size = 40,
				size = function()
					return math.floor(vim.o.columns * 0.4)
				end, -- 전체 너비의 40% 사용
				open_mapping = [[<c-\>]],
				hide_numbers = true,
				shade_terminals = true,
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				-- direction = "horizontal",
				direction = "vertical",
				close_on_exit = true,
				shell = vim.o.shell,
			})

			-- 원하는 단축키 추가 예시
			-- keyMapper("<C-t>", "<cmd>ToggleTerm<CR>") -- Ctrl+t 로 토글터미널 열기/닫기
		end,
	},
}
