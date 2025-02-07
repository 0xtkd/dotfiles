local M = {}

---@type Base46HLGroupsList
M.override = {
  -- Cursor
  Cursor = { bg = "white" },
  CursorLine = { bg = "black2" },
  Comment = { italic = true },
  NvDashAscii = { fg = "none", bg = "none" },
  IndentBlanklineContextStart = { bg = "none" },

  -- TreeSitter highlights
  Repeat = { fg = "pink" },
  Include = { fg = "pink" },
  ["@definition"] = { underline = false },
  ["@variable"] = { fg = "white" },
  ["@namespace"] = { fg = "white" },
  ["@function.builtin"] = { fg = "cyan" },
  ["@function.call"] = { fg = "green" },
  ["@boolean"] = { fg = "green" },
  ["@text.danger"] = { fg = "red" },
  ["@text.note"] = { fg = "blue" },
  ["@text.header"] = { bold = true },
  ["@text.diff.add"] = { fg = "green" },
  ["@text.diff.delete"] = { fg = "red" },
  ["@text.todo"] = { fg = "blue" },
  ["@string.special"] = { fg = "blue" },
  ["@class.css"] = { fg = "green" },
  ["@class.scss"] = { link = "@class.css" },
  ["@property.css"] = { fg = "teal" },
  ["@property.scss"] = { link = "@property.css" },
  ["@lsp.type.keyword"] = { link = "Keyword" },
  ["@lsp.type.operator"] = { link = "Operator" },
  ["@lsp.type.parameter"] = { link = "@parameter" },
  ["@lsp.type.property"] = { link = "@property" },
  ["@lsp.typemod.method.reference"] = { link = "Function" },
  ["@lsp.typemod.method.trait"] = { link = "Function" },
  ["@lsp.typemod.selfKeyword.defaultLibrary"] = { link = "Keyword" },

  -- Copilot
  CopilotSuggestion = { fg = "#83a598" },
  CopilotAnnotation = { fg = "#03a598" },

  -- NvimTree
  NvimTreeGitNew = { fg = "green" },
  NvimTreeGitDirty = { fg = "yellow" },
  NvimTreeGitDeleted = { fg = "red" },
  NvimTreeCursorLine = { bg = "one_bg3" },
}

---@type HLTable
M.add = {
  MultiCursor = { bg = "white" },
  MultiCursorMain = { bg = "white" },

  DapBreakpoint = { fg = "red" },

  LightBulbSign = { bg = "black", fg = "yellow" },

  NvimTreeOpenedFolderName = { fg = "purple", bold = true },
  NvimTreeOpenedFile = { fg = "green", bold = true },

  -- Cmp Highlights
  CmpItemKindCodeium = { fg = "#51BDAC" },
  CmpItemKindTabNine = { fg = "#C73BE3" },

  VirtColumn = { fg = "black2" },
  FoldColumn = { bg = "black", fg = "white" },
  Folded = { bg = "black", fg = "white" },

  -- Tree Sitter Rainbow
  RainbowDelimiterRed = { fg = "red" },
  RainbowDelimiterYellow = { fg = "yellow" },
  RainbowDelimiterBlue = { fg = "blue" },
  RainbowDelimiterOrange = { fg = "orange" },
  RainbowDelimiterGreen = { fg = "green" },
  RainbowDelimiterViolet = { fg = "purple" },
  RainbowDelimiterCyan = { fg = "cyan" },

  -- Diff
  DiffChange = { fg = "yellow" },
  DiffAdd = { fg = "vibrant_green" },
  DiffText = { fg = "white", bg = "red", bold = true },

  GitSignsChange = { fg = "green" },
  GitSignsAdd = { fg = "vibrant_green" },
  GitSignsDelete = { fg = "red" },
  GitSignsText = { fg = "white", bg = "red", bold = true },

  -- Deprecated
  cssDeprecated = { strikethrough = true },
  javaScriptDeprecated = { strikethrough = true },

  -- Search highlights
  HlSearchNear = { fg = "#2E3440", bg = "yellow" },
  HlSearchLens = { fg = "#2E3440", bg = "blue" },
  HlSearchLensNear = { fg = "#2E3440", bg = "yellow" },

  -- LSP Saga
  SagaBorder = { fg = "blue" },
  SagaWinbarFolder = { fg = "blue" },
  HoverNormal = { fg = "white" },
  CodeActionText = { fg = "white" },
  CodeActionNumber = { link = "Number" },

  -- Custom highlights
  CopilotHl = { fg = "white", bg = "statusline_bg" },
  HarpoonHl = { fg = "cyan", bg = "statusline_bg" },
  NotificationHl = { fg = "white", bg = "statusline_bg" },
  TermHl = { fg = "green", bg = "statusline_bg" },
  SplitHl = { fg = "white", bg = "statusline_bg" },

  -- Blankline
  IndentBlanklineContextChar = { fg = "none" },
  IndentBlanklineContextStart = { bg = "none" },

  DiagnosticUnnecessary = { link = "", fg = "light_grey" },
  LspInlayHint = { link = "", fg = "light_grey" },

  -- Hop
  HopNextKey = { fg = "red", bold = true },
  HopNextKey1 = { fg = "cyan", bold = true },
  HopNextKey2 = { fg = "blue" },

  NoiceCursor = { link = "Cursor" },
  NoiceCmdlinePopupBorder = { fg = "cyan" },
  NoiceCmdlinePopupBorderSearch = { fg = "yellow" },

  HarpoonBorder = { fg = "cyan" },

  TroubleText = { fg = "green" },
  TroubleCount = { fg = "pink" },

  TroubleCode = { fg = "white" },
  TroubleWarning = { fg = "orange" },
  TroubleSignWarning = { fg = "yellow" },
  TroubleTextWarning = { fg = "white" },
  TroublePreview = { fg = "red" },
  TroubleSource = { fg = "cyan" },
  TroubleSignHint = { fg = "green" },
  TroubleTextHint = { fg = "white" },
  TroubleHint = { fg = "orange" },
  TroubleSignOther = { fg = "green" },
  TroubleSignInformation = { fg = "white" },
  TroubleTextInformation = { fg = "blue" },
  TroubleInformation = { fg = "white" },
  TroubleError = { fg = "red" },
  TroubleTextError = { fg = "red" }, -- error info text
  TroubleSignError = { fg = "red" }, -- error sign color
  TroubleText = { fg = "white" },
  TroubleFile = { fg = "yellow" }, -- the source file that has error
  TroubleFoldIcon = { fg = "cyan" }, -- fold icon color
  TroubleCount = { fg = "red" },
  TroubleNormal = { fg = "white" },
  TroubleLocation = { fg = "white" }, -- location of error
  TroubleIndent = { link = "Comment" }, -- indent color

  CodeActionMenuWarningMessageText = { fg = "white" },
  CodeActionMenuWarningMessageBorder = { fg = "red" },
  CodeActionMenuMenuIndex = { fg = "blue" },
  CodeActionMenuMenuKind = { fg = "green" },
  CodeActionMenuMenuTitle = { fg = "white" },
  CodeActionMenuMenuDisabled = { link = "Comment" },
  CodeActionMenuMenuSelection = { fg = "blue" },
  CodeActionMenuDetailsTitle = { fg = "white" },
  CodeActionMenuDetailsLabel = { fg = "yellow" },
  CodeActionMenuDetailsPreferred = { fg = "green" },
  CodeActionMenuDetailsDisabled = { link = "Comment" },
  CodeActionMenuDetailsUndefined = { link = "Comment" },
}

return M
