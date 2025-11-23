return {
  -- 其他插件配置
  -- {
  --   "airblade/vim-rooter",
  --   config = function()
  --     vim.g.rooter_manual_only = 1
  --   end,
  -- },
  -- {
  --   "tpope/vim-projectionist",
  --   config = function()
  --     vim.g.projectionist_heuristics = {
  --       ["*.cpp"] = {
  --         alternate = "{}.h",
  --         type = "source",
  --       },
  --       ["*.h"] = {
  --         alternate = "{}.cpp",
  --         type = "header",
  --       },
  --     }
  --
  --     vim.api.nvim_set_keymap("n", "<Leader>ih", ":A<CR>", { noremap = true, silent = true })
  --   end,
  -- },
  {
    "vim-scripts/a.vim",
    -- lazy = true,
  },
}
