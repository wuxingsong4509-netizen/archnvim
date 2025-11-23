return {
  "LintaoAmons/bookmarks.nvim",
  tag = "3.2.0", -- 或最新版本
  dependencies = {
    { "kkharji/sqlite.lua" },
    { "nvim-telescope/telescope.nvim" },
    { "stevearc/dressing.nvim" }, -- 可选
  },
  config = function()
    require("bookmarks").setup({
      -- 可配置选项见 default-config.lua
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmk",
        "<cmd>BookmarksMark<cr>",
        { desc = "Mark current line into active BookmarkList." }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmo",
        "<cmd>BookmarksGoto<cr>",
        { desc = "Go to bookmark at current active BookmarkList" }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mma",
        "<cmd>BookmarksCommands<cr>",
        { desc = "Find and trigger a bookmark command." }
      ),
      vim.keymap.set({ "n", "v" }, "mmt", "<cmd>BookmarksTree<cr>", { desc = "Browse bookmarks in tree view." }),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmn",
        "<cmd>BookmarksGotoNext<cr>",
        { desc = "Go To Next bookmarks in line number" }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmp",
        "<cmd>BookmarksGotoPrev<cr>",
        { desc = "Go To Previous bookmarks in line number" }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmd",
        "<cmd>BookmarksDesc<cr>",
        { desc = "Add description to the bookmark under cursor, if no bookmark, then mark it first" }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mmg",
        "<cmd>BookmarksGrep<cr>",
        { desc = "Grep through the contene of all bookmarked files" }
      ),
      vim.keymap.set(
        { "n", "v" },
        "<leader>mms",
        "<cmd>BookmarksInfoCurrentBookmark<cr>",
        { desc = "Show current bookmark info" }
      ),
    })
  end,
}
