local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Explorador de arquivos (Neo-tree)
map("n", "<leader>e", ":Neotree toggle<CR>", opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- Salvamento rápido
map("n", "<C-s>", ":w<CR>", opts)

-- Navegação entre splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)

-- Diagnóstico LSP
map("n", "<leader>ld", vim.diagnostic.open_float, opts)
map("n", "<leader>lr", vim.lsp.buf.rename, opts)
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "K", vim.lsp.buf.hover, opts)

-- Bufferline
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
