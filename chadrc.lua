---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.plugins = "custom.plugins"

M.ui = {
  theme = 'oxocarbon',
  transparency = true,
  theme_toggle = { "oxocarbon", "gatekeeper" },
  nvdash = {
    load_on_startup = true;
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
