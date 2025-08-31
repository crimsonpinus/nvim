return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require("lualine").setup({
            options = {
                theme = "gruvbox"
            },
            sections = {
                lualine_b = {
                  'branch'
                },
                lualine_x = {
                  function()
                    -- 맥 아이콘: 유니코드 "" (Nerd Font에서 지원)
                    return ''
                  end,
                    'encoding',
                    'filetype'
                },
            }
        })
    end
}
