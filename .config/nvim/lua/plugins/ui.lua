-- ~/.config/nvim/lua/plugins/ui.lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      toggles = {
        {
          name = "current_line_blame",
          toggle = function()
            require("gitsigns").toggle_current_line_blame()
          end,
        },
      },
    },
  },
}
