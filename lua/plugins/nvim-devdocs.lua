return {
  "2774326573/nvim-devdocs",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  cmd = { "DevdocsInstall", "DevdocsOpen", "DevdocsSearch", "DevdocsUpdate", "DevdocsUninstall" },
  keys = {
    { "<leader>dds", "<cmd>DevdocsSearch<CR>", desc = "DevDocs: Search" },
    { "<leader>ddo", "<cmd>DevdocsOpen<CR>", desc = "DevDocs: Open picker" },
    { "<leader>ddc", "<cmd>DevdocsOpenCurrent<CR>", desc = "DevDocs: Open picker" },
  },
  config = function()
    require("nvim-devdocs").setup({
      picker_cmd = "telescope",
      wrap = true,
    })
  end,
}
