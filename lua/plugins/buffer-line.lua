return {
  "akinsho/bufferline.nvim",
  keys = {
    -- The vim.v.count1 variable is set whenever a keybinding is called with a count,
    -- so it can be accessed inside the callback and passed to the Vim command using string concatenation (the .. operator).
    -- like 3L to jump three buffers to the right on the buffer line.
    {
      "L",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "H",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
    {
      "]b",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "Next buffer",
    },
    {
      "[b",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "Previous buffer",
    },
    -- delete buffer
    {
      "<leader>d",
      LazyVim.ui.bufremove,
      desc = "Close current buffer",
    },
  },
}
