return {
  {
    "akinsho/toggleterm.nvim",
    -- enabled = false,
    -- config = true,
    -- lazy = false,
    cmd = { "ToggleTerm","TermExec" },
    keys = {
      { [[<c-_>]] },
      { "<leader>0", "<cmd>2ToggleTerm<cr>", desc = "Terminal #2" },
      -- {
      --   "<c-_>",
      --   "<cmd>TermExec<cr>",
      --   desc = "Open new terminal,",
      -- },
    },
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return vim.o.colums * 0.35
        elseif term.direction == "vertical" then
          return vim.o.colums * 0.4
        end
      end,
      open_mapping = [[<c-_>]],
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
