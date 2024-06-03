return {
  {
    -- Disable keys mapping for this pluggin
    "folke/noice.nvim",
    keys = {
      { "<c-f>", mode = { "i", "n", "s" }, false },
      { "<c-b>", mode = { "i", "n", "s" }, false },
    },
  },
}
