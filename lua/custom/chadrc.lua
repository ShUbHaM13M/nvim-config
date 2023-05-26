---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvchad",
  theme_toggle = { "gruvchad", "gruvbox_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = highlights.statusline,
  tabufline = highlights.tabufline,
  nvdash = highlights.nvdash,
  telescope = highlights.telescope,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
