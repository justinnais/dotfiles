return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        tailwindcss = function(_, opts)
          opts.settings = {
            tailwindCSS = {
              classAttributes = { "class", "className", "classList" },
              classFunctions = { "cva", "cx", "cn" },
              experimental = {
                classRegex = {
                  { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                  { "(cn|cx)\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                },
              },
            },
          }

          require("lspconfig").tailwindcss.setup(opts)
          return true -- ← this tells LazyVim to *not* auto-setup, use our config
        end,
      },
    },
  },
}
