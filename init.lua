-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.modules.snippets")

vim.cmd("colorscheme gruvbox")
