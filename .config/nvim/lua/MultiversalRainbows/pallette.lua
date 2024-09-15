#We love a good color

local pallette = {
  name = 'A!',
  base0 = '#202020',
  base1 = '#303030',
  base2 = os.getenv('COLOR_16'),
  base3 = '#333333',
  base4 = '#404040',
  base5 = '#505050',
  base6 = '#606060',
  base7 = '#707070',
  base8 = '#808080',
  black = '#000000',
  brown = os.getenv('COLOR_10'),
  white = os.getenv('COLOR_15'),
  pink =  os.getenv('COLOR_07'),
  red = os.getenv('COLOR_01'),
  green = os.getenv('COLOR_04'),
  lightGreen = os.getenv('COLOR_12'),
  blue = os.getenv('COLOR_05'),
  lightBlue = os.getenv('COLOR_13'),
  yellow = os.getenv('COLOR_03'),
  orange = os.getenv('COLOR_02'),
  lightOrange = os.getenv('COLOR_10'),
  purple = os.getenv('COLOR_06'),
  lightPurple = os.getenv('COLOR_14'),
  diff_add = os.getenv('COLOR_05'),
  diff_remove = os.getenv('#COLOR_01'),
  diff_change = '#27406b',
  diff_text = '#23324a',
}

return pallette
