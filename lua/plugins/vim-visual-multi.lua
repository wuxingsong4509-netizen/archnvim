return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "g<C-n>",
        ["Skip Region"] = "<C-x>",
        ["Remove Region"] = "q",
        ["Add Cursor Down"] = "<A-Down>",
        ["Add Cursor Up"] = "<A-Up>",
      }
    end,
    -- | 操作                | 默认快捷键（普通模式） |
    -- |---------------------|-----------------------|
    -- | 选中下一个匹配      | `<C-n>`               |
    -- | 选中上一个匹配      | `<C-p>`               |
    -- | 跳过当前匹配        | `<C-x>`               |
    -- | 取消最后一个光标    | `q`                   |
    -- | 进入多光标模式      | 选中后按 `Ctrl-n`     |
    -- | 全选所有匹配        | `g<C-n>`              |
    -- | 退出多光标模式      | `Esc`                 |
  },

  -- {
  --   "terryma/vim-multiple-cursors",
  -- },
  -- | 操作               | 默认快捷键（普通模式） |
  -- |--------------------|-----------------------|
  -- | 选中下一个匹配     | `Ctrl-n`              |
  -- | 选中上一个匹配     | `Ctrl-p`              |
  -- | 跳过当前匹配       | `Ctrl-x`              |
  -- | 取消所有光标       | `Esc`                 |
}
