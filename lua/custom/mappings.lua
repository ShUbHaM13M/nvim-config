---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = ""
  }
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Space tt to toggle transparency
    -- ["<leader>tt"] = {
    --   function ()
    --     require("base46").toggle_transparency()
    --   end,
    --   "Toggle transparency"
    -- }

    ["<C-b>"] = {"<cmd> NvimTreeToggle <CR>", "Toggle nvimtree"},

  },
}

-- more keybinds!

return M
