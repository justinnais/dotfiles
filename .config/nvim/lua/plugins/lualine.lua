return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Remove the 'filetype' component from lualine_c
    opts.sections.lualine_c = vim.tbl_filter(function(item)
      return not (type(item) == "table" and item[1] == "filetype")
    end, opts.sections.lualine_c or {})
  end,
}
