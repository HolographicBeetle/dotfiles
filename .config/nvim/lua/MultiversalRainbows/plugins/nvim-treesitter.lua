return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {
		  "lua",
		  "javascript",
		  "regex",
		  "bash",
		  "markdown",
		  "markdown_inline"
	  },
          highlight = { enable = true },
        })
    end
 }
