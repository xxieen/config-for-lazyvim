local M = {}
-- configuration for neovide
if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- configuration for fonts
  -- Cartograph CF:h18  JetBrains Mono:h18 Fira Code:h18	MonoLisa:h18
  -- Dank Mono:h18 Source Code Pro:h18
  -- Operator Mono:h18 Menlo:h18
  -- vim.o.guifont =
  --   "Cartograph_CF,MonoLisa,SF_Mono,Menlo,JetBrains_Mono,Fira_Code,Dank_Mono,Source_Code_Pro,Operator_Mono:h17"
  -- font rendering
  -- vim.g.neovide_text_gamma = 0.8
  -- vim.g.neovide_text_contrast = 0.1

  vim.opt.linespace = 5
  vim.g.neovide_scale_factor = 1.0
  -- Controls the space between the window border and the actual Neovim, which is filled with the background color instead.
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 10
  vim.g.neovide_padding_right = 10
  vim.g.neovide_padding_left = 10

  -- transparency
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_window_blurred = true
  vim.g.neovide_show_border = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- floating shadow
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5

  -- scoll animation
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_scroll_animation_far_lines = 5
  -- hiding mouse when typing
  vim.g.neovide_hide_mouse_when_typing = false
  --theme
  -- vim.g.neovide_theme = "auto"
  --cursor
  -- vim.g.neovide_cursor_smooth_blink = true
  -- vim.opt.guicursor =
  -- "n-v-c:block-Cursor/lCursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20,o:hor50,a:blinkwait700-Cursor/lCursor-blinkon400-Cursor/lCursor"
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_cursor_vfx_particle_lifetime = 3
  vim.g.neovide_cursor_vfx_particle_density = 10
  vim.g.neovide_cursor_vfx_particle_speed = 5.0
  vim.g.neovide_cursor_vfx_particle_phase = 2.5
  vim.g.neovide_cursor_vfx_particle_curl = 0.5
  -- input setting
  -- vim.g.neovide_input_ime = true
  vim.g.neovide_input_macos_option_key_is_meta = "only_left"

  local function set_ime(args)
    if args.event:match("Enter$") then
      vim.g.neovide_input_ime = true
    else
      vim.g.neovide_input_ime = false
    end
  end

  local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime,
  })

  vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "[/\\?]",
    callback = set_ime,
  })

  --functionality
  vim.g.neovide_refresh_rate_idle = 5
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("i", "<D-s>", "<ESC>:w<CR>") -- Save
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

return M
