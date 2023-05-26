-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

M.statusline = {
  theme = "minimal",
  separator_style = "round",
  override_modules = nil,
}

M.tabufline = {
  tabufline = {
    show_numbers = true,
    lazyload = true,
    override_modules = nil,
  },
}

M.telescope = {
  style = "bordered", -- borderless / bordered
}

local function get_quote()
  local function http_get(url)
    local command = "curl -s -o - " .. vim.fn.shellescape(url)
    local handle = io.popen(command)
    if handle then
      local response = handle:read "*a"
      handle:close()
      return response
    end
    return nil
  end

  local result = http_get "https://zenquotes.io/api/random"
  result = vim.json.decode(result)[1]
  return result
end

local ascii_arts = {
  {
    "  ^~^  ,                   ",
    " ('Y') )                   ",
    " /   /\\  Text Editor  __QQ ",
    '(\\|||/)              (_)_">',
    "                    /      ",
  },
  {
    "  ___                 ___  ",
    " (o o)               (o o) ",
    "(  V  )  Elis 🌻🦋  (  V  )",
    "--m-m-----------------m-m--",
  },
  {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
  },
  {
    "    .  .        ",
    "    |\\_|\\     ",
    "    | a_a\\     ",
    '    | | "]      ',
    "____| '-\\___   ",
    "/.----.___.-'\\",
    "//        _    \\",
    "//   .-. (~v~) /|",
    "|'|  /\\:  .--  / \\",
    "// |-/  \\_/____/\\/~|",
    "|/  \\ |  []_|_|_] \\ |",
    "| \\  | \\ |___   _\\ ]_}",
    "| |  '-' /   '.'  |",
    "| |     /    /|:  | ",
    "| |     |   / |:  /\\",
    "| |     /  /  |  /  \\",
    "| |    |  /  /  |    \\",
    "\\ |    |/\\/  |/|/\\    \\",
    "\\|\\ |\\|  |  | / /\\/\\__\\",
    "\\ \\| | /   | |__",
    "/ |   |____)",
    '|_/"",',
  },
}

function GetHeader()
  return ascii_arts[2]
  -- return
end

M.nvdash = {
  load_on_startup = true,

  header = GetHeader(),
}

return M
