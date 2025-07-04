return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
    },

    config = function(_, opts)
      require("gitsigns").setup(opts)

      require("snacks.toggle")({
        id = "gitsigns_current_line_blame",
        name = "Git Line Blame",
        get = function()
          return require("gitsigns.config").config.current_line_blame
        end,
        set = function(state)
          require("gitsigns").toggle_current_line_blame(state)
        end,
      }):map("<leader>uB")
    end,
  },
}
