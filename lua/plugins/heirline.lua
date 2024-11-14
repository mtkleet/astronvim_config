return {
  "rebelot/heirline.nvim",
opts = {
  colors = {
    WinBar = { fg = "#5c6370", bg = "#1e22a2" },
    WinBarNC = { fg = "#5c6370", bg = "#1e22a2" },
    none = "NONE",
    fg = "#abb2bf",
    bg = "#1e222a",
    dark_bg = "#2c323c",
    blue = "#61afef",
    green = "#98c379",
    grey = "#5c6370",
    bright_grey = "#777d86",
    dark_grey = "#5c5c5c",
    orange = "#ff9640",
    purple = "#c678dd",
    bright_purple = "#a9a1e1",
    red = "#e06c75",
    bright_red = "#ec5f67",
    white = "#c9c9c9",
    yellow = "#e5c07b",
    bright_yellow = "#ebae34"
  }
},
  dependencies = { "Zeioth/heirline-components.nvim" },
    config = function(_, opts)
      local heirline = require "heirline"
      local heirline_components = require "heirline-components.all"

      -- Setup
      heirline_components.init.subscribe_to_events()
      heirline.load_colors(heirline_components.hl.get_colors())
      heirline.setup(opts)
    end,
}
