require("bufferline").setup {
  options = {
    mode = "buffers", -- ou "tabs"
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = true,
    show_close_icon = false,
    separator_style = "thin",
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      }
    },
  }
}

