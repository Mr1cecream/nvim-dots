local M = {}

M.highlights_base = function(colors)
  return {
    Normal = { fg = colors.foreground, bg = colors.background },
    SignColumn = { bg = colors.background, fg = colors.background },
    MsgArea = { fg = colors.foreground, bg = colors.background },
    ModeMsg = { fg = colors.foreground, bg = colors.background },
    MsgSeparator = { fg = colors.foreground, bg = colors.background },
    SpellBad = { fg = colors.color2 },
    SpellCap = { fg = colors.color12 },
    SpellLocal = { fg = colors.color12 },
    SpellRare = { fg = colors.color4 },
    NormalNC = { fg = colors.foreground, bg = colors.background },
    Pmenu = { fg = colors.foreground, bg = colors.background },
    PmenuSel = { fg = colors.black, bg = colors.color4 },
    WildMenu = { fg = colors.color7, bg = colors.color4 },
    CursorLineNr = { fg = colors.foreground },
    Comment = { fg = colors.comment, italic = true },
    Folded = { fg = colors.color4, bg = colors.background },
    FoldColumn = { fg = colors.color12, bg = colors.background },
    LineNr = { fg = colors.color8, bg = colors.background },
    FloatBorder = { fg = colors.foreground, bg = colors.background },
    Whitespace = { fg = colors.color1 },
    VertSplit = { fg = colors.cursorline, bg = colors.background },
    CursorLine = { bg = colors.background },
    CursorColumn = { bg = colors.background },
    ColorColumn = { bg = colors.background },
    NormalFloat = { bg = colors.background },
    Visual = { bg = colors.color0, fg = colors.foreground },
    VisualNOS = { bg = colors.background },
    WarningMsg = { fg = colors.color3, bg = colors.background },
    DiffAdd = { bg = colors.background, fg = colors.color12 },
    DiffChange = { bg = colors.background, fg = colors.color5 },
    DiffDelete = { bg = colors.background, fg = colors.color1 },
    QuickFixLine = { bg = colors.color2 },
    PmenuSbar = { bg = colors.background },
    PmenuThumb = { bg = colors.color2 },
    MatchParen = { fg = colors.color12, bg = colors.background },
    Cursor = { fg = colors.comment, bg = colors.cursor },
    lCursor = { fg = colors.foreground, bg = colors.cursor },
    CursorIM = { fg = colors.foreground, bg = colors.cursor },
    TermCursor = { fg = colors.foreground, bg = colors.cursor },
    TermCursorNC = { fg = colors.foreground, bg = colors.cursor },
    Conceal = { fg = colors.color4, bg = colors.background },
    Directory = { fg = colors.color12 },
    SpecialKey = { fg = colors.color12 },
    Title = { fg = colors.color11 },
    ErrorMsg = { fg = colors.color1, bg = colors.background },
    Search = { fg = colors.background, bg = colors.color10 },
    IncSearch = { fg = colors.background, bg = colors.color11 },
    Substitute = { fg = colors.color3, bg = colors.color12 },
    MoreMsg = { fg = colors.color5 },
    Question = { fg = colors.color5 },
    EndOfBuffer = { fg = colors.background },
    NonText = { fg = colors.color1 },
    Variable = { fg = colors.color5 },
    String = { fg = colors.color10 },
    Character = { fg = colors.color12 },
    Constant = { fg = colors.color12 },
    Number = { fg = colors.color12 },
    Boolean = { fg = colors.color5 },
    Float = { fg = colors.color12 },
    Identifier = { fg = colors.color1 },
    Function = { fg = colors.color12 },
    Operator = { fg = colors.color12 },
    Type = { fg = colors.color12 },
    StorageClass = { fg = colors.color3 },
    Structure = { fg = colors.color12 },
    Typedef = { fg = colors.color5 },
    Keyword = { fg = colors.color5 },
    Statement = { fg = colors.color5 },
    Conditional = { fg = colors.color1 },
    Repeat = { fg = colors.color5 },
    Label = { fg = colors.color12 },
    Exception = { fg = colors.color7 },
    Include = { fg = colors.color1 },
    PreProc = { fg = colors.color12 },
    Define = { fg = colors.color12 },
    Macro = { fg = colors.color12 },
    PreCondit = { fg = colors.color12 },
    Special = { fg = colors.color12 },
    SpecialChar = { fg = colors.color12 },
    Tag = { fg = colors.color12 },
    Debug = { fg = colors.color13 },
    Delimiter = { fg = colors.color7 },
    SpecialComment = { fg = colors.color8 },
    Ignore = { fg = colors.color7, bg = colors.background },
    Todo = { fg = colors.color1, bg = colors.background },
    Error = { fg = colors.color3, bg = colors.background },
    TabLine = { fg = colors.color2, bg = colors.background },
    TabLineSel = { fg = colors.foreground, bg = colors.background },
    TabLineFill = { fg = colors.foreground, bg = colors.background },

    -- cmp
    CmpDocumentationBorder = { fg = colors.foreground, bg = colors.background },
    CmpItemAbbr = { fg = colors.foreground, bg = colors.background },
    CmpItemAbbrDeprecated = { fg = colors.color2, bg = colors.background },
    CmpItemAbbrMatch = { fg = colors.color12, bg = colors.background },
    CmpItemAbbrMatchFuzzy = { fg = colors.color12, bg = colors.background },
    CmpItemKind = { fg = colors.color12, bg = colors.background },
    CmpItemMenu = { fg = colors.color2, bg = colors.background },
    CmpItemKindVariable = { fg = colors.color4, bg = colors.background },
    CmpItemKindInterface = { fg = colors.color4, bg = colors.background },
    CmpItemKindText = { fg = colors.color4, bg = colors.background },
    CmpItemKindFunction = { fg = colors.color13, bg = colors.background },
    CmpItemKindMethod = { fg = colors.color13, bg = colors.background },
    CmpItemKindKeyword = { fg = colors.foreground, bg = colors.background },
    CmpItemKindProperty = { fg = colors.foreground, bg = colors.background },
    CmpItemKindUnit = { fg = colors.foreground, bg = colors.background },

    -- treesitter
    TSAttribute = { fg = colors.color4 },
    TSBoolean = { fg = colors.color12 },
    TSCharacter = { fg = colors.color4 },
    TSComment = { fg = colors.comment, italic = true },
    TSConditional = { fg = colors.color1 },
    TSConstant = { fg = colors.color12 },
    TSConstBuiltin = { fg = colors.color4 },
    TSConstMacro = { fg = colors.color3 },
    TSConstructor = { fg = colors.color4 },
    TSException = { fg = colors.color8 },
    TSField = { fg = colors.color1 },
    TSFloat = { fg = colors.color8 },
    TSFunction = { fg = colors.color1 },
    TSFuncBuiltin = { fg = colors.color14 },
    TSFuncMacro = { fg = colors.color2 },
    TSInclude = { fg = colors.color9 },
    TSKeyword = { fg = colors.color5 },
    TSKeywordFunction = { fg = colors.color4 },
    TsKeywordOperator = { fg = colors.color12 },
    TSKeywordReturn = { fg = colors.color4 },
    TSLabel = { fg = colors.color4 },
    TSMethod = { fg = colors.color12 },
    TSNamespace = { fg = colors.color9 },
    TSNumber = { fg = colors.color3 },
    TSParameter = { fg = colors.color1 },
    TSParameterReference = { fg = colors.color9 },
    TSProperty = { fg = colors.color1 },
    TSPunctDelimiter = { fg = colors.color7 },
    TSPunctBracket = { fg = colors.color7 },
    TSPunctSpecial = { fg = colors.color7 },
    TSRepeat = { fg = colors.color11 },
    TSString = { fg = colors.color2 },
    TSStringRegex = { fg = colors.color2 },
    TSStringEscape = { fg = colors.color4 },
    TSStringSpecial = { fg = colors.color4 },
    TSSymbol = { fg = colors.color1 },
    TSTag = { fg = colors.color4 },
    TSTagAttribute = { fg = colors.color1 },
    TSTagDelimiter = { fg = colors.color7 },
    TSText = { fg = colors.color7 },
    TSStrong = { fg = colors.color7 },
    TSEmphasis = { italic = true, fg = colors.color7 },
    TSUnderline = { fg = colors.color5 },
    TSStrike = { fg = colors.color7 },
    TSTitle = { fg = colors.color3 },
    TSLiteral = { fg = colors.color2 },
    TSURI = { fg = colors.color3 },
    TSMath = { fg = colors.color12 },
    TSTextReference = { fg = colors.color12 },
    TSEnvirontment = { fg = colors.color5 },
    TSEnvironmentName = { fg = colors.color3 },
    TSNote = { fg = colors.color8 },
    TSWarning = { fg = colors.color0, bg = colors.color1 },
    TSDanger = { fg = colors.color8 },
    TSType = { fg = colors.color3 },
    TSTypeBuiltin = { fg = colors.color3 },
    TSVariable = { fg = colors.color7 },
    TSVariableBuiltin = { fg = colors.color4 },

    -- Diagnostic
    DiagnosticError = { fg = colors.color9 },
    DiagnosticWarn = { fg = colors.color11 },
    DiagnosticInfo = { fg = colors.color4 },
    DiagnosticHint = { fg = colors.color6 },

    -- diff
    diffAdded = { fg = colors.color4 },
    diffRemoved = { fg = colors.color1 },
    diffChanged = { fg = colors.color5 },
    diffOldFile = { fg = colors.color5 },
    diffNewFile = { fg = colors.color5 },
    diffFile = { fg = colors.color7 },
    diffLine = { fg = colors.color1 },
    diffIndexLine = { fg = colors.color12 },

    -- GitSigns
    GitSignsAdd = { fg = colors.color4 },  -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.color5 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.color1 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope

    TelescopeBorder = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },

    TelescopePromptBorder = {
      fg = colors.color8,
      bg = colors.color8,
    },

    TelescopePromptNormal = {
      fg = colors.foreground,
      bg = colors.color8,
    },

    TelescopePromptPrefix = {
      fg = colors.color1,
      bg = colors.color8,
    },

    TelescopeNormal = { bg = colors.cursorline },

    TelescopePreviewTitle = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },

    TelescopePromptTitle = {
      fg = colors.background,
      bg = colors.color9,
    },

    TelescopeResultsTitle = {
      fg = colors.cursorline,
      bg = colors.cursorline,
    },

    TelescopeSelection = { bg = colors.color0, fg = colors.foreground },

    TelescopeResultsDiffAdd = {
      fg = colors.color10,
    },

    TelescopeResultsDiffChange = {
      fg = colors.color11,
    },

    TelescopeResultsDiffDelete = {
      fg = colors.color9,
    },
    -- Indent Blank Line
    IndentBlanklineChar = { fg = colors.color0, bg = colors.background },

    -- NvimTree
    NvimTreeNormal = { fg = colors.foreground, bg = colors.background },
    NvimTreeNormalNC = { fg = colors.foreground, bg = colors.background },
    NvimTreeRootFolder = { fg = colors.color1 },
    NvimTreeGitDirty = { fg = colors.color1 },
    NvimTreeGitNew = { fg = colors.color12 },
    NvimTreeGitDeleted = { fg = colors.color1 },
    NvimTreeSpecialFile = { fg = colors.color12 },
    NvimTreeIndentMarker = { fg = colors.color0 },
    NvimTreeImageFile = { fg = colors.foreground },
    NvimTreeSymlink = { fg = colors.color12 },
    NvimTreeFolderIcon = { fg = colors.color11, bg = colors.background },
    NvimTreeFolderName = { fg = colors.foreground },
    NvimTreeOpenedFolderName = { fg = colors.foreground },
    NvimTreeEmptyFolderName = { fg = colors.foreground },
    NvimTreeStatusLineNC = { bg = colors.background, fg = colors.background },

    -- NeoVim
    healthError = { fg = colors.color1 },
    healthSuccess = { fg = colors.color4 },
    healthWarning = { fg = colors.color5 },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = colors.color2 },
    BufferLineFill = { fg = colors.background, bg = colors.background },
    --Staline
    StalineFolderIcon = { bg = colors.color1, fg = colors.black },
    StalineFolderIconMono = { bg = colors.contrast, fg = colors.color7 },
    StalineFolderSep = { bg = colors.black, fg = colors.color1 },
    StalineFolderText = { bg = colors.color8, fg = colors.color15 },
    StalineFolderTextMono = { bg = colors.black, fg = colors.color7 },
    StalineFilename = { bg = colors.background, fg = colors.color7 },
    StalineFilenameSep = { fg = colors.color8, bg = colors.black },
    StalineLogo = { bg = colors.black, fg = colors.color12 },
    StalineProgress = { bg = colors.color8, fg = colors.color15 },
    StalineProgressMono = { bg = colors.contrast, fg = colors.color7 },
    StalineProgressSep = { bg = colors.color8, fg = colors.color10 },
    StalineProgressIcon = { bg = colors.color10, fg = colors.color8 },
    StalineProgressIconMono = { bg = colors.color7, fg = colors.color8 },
    StalineBranch = { bg = colors.background, fg = colors.comment },
    StalineModeSepTwo = { bg = colors.background, fg = colors.color8 },
    StalineNormalMode = { bg = colors.color12, fg = colors.black },
    StalineVisualMode = { bg = colors.color11, fg = colors.black },
    StalineCommandMode = { bg = colors.color9, fg = colors.black },
    StalineInsertMode = { bg = colors.color10, fg = colors.black },
    StalineTerminalMode = { bg = colors.color13, fg = colors.black },
    StalineNTerminalMode = { bg = colors.color13, fg = colors.black },
    StalineConfirmMode = { bg = colors.color6, fg = colors.black },
    StalineNormalModeSep = { fg = colors.color12, bg = colors.color8 },
    StalineVisualModeSep = { fg = colors.color11, bg = colors.color8 },
    StalineCommandModeSep = { fg = colors.color9, bg = colors.color8 },
    StalineInsertModeSep = { fg = colors.color10, bg = colors.color8 },
    StalineTerminalModeSep = { fg = colors.color13, bg = colors.color8 },
    StalineNTerminalModeSep = { fg = colors.color13, bg = colors.color8 },
    StalineConfirmModeSep = { fg = colors.color6, bg = colors.color8 },
    StalineEmptySpace = { bg = colors.background, fg = colors.color15 },
    StalineLspError = { bg = colors.black, fg = colors.color9 },
    StalineLspInfo = { bg = colors.black, fg = colors.color12 },
    StalineLspHints = { bg = colors.black, fg = colors.color6 },
    StalineLspWarning = { bg = colors.black, fg = colors.color11 },
    StalineLspErrorIcon = { bg = colors.black, fg = colors.color9 },
    StalineLspInfoIcon = { bg = colors.black, fg = colors.color12 },
    StalineLspHintsIcon = { bg = colors.black, fg = colors.color6 },
    StalineLspWarningIcon = { bg = colors.black, fg = colors.color11 },
    StalineLspName = { bg = colors.color8, fg = colors.foreground },
    StalineLspNameMono = { bg = colors.black, fg = colors.color7 },
    StalineLspIcon = { bg = colors.color13, fg = colors.black },
    StalineLspIconMono = { bg = colors.contrast, fg = colors.color7 },
    StalineDiffAdd = { bg = colors.background, fg = colors.color10 },
    StalineDiffChange = { bg = colors.background, fg = colors.color11 },
    StalineDiffRemove = { bg = colors.background, fg = colors.color9 },
    StalineDiffAddMono = { bg = colors.background, fg = colors.color7 },
    StalineDiffChangeMono = { bg = colors.background, fg = colors.color7 },
    StalineDiffRemoveMono = { bg = colors.background, fg = colors.color7 },
    StalineLspErrorMono = { bg = colors.black, fg = colors.color7 },
    StalineLspInfoMono = { bg = colors.black, fg = colors.color7 },
    StalineLspHintsMono = { bg = colors.black, fg = colors.color7 },
    StalineLspWarningMono = { bg = colors.black, fg = colors.color7 },
    StalineLspErrorIconMono = { bg = colors.black, fg = colors.color7 },
    StalineLspInfoIconMono = { bg = colors.black, fg = colors.color7 },
    StalineLspHintsIconMono = { bg = colors.black, fg = colors.color7 },
    StalineLspWarningIconMono = { bg = colors.black, fg = colors.color7 },

    StalineMonoMode = { bg = colors.contrast, fg = colors.color7 },

    -- Alpha
    AlphaHeader = { fg = colors.color12 },
    AlphaButton = { fg = colors.color12 },
    AlphaShortcut = { bg = colors.color12, fg = colors.black, bold = true },
    AlphaFooter = { fg = colors.color12, italic = true },
    AlphaComment = { fg = colors.color12, italic = true },

    Blue = { fg = colors.color12 },
    Cyan = { fg = colors.color14 },
    Red = { fg = colors.color9 },
    Yellow = { fg = colors.color11 },
    Green = { fg = colors.color10 },
    Magenta = { fg = colors.color13 },

    -- Devicons
    DevIconDefault = { fg = colors.color9 },
    DevIconc = { fg = colors.color12 },
    DevIconcss = { fg = colors.color12 },
    DevIcondeb = { fg = colors.color6 },
    DevIconDockerfile = { fg = colors.color6 },
    DevIconhtml = { fg = colors.color9 },
    DevIconjpeg = { fg = colors.color2 },
    DevIconjpg = { fg = colors.color2 },
    DevIconjs = { fg = colors.color11 },
    DevIconkt = { fg = colors.color4 },
    DevIconlock = { fg = colors.color4 },
    DevIconmp3 = { fg = colors.color1 },
    DevIconmp4 = { fg = colors.color1 },
    DevIconout = { fg = colors.color1 },
    DevIconpng = { fg = colors.color2 },
    DevIconpy = { fg = colors.color4 },
    DevIcontoml = { fg = colors.color4 },
    DevIconts = { fg = colors.color12 },
    DevIconttf = { fg = colors.color15 },
    DevIconrb = { fg = colors.color9 },
    DevIconrpm = { fg = colors.color11 },
    DevIconvue = { fg = colors.color2 },
    DevIconwoff = { fg = colors.color15 },
    DevIconwoff2 = { fg = colors.color15 },
    DevIconxz = { fg = colors.color11 },
    DevIconzip = { fg = colors.color11 },
    DevIconZig = { fg = colors.color9 },

    PackerPackageName = { fg = colors.color1 },
    PackerSuccess = { fg = colors.color2 },
    PackerStatusSuccess = { fg = colors.color1 },
    PackerStatusCommit = { fg = colors.color4 },
    PackerProgress = { fg = colors.color4 },
    PackerOutput = { fg = colors.color1 },
    PackerStatus = { fg = colors.color4 },
    PackerHash = { fg = colors.color4 },
  }
end

return M
