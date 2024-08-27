return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      -- add keybindings for delete_buffer
      buffers = {
        mappings = {
          i = {
            ["<C-d>"] = function(...)
              return require("telescope.actions").delete_buffer(...)
            end,
          },
          n = {
            ["<C-d>"] = function(...)
              return require("telescope.actions").delete_buffer(...)
            end,
          },
        },
      },
    },
  },
}
