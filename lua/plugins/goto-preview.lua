return {
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({
        width = 120,
        height = 25,
        default_mappings = false,
        debug = false,
        opacity = nil,
        post_open_hook = nil,
        references = {
          telescope = require("telescope.themes").get_dropdown({ hide_preview = false })
        },
        focus_on_open = true,
        dismiss_on_move = false,
        force_close = true,
        bufhidden = "wipe",
        stack_floating_preview_windows = true,
        preview_window_title = { enable = true, position = "left" },
        zindex = 1,
      })
    end,
    keys = {
      {
        "gpd",
        "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
        desc = "Goto Preview Definition",
      },
      {
        "gpt",
        "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
        desc = "Goto Preview Type Definition",
      },
      {
        "gpi",
        "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
        desc = "Goto Preview Implementation",
      },
      {
        "gpD",
        "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
        desc = "Goto Preview Declaration",
      },
      {
        "gpr",
        "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
        desc = "Goto Preview References",
      },
      {
        "gP",
        "<cmd>lua require('goto-preview').close_all_win()<CR>",
        desc = "Close All Preview Windows",
      },
    },
  },
}