return {
  {
    "2774326573/notion.nvim",
    branch = "newMain",
    config = function()
      require("notion").setup({
        token = os.getenv("NOTION_API_TOKEN"),
        databases = {
          { name = "CMake Study", id = "2a1c19f476e380e5b1f1e6dd98987a20" },
          { name = "CPP Study", id = "2a1c19f476e380c09aa0c46ab440fb04" },
          { name = "Python Study", id = "2a2c19f476e3817494b0d06e510a66a9" },
          { name = "OpenCV Study", id = "275c19f476e3800a896ac0beec2f24f7" },
          { name = "CSharp Study", id = "2a2c19f476e380f3a79fcefe671fcab4" },
          { name = "Notebook", id = "275c19f476e380a7b4bbe0969e728279" },
          { name = "Today's Tasks", id = "272c19f476e3804b81a7c5e625e6960b" },
          { name = "Daily Journal", id = "275c19f476e3800e869cd8957b05a7d4" },
          { name = "WeChat Reading", id = "275c19f476e38126aa65d18b1c61d027" },
        },
        default_database = "CMake Study",
        title_property = os.getenv("NOTION_TITLE_PROPERTY") or "Name",
        sync = { auto_write = true },
        ui = {
          floating = false,
          open_in_tab = true,
        },
      })
    end,
  },
}
