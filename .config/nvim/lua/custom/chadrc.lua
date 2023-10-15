---@type ChadrcConfig
local M = {}



M.ui = { theme = 'onedark',
  changed_themes = {
    onedark = {
      base_16 = {
        base00 = "#161616"
      },
      base_30 = {
        black = "#161616",
        darker_black = "#141414"
      },
    }
  }  
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
