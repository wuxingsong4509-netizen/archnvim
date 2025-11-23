return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- 保证 tree-sitter 有正常工作
      opts.ensure_installed = opts.ensure_installed or {}
    end,
    config = function()
      -- Tree-sitter 高亮组
      vim.api.nvim_set_hl(0, "@annotation", { fg = "#FFA500", bold = true })

      -- extmarks 高亮组
      vim.api.nvim_set_hl(0, "AnnotationMark", { fg = "#00FF00", bold = true })

      local ns = vim.api.nvim_create_namespace("annotation_highlight")

      local function highlight_annotations(bufnr)
        vim.api.nvim_buf_clear_namespace(bufnr, ns, 0, -1)
        local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
        for lnum, line in ipairs(lines) do
          -- 检查是不是注释行
          if line:match("^%s*[%-%-%/%*%#]") then
            -- 匹配 @标签 及其后面的单词
            for start_col, match in line:gmatch("()(@%w+)") do
              vim.api.nvim_buf_set_extmark(bufnr, ns, lnum - 1, start_col - 1, {
                end_col = start_col - 1 + #match,
                hl_group = "AnnotationMark",
              })
            end
          end
        end
      end

      -- 自动更新高亮
      vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "TextChangedI" }, {
        callback = function(args)
          highlight_annotations(args.buf)
        end,
      })
    end,
  },
}
