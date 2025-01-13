return {
  {
    "gksakari/toggleterm.nvim",
    -- enabled = false,
    -- config = true,
    -- lazy = false,
    cmd = { "ToggleTerm", "TermExec" },
    keys = function()
      local Terminal = require("toggleterm.terminal").Terminal
      local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
      local function lazygit_toggle()
        lazygit.dir = LazyVim.root.git()
        lazygit:toggle()
      end

      local keys = {
        { [[<c-/>]] },
        -- { mode = "n", "<leader>gg", "<cmd>lua require('lazygit').lazygit_toggle()<CR>", { desc = "Lazygit" } },
        { "<c-\\>", ":ToggleTerm direction=horizontal<C-b>", desc = "New Horizontal Terminal" },
        { "<space>th", ":ToggleTerm direction=horizontal<C-b>", desc = "New Horizontal Terminal" },
        { "<space>tH", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
        { "<space>tv", ":ToggleTerm direction=vertical<C-b>", desc = "New Vertical Terminal" },
        { "<space>tV", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
        { "<space>tt", ":ToggleTerm direction=tab<C-b>", desc = "New Tab Terminal" },
        { "<space>tT", "<cmd>ToggleTerm direction=tab<cr>", desc = "Tab Terminal" },
        { "<space>tf", ":ToggleTerm direction=float<C-b>", desc = "New Float Terminal" },
        { "<space>tF", "<cmd>ToggleTerm direction=float<cr>", desc = "Float Terminal" },
        {
          "<leader>gg",
          function()
            lazygit_toggle()
          end,
          desc = "Lazygit",
        },
      }
      return keys
    end,
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-/>]],
      -- autochdir = true,
      direction = "float",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,

      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        -- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        border = "curved",
        -- like `size`, width and height can be a number or function which is passed the current terminal
        -- width = <value>,
        -- height = <value>,
        -- winblend = 80,
        -- zindex = <value>,
      },
    },
  },
}
