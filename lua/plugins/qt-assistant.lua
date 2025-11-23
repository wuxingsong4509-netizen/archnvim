return {
  {
    "2774326573/qt-assistant.nvim",
    config = function()
      require("qt-assistant").setup({
        -- Project settings
        project_root = vim.fn.getcwd(),

        -- Directory structure
        directories = {
          source = "src",
          include = "include",
          ui = "ui",
          resource = "resources",
        },

        -- Auto update CMakeLists.txt when adding files
        auto_update_cmake = true,
        auto_rebuild_on_cmake_change = false,

        -- Qt tools paths (will auto-detect if not specified)
        qt_tools = {
          designer_path = "designer",
          uic_path = "uic",
          qmake_path = "qmake",
          cmake_path = "cmake",
          creator_path = "qtcreator",
        },

        -- Enable default keymaps
        enable_default_keymaps = true,
      })
    end,
  },
}
