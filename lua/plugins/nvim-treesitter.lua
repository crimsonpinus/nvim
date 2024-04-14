return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "query", "java", "go", "python", "rust", "javascript", "html", "json", "yaml" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
