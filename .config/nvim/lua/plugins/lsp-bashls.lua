return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      bashls = {
        on_attach = function(client, bufnr)
          local name = vim.api.nvim_buf_get_name(bufnr)
          local filename = vim.fs.basename(name)
          if filename:match("^%.env") or filename:match("%.env$") or filename:match("%.env%.") then
            vim.schedule(function()
              vim.lsp.stop_client(client.id)
            end)
          end
        end,
      },
    },
  },
}
