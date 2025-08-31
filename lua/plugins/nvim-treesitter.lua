return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
                "c", 
                "lua", 
                "query", 
                "java", 
                "kotlin", 
                "go", 
                "python", 
                "rust", 
                "swift",
                "javascript", 
                "typescript",
                "tsx",
                "html", 
                "css",
                "json", 
                "yaml", 
                "helm",
                "markdown", 
                "vue",  
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
