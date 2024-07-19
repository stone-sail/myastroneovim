if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
-- return {
--   "nvimtools/none-ls.nvim",
--   opts = function(_, config)
--     -- config variable is the default configuration table for the setup function call
--     local null_ls = require "null-ls"
--
--     -- Check supported formatters and linters
--     -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
--     -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
--     config.sources = {
--       -- Set a formatter
--       null_ls.builtins.formatting.clang_format,
--       -- null_ls.builtins.formatting.stylua,
--       -- null_ls.builtins.formatting.prettier,
--     }
--
--     return config -- return final config table
--   end,
-- }
--

return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    { "AstroNvim/astrolsp", opts = {} },
  },
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    on_attach = require("astrolsp").on_attach
    local null_ls = require "null-ls"
    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.clang_format.with {
        extra_args = {
          "--style='{BasedOnStyle: Google, IdentWidth: 8}'",
        },
      },
      debug = true,
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }

    -- null_ls.setup { sources = config.sources, debug = true }
    return config -- return final config table
  end,
}
