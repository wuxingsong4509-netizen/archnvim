return {
  -- {
  --   "barrett-ruth/live-server.nvim",
  --   build = "npm i -g live-server",
  --   cmd = { "LiveServerStart", "LiveServerStop" },
  --   config = true,
  -- },
  "brianhuster/live-preview.nvim",
  dependencies = {
    -- You can choose one of the following pickers
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    -- "echasnovski/mini.pick",
    "folke/snacks.nvim",
  },
}
