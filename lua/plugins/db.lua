-- 在 plugins 目录下新增文件，例如 ~/.config/nvim/lua/plugins/db_bg.lua
return {
  {
    "napisani/nvim-dadbod-bg",
    build = "./install.sh", -- 需要编译／安装脚本
    config = function()
      -- 默认监听端口（可选）：
      vim.g.nvim_dadbod_bg_port = "4546"
      -- 日志位置（可选）：
      vim.g.nvim_dadbod_bg_log_file = "/tmp/nvim-dadbod-bg.log"
      -- 如果你有自定义 UI 前端：
      -- vim.g.nvim_dadbod_bg_ui_root_dir = "/home/youruser/my-dadbod-ui/dist"
    end,
  },
}
