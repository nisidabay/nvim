return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- text objects
        textobjects = {
          select = {
            enable = true,

            -- Automatically jump forward to textobjects, similar to targets.vim
            lookahead = true,

            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
              enable = true,
            },
            -- ensure these language parsers are installed
            ensure_installed = {
              "json",
              "yaml",
              "html",
              "css",
              "markdown",
              "markdown_inline",
              "bash",
              "lua",
              "vim",
              "python",
              "go",
            },
            incremental_selection = {
              enable = true,
              keymaps = {
                init_selection = "<C-space>",
                node_incremental = "<C-space>",
                scope_incremental = false,
                node_decremental = "<bs>",
              },
            },
            -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
            context_commentstring = {
              enable = true,
              enable_autocmd = false,
            },
          },
        },
      })
    end,
  },
}
