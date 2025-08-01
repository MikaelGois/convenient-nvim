require("toggleterm").setup {
  open_mapping = [[<C-\>]],
  direction = "float", -- pode ser: 'vertical' | 'horizontal' | 'tab' | 'float'
  shade_terminals = true,
  insert_mappings = true,
  persist_mode = false,
}

-- Atalhos adicionais
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", opts)
map("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<CR>", opts)
map("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>", opts)
map("n", "<leader>tt", "<cmd>ToggleTerm direction=tab<CR>", opts)

