return {
  "neovim/nvim-lspconfig",
  -- init = function()
  --   require("lspconfig").ruff_lsp.setup({
  --     init_options = {
  --       settings = {
  --         lint = { enable = false }, -- 这里添加额外的 CLI 参数
  --       },
  --     },
  --   })
  -- end,

  opts = {
    servers = {
      pyright = {
        -- mason = false,
        -- autostart = false,
      },
    },
    -- ruff_lsp = function()
    --   require("lspconfig").ruff_lsp.setup({
    --     init_options = {
    --       settings = {
    --         -- Any extra CLI arguments for `ruff` go here.
    --         lint = {
    --           enable = false,
    --         },
    --       },
    --     },
    --   })
    -- end,
  },
}
