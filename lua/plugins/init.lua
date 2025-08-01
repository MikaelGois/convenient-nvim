return {
  -- Interface
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-web-devicons" },

  -- Explorador de arquivos
  { "nvim-neo-tree/neo-tree.nvim", dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
  }},

  -- Telescope
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    cond = function()
      return vim.fn.executable("make") == 1
    end,
  },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletar
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  
  -- Discord
  {
    "andweeb/presence.nvim",
    opts = {
      editing_text = "Editando %s",            -- %s é o nome do arquivo
      file_explorer_text = "Explorando arquivos",
      git_branch_text = "Na branch %s",         -- %s é o nome da branch
      workspace_text = "Trabalhando em %s",     -- %s é o nome do projeto/pasta
      -- Outras opções
      auto_update = true,
      debounce_timeout = 10,
      --neovim_image_text = "O melhor editor de texto",
    }
  },
  
  -- Smart-runner
  { "MikaelGois/smart-runner.nvim" },
  
  -- Temas
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },

  -- Barra de abas
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = true
  },
}
