local pallette = require('MultiversalRainbows.pallette')
local vim = vim
local M = {}


M.treesitter_highlights = {
  keyword = { fg = pallette.blue, style = 'italic' },
  comment = { fg = pallette.base5, style = 'italic' },
  builtin_consts = { fg = pallette.lightPurple, style = 'italic' },
  consts = { fg = pallette.lightBlue, style = 'bold' },
  strings = { fg = pallette.green, style = 'italic' },
  entity = { fg = pallette.yellow, style = 'bold'},
  variable = { fg = pallette.orange },
  property = { fg = pallette.white, style ='italic' },
  parameter = { fg = pallette.lightOrange, style = 'italic' },
  punctuation = { fg = pallette.base8, style = 'bold' },
  parentheses = { fg = pallette.brown, style = 'bold' },
  functions = { fg = pallette.lightGreen, style = 'bold' },
  types = { fg = pallette.base7, style = 'italic' },
  namespaces = { fg = pallette.lightGreen, style = 'italic' },
}

M.highlight_group = function(pallette)
  return {

    -- Base --
    Normal = { fg = pallette.white, bg = pallette.base2 },
    NormalFloat = { bg = pallette.base1 },
    NonText = { fg = pallette.base3 },
    Visual = { bg = pallette.base4 },
    VisualNOS = { bg = pallette.base3 },
    Search = { fg = pallette.base2, bg = pallette.yellow },
    IncSearch = { fg = pallette.base2, bg = pallette.orange },
    MatchParen = { fg = pallette.pink },
    Question = { fg = pallette.yellow },
    ModeMsg = { fg = pallette.white, style = 'bold' },
    MoreMsg = { fg = pallette.white, style = 'bold' },
    ErrorMsg = { fg = pallette.red, style = 'bold' },
    WarningMsg = { fg = pallette.yellow, style = 'bold' },
    VertSplit = { fg = pallette.brown },
    LineNr = { fg = pallette.base5, bg = pallette.base0 },
    Cursor = { style = 'reverse' },
    CursorLine = { bg = pallette.base2 },
    CursorLineNr = { fg = pallette.base7, bg = pallette.base1, style = 'bold' },
    CursorLineSign = { fg = pallette.base7, bg = pallette.base1 },
    SignColumn = { bg = pallette.base0 },
    ColorColumn = { bg = pallette.base1 },
    SpellBad = { fg = pallette.red, style = 'undercurl' },
    SpellCap = { fg = pallette.purple, style = 'undercurl' },
    SpellRare = { fg = pallette.blue, style = 'undercurl' },
    SpellLocal = { fg = pallette.pink, style = 'undercurl' },
    SpecialKey = { fg = pallette.pink },
    Special = { fg = pallette.yellow },
    Title = { fg = pallette.yellow, style = 'bold' },
    Identifier = { fg = pallette.blue, style = 'bold' },

    -- Git colors --
    DiffAdd = { bg = pallette.diff_add },
    DiffDelete = { bg = pallette.diff_remove },
    DiffChange = { bg = pallette.diff_change },
    DiffText = { bg = pallette.diff_text },
    diffAdded = { fg = pallette.lightGreen },
    diffRemoved = { fg = pallette.red },

    -- Popups --
    Pmenu = { fg = pallette.white, bg = pallette.base3 },
    PmenuSel = { fg = pallette.base4, bg = pallette.white },
    PmenuSelBold = { fg = pallette.base4, bg = pallette.orange },
    PmenuThumb = { fg = pallette.purple, bg = pallette.lightGreen },
    PmenuSbar = { bg = pallette.base3 },
    String = { fg = pallette.lightGreen, style = 'italic' },

    dbui_tables = { fg = pallette.white },

    -- Diagnostics --
    DiagnosticSignError = {fg = pallette.red },
    DiagnosticSignWarn = { fg = pallette.yellow },
    DiagnosticSignInfo = { fg = pallette.white },
    DiagnosticSignHint = { fg = pallette.blue },
    DiagnosticVirtualTextError = { fg = pallette.red },
    DiagnosticVirtualTextWarn = { fg = pallette.yellow },
    DiagnosticVirtualTextInfo = { fg = pallette.white },
    DiagnosticVirtualTextHint = { fg = pallette.blue },
    DiagnosticUnderlineError = { style = 'undercurl', sp = pallette.red },
    DiagnosticUnderlineWarn = { style = 'undercurl', sp = pallette.yellow },
    DiagnosticUnderlineInfo = { style = 'undercurl', sp = pallette.white },
    DiagnosticUnderlineHint = { style = 'undercurl', sp = pallette.blue },
    DiagnosticError = { style = 'undercurl', sp = pallette.red },
    DiagnosticWarn = { style = 'undercurl', sp = pallette.yellow },
    DiagnosticInfo = { style = 'undercurl', sp = pallette.white },
    DiagnosticHint = { style = 'undercurl', sp = pallette.blue },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = pallette.white, bg = pallette.base1 },
    CmpDocumentationBorder = { fg = pallette.white, bg = pallette.base1 },
    CmpItemAbbr = { fg = pallette.white },
    CmpItemAbbrMatch = { fg = pallette.blue },
    CmpItemAbbrMatchFuzzy = { fg = pallette.blue },
    CmpItemKindDefault = { fg = pallette.white },
    CmpItemMenu = { fg = pallette.base6 },
    CmpItemKindKeyword = { fg = pallette.pink },
    CmpItemKindVariable = { fg = pallette.pink },
    CmpItemKindConstant = { fg = pallette.pink },
    CmpItemKindReference = { fg = pallette.pink },
    CmpItemKindValue = { fg = pallette.pink },
    CmpItemKindFunction = { fg = pallette.blue },
    CmpItemKindMethod = { fg = pallette.blue },
    CmpItemKindConstructor = { fg = pallette.blue },
    CmpItemKindClass = { fg = pallette.orange },
    CmpItemKindInterface = { fg = pallette.orange },
    CmpItemKindStruct = { fg = pallette.orange },
    CmpItemKindEvent = { fg = pallette.orange },
    CmpItemKindEnum = { fg = pallette.orange },
    CmpItemKindUnit = { fg = pallette.orange },
    CmpItemKindModule = { fg = pallette.yellow },
    CmpItemKindProperty = { fg = pallette.lightGreen },
    CmpItemKindField = { fg = pallette.lightGreen },
    CmpItemKindTypeParameter = { fg = pallette.lightGreen },
    CmpItemKindEnumMember = { fg = pallette.lightGreen },
    CmpItemKindOperator = { fg = pallette.lightGreen },

    -- WhichKey
    WhichKey = {fg = pallette.lightGreen, style = 'bold'},
    WhichKeyFloat = {fg = pallette.white, bg = pallette.base2},
    WhichKeyGroup = {fg = pallette.orange, style = 'italic'},
    WhichKeySeparator = {fg = pallette.yellow, style = 'bold'},
    WhichKeyDesc = {fg = pallette.blue, style = 'italic'},

    -- Telescope --
    TelescopeBorder = { fg = pallette.lightGreen },
    TelescopePreviewRead = { fg = pallette.green},
    TelescopePreviewWrite = { fg = pallette.blue },
    TelescopePreviewExecute = { fg = pallette.white, style = 'bold' },
    TelescopePreviewDirectory = { fg = pallette.base7, style = 'italic' },
    TelescopePreviewSize = { fg = pallette.purple, style = 'italic' },
    TelescopePreviewUser = { fg = pallette.green, style = 'italic' },
    TelescopePreviewGroup = { fg = pallette.lightGreen, style = 'italic' },
    TelescopePreviewDate = { fg = pallette.base6, style = 'italic' },
    TelescopePreviewTitle = { fg = pallette.yellow, style = 'bold' },
    TelescopePrompt = { fg = pallette.blue },
    TelescopePromptBorder = { fg = pallette.orange },
    TelescopePromptTitle = { fg = pallette.yellow, style = 'bold' },
    TelescopeResultsTitle = { fg = pallette.yellow, style = 'bold' },
    TelescopeResultsBorder = { fg = pallette.blue },

    -- Treesitter --
    ['@string'] = M.treesitter_highlights.strings,
    ['@character'] = M.treesitter_highlights.strings,
    ['@boolean'] = M.treesitter_highlights.builtin_consts,
    ['@number'] = M.treesitter_highlights.builtin_consts,
    ['@number.float'] = M.treesitter_highlights.builtin_consts,
    ['@string.escape'] = M.treesitter_highlights.builtin_consts,
    ['@comment'] = M.treesitter_highlights.comment,
    ['@property'] = M.treesitter_highlights.property,
    ['@constant'] = M.treesitter_highlights.consts,
    ['@constant.builtin'] = M.treesitter_highlights.builtin_consts,
    ['@variable'] = M.treesitter_highlights.variable,
    ['@variable.member'] = M.treesitter_highlights.property,
    ['@variable.builtin'] = M.treesitter_highlights.consts,
    ['@variable.parameter'] = M.treesitter_highlights.parameter,
    --
    ['@keyword'] = M.treesitter_highlights.keyword,
    ['@keyword.import'] = M.treesitter_highlights.keyword,
    ['@keyword.repeat'] = M.treesitter_highlights.keyword,
    ['@keyword.function'] = M.treesitter_highlights.types,
    ['@keyword.operator'] = M.treesitter_highlights.punctuation,
    ['@keyword.exception'] = M.treesitter_highlights.keyword,
    ['@keyword.conditional'] = M.treesitter_highlights.keyword,
    ['@keyword.conditional.ternary'] = M.treesitter_highlights.entity,
    --
    ['@module'] = M.treesitter_highlights.namespaces,
    ['@storageclass'] = M.treesitter_highlights.types,
    --
    ['@function'] = M.treesitter_highlights.functions,
    ['@function.call'] = M.treesitter_highlights.functions,
    ['@function.macro'] = M.treesitter_highlights.namespaces,
    ['@function.method'] = M.treesitter_highlights.functions,
    ['@function.method.call'] = M.treesitter_highlights.functions,
    ['@function.builtin'] = M.treesitter_highlights.functions,
    ['@operator'] = M.treesitter_highlights.punctuation,
    ['@constructor'] = M.treesitter_highlights.entity,
    --
    ['@punctuation.bracket'] = M.treesitter_highlights.parentheses,
    ['@punctuation.special'] = M.treesitter_highlights.parentheses,
    ['@punctuation.delimiter'] = M.treesitter_highlights.punctuation,
    --
    ['@tag'] = M.treesitter_highlights.entity,
    ['@tag.attribute'] = M.treesitter_highlights.variable,
    ['@tag.delimiter'] = M.treesitter_highlights.parentheses,
    ['@type'] = M.treesitter_highlights.entity,
    ['@type.builtin'] = M.treesitter_highlights.types,
    ['@type.qualifier'] = M.treesitter_highlights.keyword,
    ['@type.definition'] = M.treesitter_highlights.functions,
    ['@label'] = { fg = pallette.pink, style = 'italic' },

    -- LSP Semantic Tokens --

    ['@lsp.type.comment'] = M.treesitter_highlights.comment,
    ['@lsp.type.enum'] = M.treesitter_highlights.entity,
    ['@lsp.type.enumMember'] = M.treesitter_highlights.variable,
    ['@lsp.type.property'] = M.treesitter_highlights.variable,
    ['@lsp.type.interface'] = M.treesitter_highlights.entity,
    ['@lsp.type.class'] = M.treesitter_highlights.entity,
    ['@lsp.type.type'] = M.treesitter_highlights.entity,
    ['@lsp.type.variable'] = M.treesitter_highlights.variable,
    ['@lsp.type.namespace'] = M.treesitter_highlights.namespaces,
    ['@lsp.type.function'] = M.treesitter_highlights.functions,
    ['@lsp.type.decorator'] = M.treesitter_highlights.functions,
    ['@lsp.type.method'] = M.treesitter_highlights.functions,
    ['@lsp.type.parameter'] = M.treesitter_highlights.parameter
  }
end

M.setup = function()
  local theme = M.highlight_group(pallette)

  vim.cmd.hi('clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd.syntax('reset')
  end

  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = pallette.name

  for group, color in pairs(theme) do
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or 'guisp = NONE'
    vim.cmd.highlight(group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
  end
end

M.setup()

return M
