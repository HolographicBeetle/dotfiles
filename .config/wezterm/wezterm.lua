local wezterm = require('wezterm')
local palette = dofile(os.getenv('HOME')..'/.palette.lua').palette;
local config = {}

config.colors = {
  foreground = palette.bright[1],
  background = palette.extra[1],
  cursor_bg = palette.main[8],
  cursor_border = palette.main[8],
  cursor_fg = palette.extra[1],
  ansi = palette.main,
  brights = palette.bright
}

config.font_size = 13.5
config.font = wezterm.font({family = 'IosevkaTermSlabNFM', italic = false, weight = "Regular"})
config.font_rules = {
  {
    intensity = 'Bold',
    italic = false,
    font = wezterm.font({family = 'IosevkaTermSlabNFM-Bold', italic = false, weight = "Bold"})
  },
  {
    intensity = 'Normal',
    italic = true,
    font = wezterm.font('IosevkaTermSlabNFM-LightItalic')
  },
  {
    intensity = 'Half',
    italic = false,
    font = wezterm.font({family = 'IosevkaTermSlabNFM-Light', italic=false})
  }
}

config.harfbuzz_features = {
  'calt=1',
  'dlig=1',
  'ss01=1',
  'ss02=1',
  'ss03=1',
  'ss04=1',
  'ss05=1',
  'ss06=1',
  'ss07=1',
  'ss08=1',
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

return config
