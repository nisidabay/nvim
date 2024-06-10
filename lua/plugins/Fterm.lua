return {
  "numToStr/FTerm.nvim",
  event = "VeryLazy", -- Replace "VeryLazy" with your desired event
  config = function()
    require("FTerm").setup({
      blend = 5,
      dimensions = {
        height = 0.90,
        width = 0.90,
        x = 0.5,
        y = 0.5,
      },
      keys = {
        vim.api.nvim_set_keymap("n", "<leader>tt", ":lua require('FTerm').toggle()<CR>", { noremap = true }),
        vim.api.nvim_set_keymap("t", "<leader>tt", '<C-\\><C-n>:lua require("FTerm").toggle()<CR>', { noremap = true }),
      },
    })
  end,
}
