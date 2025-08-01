vim.g.mapleader = " "

require("config.lazy")
require("telescope").load_extension("fzf")
require("config.keymaps")
require("config.toggleterm")
require("config.bufferline")
