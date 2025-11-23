-- Zeal / zeavim：按键或命令触发时才加载，避免在只读缓冲区里执行 :set
return {
  "KabbAmine/zeavim.vim",
  lazy = true,
  keys = {
    { "<leader>z", "<Plug>Zeavim", mode = "n", silent = true, desc = "Zeal: search word" },
    { "K", "<Plug>ZVKeyNormal", mode = "n", silent = true, desc = "Zeal: K to search" },
    { "<leader>z", ":<C-u>ZeavimV<CR>", mode = "x", silent = true, desc = "Zeal: search visual" },
    { "<C-k>", "<Plug>ZVKeyInsert", mode = "i", silent = true, desc = "Zeal: search insert" },
  },
  cmd = { "Zeavim", "ZeavimV" }, -- 以命令触发也会加载
  init = function()
    -- 只做“设置变量”这种无副作用的事；不要在这里 :set 或改当前 buffer 选项
    vim.g["zv_file_types"] = {
      c = "Qt,C++",
      cpp = "Qt,C++",
      h = "Qt,C++",
      hpp = "Qt,C++",
      qml = "Qt",
      cmake = "CMake",
    }
    -- Windows 如需手动指定 Zeal 路径，解注释：
    -- vim.g.zeal_app = [[C:\Program Files (x86)\Zeal\zeal.exe]]
  end,
}
