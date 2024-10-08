return {
  {
    "scottmckendry/cyberdream.nvim", -- colorscheme for transparent, really nice
    lazy = false,
    priority = 1000,
    opts = {
      -- Enable transparent background
      transparent = false,

      -- Enable italics comments
      italic_comments = true,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream", -- catppuccin cyberdream
    },
  },
}
