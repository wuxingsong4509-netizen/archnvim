return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
      -- API key will be automatically read from ANTHROPIC_API_KEY environment variable
      -- You can set this in your shell profile (~/.zshrc or ~/.bashrc):
      -- export ANTHROPIC_API_KEY="your-api-key-here"

      -- Optional configuration
      window = {
        split_ratio = 0.4,        -- 40% of screen width for left panel
        position = "topleft",     -- Open on left side (vertical split)
        enter_insert = true,
        hide_numbers = true,
        hide_signcolumn = true,

        -- Ensure terminal works properly
        winfixwidth = true,       -- Fix window width
        winfixheight = false,     -- Allow height changes
      },
      refresh = {
        enable = true,
        updatetime = 100,
        timer_interval = 1000,
        show_notifications = true,
      },
      git = {
        use_git_root = true,
      },
      keymaps = {
        toggle = {
          normal = "<leader>cc",     -- Custom normal mode toggle
          terminal = "<C-,>",        -- Default terminal mode toggle
          variants = {
            continue = "<leader>cC", -- Continue conversation
            verbose = "<leader>cV",  -- Verbose mode
          },
        },
        window_navigation = true,
        scrolling = true,
      },
    })
  end,
  keys = {
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
    { "<leader>cC", "<cmd>ClaudeCodeContinue<cr>", desc = "Claude Code Continue" },
    { "<leader>cV", "<cmd>ClaudeCodeVerbose<cr>", desc = "Claude Code Verbose" },
    { "<leader>cr", "<cmd>ClaudeCodeResume<cr>", desc = "Claude Code Resume" },
    { "<leader>cv", "<cmd>ClaudeCodeVersion<cr>", desc = "Claude Code Version" },
  },
  cmd = { "ClaudeCode", "ClaudeCodeContinue", "ClaudeCodeResume", "ClaudeCodeVerbose", "ClaudeCodeVersion" },
}