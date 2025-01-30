-- presence.lua
return {
  -- other plugins
  {
    "andweeb/presence.nvim",
    config = function()
      require("presence"):setup({
        -- Configuration options
        auto_update = true,
        neovim_image_text = "Neovim",
        main_image = "file",
        client_id = "your_discord_client_id", -- Optional: replace with your Discord client ID
        log_level = nil,
        debounce_timeout = 10,
        enable_line_number = false,
        blacklist = {},
        buttons = true,
        file_assets = {},
        show_time = true,
      })
    end,
  },
}
