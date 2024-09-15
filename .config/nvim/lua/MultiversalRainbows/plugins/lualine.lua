
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = {
          normal = {
            a = {bg = os.getenv('COLOR_13'), fg = os.getenv('COLOR_16'), gui = 'bold'},
            b = {bg = os.getenv('COLOR_03'), fg = os.getenv('COLOR_16')},
            c = {bg = os.getenv('COLOR_16'), fg = os.getenv('COLOR_03')}
          },
          insert = {
            a = {bg = os.getenv('COLOR_07'), fg = os.getenv('COLOR_16'), gui = 'bold'},
            b = {bg = os.getenv('COLOR_03'), fg = os.getenv('COLOR_16')},
            c = {bg = os.getenv('COLOR_16'), fg = os.getenv('COLOR_03')}
          },
          visual = {
            a = {bg = os.getenv('COLOR_14'), fg = os.getenv('COLOR_16'), gui = 'bold'},
            b = {bg = os.getenv('COLOR_03'), fg = os.getenv('COLOR_16')},
            c = {bg = os.getenv('COLOR_16'), fg = os.getenv('COLOR_03')}
          },
          command = {
            a = {bg = os.getenv('COLOR_05'), fg = os.getenv('COLOR_16'), gui = 'bold'},
            b = {bg = os.getenv('COLOR_03'), fg = os.getenv('COLOR_16')},
            c = {bg = os.getenv('COLOR_16'), fg = os.getenv('COLOR_03')}
          }
        },
        component_separators = '|',
        section_separators = ' ',
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {{'filename', path = 1}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end
}
