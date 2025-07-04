return {
  "chrisgrieser/nvim-spider",
  keys = {
    {
      "w",
      "<cmd>lua require('spider').motion('w', { consistentOperatorPending = true, skipInsignificantPunctuation = false })<CR>",
      mode = { "n", "o", "x" },
    },
    {
      "e",
      "<cmd>lua require('spider').motion('e', { consistentOperatorPending = true, skipInsignificantPunctuation = false })<CR>",
      mode = { "n", "o", "x" },
    },
    {
      "b",
      "<cmd>lua require('spider').motion('b', { consistentOperatorPending = true, skipInsignificantPunctuation = false })<CR>",
      mode = { "n", "o", "x" },
    },
  },
}
