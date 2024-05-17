-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  { "nvim-lualine/lualine.nvim", event = "VeryLazy", opts = {} },
  {
    "rebelot/heirline.nvim",
    optional = true,
    opts = function(_, opts) opts.statusline = nil end,
  },
}

-- return {
-- {
--   "AstroNvim/astroui",
--   ---@type AstroUIOpts
--   opts = {
--     -- add new user interface icon
--     icons = {
--       VimIcon = "",
--       ScrollText = "",
--       GitBranch = "",
--       GitAdd = "",
--       GitChange = "",
--       GitDelete = "",
--     },
--   },
-- },
-- {
--   "rebelot/heirline.nvim",
--   opts = function(_, opts)
--     local status = require "astroui.status"
--     local WorkDir = {
--       init = function(self)
--         self.icon = " "
--         local cwd = vim.fn.getcwd(0)
--         self.cwd = vim.fn.fnamemodify(cwd, ":~")
--       end,
--       hl = { fg = "pink", bold = true },

--       flexible = 1,

--       {
--         -- evaluates to the full-lenth path
--         provider = function(self)
--           local trail = self.cwd:sub(-1) == "/" and "" or "/"
--           return self.icon .. self.cwd .. trail .. " "
--         end,
--       },
--       {
--         -- evaluates to the shortened path
--         provider = function(self)
--           local cwd = vim.fn.pathshorten(self.cwd)
--           local trail = self.cwd:sub(-1) == "/" and "" or "/"
--           return self.icon .. cwd .. trail .. " "
--         end,
--       },
--       {
--         -- evaluates to "", hiding the component
--         provider = "",
--       },
--     }
--     opts.statusline = { -- statusline
--       hl = { fg = "fg", bg = "bg" },
--       status.component.mode {
--         mode_text = {
--           icon = { kind = "VimIcon", padding = { right = 1, left = 1 } },
--         },
--       },
--       status.component.builder(WorkDir),
--       status.component.file_info { filename = { fallback = "Empty" }, filetype = false },
--       status.component.git_branch(),
--       -- status.component.git_diff(),
--       status.component.git_diff {
--         padding = { left = 1 },
--         surround = { separator = "none" },
--       },

--       status.component.diagnostics(),
--       status.component.fill(),
--       status.component.cmd_info(),
--       status.component.fill(),
--       -- NvChad has some nice icons to go along with information, so we can create a parent component to do this
--       -- all of the children of this table will be treated together as a single component
--       {
--         -- define a simple component where the provider is just a folder icon
--         status.component.builder {
--           -- astronvim.get_icon gets the user interface icon for a closed folder with a space after it
--           { provider = require("astroui").get_icon "FolderClosed" },
--           -- add padding after icon
--           padding = { right = 1 },
--           -- set the foreground color to be used for the icon
--           hl = { fg = "bg" },
--           -- use the right separator and define the background color
--         },
--         -- add a file information component and only show the current working directory name
--         status.component.file_info {
--           -- we only want filename to be used and we can change the fname
--           -- function to get the current working directory name
--           filename = {
--             fname = function(nr) return vim.fn.getcwd(nr) end,
--             padding = { left = 1 },
--           },
--           -- disable all other elements of the file_info component
--           filetype = false,
--           file_icon = false,
--           file_modified = false,
--           file_read_only = false,
--           -- use no separator for this part but define a background color
--           surround = {
--             separator = "none",
--             color = "file_info_bg",
--             condition = false,
--           },
--         },
--       },
--       status.component.lsp(),
--       status.component.virtual_env(),
--       status.component.nav(),
--     }
--   end,
-- },
------------------ raw source ---------------------
-- }
