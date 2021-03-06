-- Theme: Kosmikoa
-- Author: Novakane
-- Repository: https://github.com/novakne/kosmikoa.nvim
-- License: MIT


local kosmikoa = {}


local colors = {

  base00 = '#23222b',
  base01 = '#474557',
  base02 = '#59566d',
  base03 = '#6b6883',
  base04 = '#7e7b97',
  base05 = '#9491a8',
  base06 = '#a9a7b9',
  base07 = '#bfbdcb',
  base08 = '#d4d3dc',
  base09 = '#eae9ee',


  -- [ Main colors ]
  pink00   = '#fc65b0',
  pink01   = '#e862ac',
  pink02   = '#e980bb',
  pink03   = '#e98fc2',
  pink04   = '#ea9fc9',
  pink05   = '#ebafd0',
  pink06   = '#ebbfd8',

  yellow00 = '#e8ec77',
  yellow01 = '#eed87a',
  yellow02 = '#eeda88',
  yellow03 = '#efdd96',
  yellow04 = '#f2f4b3',
  yellow05 = '#efe3b3',
  yellow06 = '#eee5c1',

  blue00   = '#57bbf4',
  blue01   = '#69b6e6',
  blue02   = '#78bce7',
  blue03   = '#89c3e9',
  blue04   = '#9acaea',
  blue05   = '#aad1ea',
  blue06   = '#bad8eb',


  -- [ Additional colors ]
  err       = '#ec5382',

  green00   = '#62e89e',
  -- builtin
  green01   = '#7fe792',
  green02   = '#74dfb9',
  green03   = '#2fe5b5',

  orange00  = '#f08c89',
  orange01  = '#f09895',
  orange02  = '#efa4a2',
  orange03  = '#efb1af',
  orange04  = '#efbdbb',
  orange05  = '#eec9c7',

  magenta00 = '#be8fde',
  magenta01 = '#c49be0',
  magenta02 = '#caa7e2',

  cyan00    = '#00cfd0',

}


-- [ Terminal ]
local term_colors = {
  terminal_color_0  = colors.base01,
  terminal_color_1  = colors.pink00,
  terminal_color_2  = colors.green00,
  terminal_color_3  = colors.yellow00,
  terminal_color_4  = colors.blue00,
  terminal_color_5  = colors.magenta00,
  terminal_color_6  = colors.cyan00,
  terminal_color_7  = colors.base08,
  terminal_color_8  = colors.base02,
  terminal_color_9  = colors.pink00,
  terminal_color_10 = colors.green00,
  terminal_color_11 = colors.yellow00,
  terminal_color_12 = colors.blue00,
  terminal_color_13 = colors.magenta00,
  terminal_color_14 = colors.cyan00,
  terminal_color_15 = colors.base09,
}


-- [ Highlighting function ]
local highlight = function(group, color)
  local guifg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
  local guibg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
  local attr = color.attr and 'gui=' .. color.attr or 'gui=NONE'
  local sp = color.sp and 'guisp=' .. color.sp or ''
  local cmd = ('highlight! %s %s %s %s %s'):format(group, guifg, guibg, attr, sp)

  vim.cmd(cmd)

end


-- [ Syntax groups ]
kosmikoa.set_syntax = function()
  local syntax = {


    -- ------------------------------------------
    -- [ UI COMPONENTS ]
    -- ------------------------------------------
    -- ( :so $VIMRUNTIME/syntax/hitest.vim )


    -- [ Attributes ]
    Bold = {attr = 'bold'},
    Italic = {attr = 'italic'},
    Underline = {attr = 'underline'},

    -- [ Editor ]
    ColorColumn = {fg = colors.base01},
    Cursor = {fg = colors.base00, bg = colors.base09},
    CursorLine = {bg = colors.base01},
    Error = {fg = colors.err, bg = colors.base00},
    iCursor = {fg = colors.base00, bg = colors.base07},
    LineNr = {fg = colors.base02, bg = colors.base00},
    MatchParen = {fg = colors.green00, bg = colors.base02},
    NonText = {fg = colors.base02},
    Normal = {fg = colors.base09, bg = colors.base00},
    PMenu = {fg = colors.base07, bg = colors.base01},
    PmenuSbar = {fg = colors.base08, bg = colors.base02},
    PMenuSel = {fg = colors.base01, bg = colors.blue00},
    PmenuThumb = {fg = colors.green00, bg = colors.base02},
    RedrawDebugNormal = {fg = colors.base00, bg = colors.base09},
    RedrawDebugClear = {fg = colors.base00, bg = colors.yellow00},
    RedrawDebugComposed = {fg = colors.base00, bg = colors.green00},
    RedrawDebugRecompose = {fg = colors.base00, bg = colors.err},
    SpecialKey = {fg = colors.base04},
    SpellBad = {
      fg = colors.err,
      bg = colors.base00,
      attr = 'undercurl',
      sp = colors.err,
    },
    SpellCap = {
      fg = colors.pink00,
      bg = colors.base00,
      attr = 'undercurl',
      sp = colors.pink00,
    },
    SpellLocal = {
      fg = colors.orange00,
      bg = colors.base00,
      attr = 'undercurl',
      sp = colors.orange00,
    },
    SpellRare = {
      fg = colors.yellow00,
      bg = colors.base00,
      attr = 'undercurl',
      sp = colors.yellow00,
    },
    Visual = {fg = colors.base07, bg = colors.base01, attr = 'bold'},
    VisualNOS = {fg = colors.base05},

    -- [ Neovim support ]
    NvimInternalError = {fg = colors.base00, bg = colors.err},
    healthError = {fg = colors.err, bg = colors.base00},
    healthSuccess = {fg = colors.green00, bg = colors.base00},
    healthWarning = {fg = colors.yellow00, bg = colors.base00},
    TermCursorNC = {fg = colors.base01},

    -- [ Gutter ]
    CursorColumn = {fg = colors.base01},
    CursorLineNr = {fg = colors.blue00, bg = colors.base00},
    Folded = {fg = colors.base04, bg = colors.base01, attr = 'bold'},
    FoldColumn = {fg = colors.base03, bg = colors.base00},
    SignColumn = {fg = colors.base01, bg = colors.base00},

    -- [ Navigation ]
    Directory = {fg = colors.blue01},

    -- [ Prompt / Status ]
    EndOfBuffer = {fg = colors.base01},
    ErrorMsg = {fg = colors.base00, bg = colors.err},
    ModeMsg = {fg = colors.base06},
    MoreMsg = {fg = colors.base06},
    Question = {fg = colors.base06},
    StatusLine = {fg = colors.base07, bg = colors.base01},
    StatusLineNC = {fg = colors.base06, bg = colors.base01},
    StatusLineTerm = {fg = colors.base07, bg = colors.base01},
    StatusLineTermNC = {fg = colors.base06, bg = colors.base01},
    WarningMsg = {fg = colors.base00, bg = colors.yellow00},
    WildMenu = {fg = colors.yellow00, bg = colors.base01},

    -- [ Search ]
    IncSearch = {fg = colors.base00, bg = colors.yellow00, attr = 'underline'},
    Search = {fg = colors.base00, bg = colors.blue00},

    -- [ Tabs ]
    TabLine = {fg = colors.base06, bg = colors.base01},
    TabLineFill = {fg = colors.base06, bg = colors.base01},
    TabLineSel = {fg = colors.base00, bg = colors.blue00},

    -- [ Window ]
    Title = {fg = colors.base06},
    VertSplit = {fg = colors.base01, bg = colors.base00},

    -- [ Diff ]
    DiffAdd = {fg = colors.green00, bg = colors.base00, attr = 'inverse'},
    DiffChange = {fg = colors.yellow00, bg = colors.base00, attr = 'inverse'},
    DiffDelete = {fg = colors.err, bg = colors.base00, attr = 'inverse'},
    DiffText = {fg = colors.blue00, bg = colors.base00, attr = 'inverse'},
    -- Legacy groups for official git.vim and diff.vim syntax
    diffAdded = {fg = colors.green00, bg = colors.base00, attr = 'inverse'},
    diffChanged = {fg = colors.yellow00, bg = colors.base00, attr = 'inverse'},
    diffRemoved = {fg = colors.err, bg = colors.base00, attr = 'inverse'},

    -- [ Quickfix / Location list ]
    qfLineNr = {fg = colors.blue00},

    -- [ Neovim lsp ]
    LspDiagnosticsDefaultError = {fg = colors.err},
    LspDiagnosticsDefaultWarning = {fg = colors.yellow00},
    LspDiagnosticsDefaultInformation = {fg = colors.blue00},
    LspDiagnosticsDefaultHint = {fg = colors.blue03},
    LspDiagnosticsUnderlineError = {fg = colors.err},
    LspDiagnosticsUnderlineWarning = {fg = colors.yellow00},
    LspDiagnosticsUnderlineInformation = {fg = colors.blue00},
    LspDiagnosticsUnderlineHint = {fg = colors.blue03},
    LspDiagErrorBorder = {fg = colors.err},
    LspDiagWarnBorder = {fg = colors.yellow00},
    LspDiagInforBorder = {fg = colors.blue00},
    LspDiagHintBorder = {fg = colors.blue03},


    -- -------------------------------------------
    -- [ LANGUAGE KOSMIKOA.BASE GROUPS ]
    -- -------------------------------------------
    -- ( :help w18 )


    Comment = {fg = colors.base03, attr = 'italic'},

    Constant = {fg = colors.pink00},
    String = {fg = colors.blue05, attr = 'italic'},
    Character = {fg = colors.cyan00},
    Number = {fg = colors.orange01},
    Boolean = {fg = colors.orange00},
    Float = {fg = colors.orange04},

    Identifier = {fg = colors.base07},
    Function = {fg = colors.yellow00},

    Statement = {fg = colors.blue04},
    Conditional = {fg = colors.blue00},
    Repeat = {fg = colors.blue02},
    Label = {fg = colors.yellow03},
    Operator = {fg = colors.magenta00},
    Keyword = {fg = colors.yellow02},
    Exception = {fg = colors.pink03},

    PreProc = {fg = colors.magenta01},
    Include = {fg = colors.magenta02},
    Define = {fg = colors.magenta01},
    Macro = {fg = colors.magenta02},
    PreCondit = {fg = colors.magenta02},

    Type = {fg = colors.pink00},
    StorageClass = {fg = colors.pink05},
    Structure = {fg = colors.pink02},
    Typedef = {fg = colors.pink04},

    Special = {fg = colors.cyan00},
    SpecialChar = {fg = colors.cyan00},
    Tag = {fg = colors.base07},
    Delimiter = {fg = colors.base08},
    SpecialComment = {fg = colors.base03, attr = 'italic'},
    Todo = {fg = colors.yellow06, attr = 'underline'},


    -- ------------------------------------------
    -- [ LANGUAGES SPECIFIC ]
    -- ------------------------------------------


    -- [ C ]
    cDefine = {fg = colors.magenta01},

    -- [ Css ]
    cssAttributeSelector = {fg = colors.magenta01},
    cssBackgroundAttr = {fg = colors.pink00},
    cssBackgroundProp = {fg = colors.pink00},
    cssBorderAttr = {fg = colors.pink01},
    cssBorderProp = {fg = colors.pink01},
    cssBoxAttr = {fg = colors.pink02},
    cssBoxProp = {fg = colors.pink02},
    cssClassName = {fg = colors.blue00},
    cssClassNameDot = {fg = colors.blue00},
    cssColor = {fg = colors.base07},
    cssFontAttr = {fg = colors.pink03},
    cssFontProp = {fg = colors.pink03},
    cssIdentifier = {fg = colors.blue02},
    cssMediaType = {fg = colors.pink04},
    cssPositioningAttr = {fg = colors.pink05},
    cssPositioningProp = {fg = colors.pink05},
    cssPseudoClassId = {fg = colors.blue06},
    cssSelectorOp = {fg = colors.magenta02},
    cssSelectorOp2 = {fg = colors.yellow02},
    cssTagName = {fg = colors.blue04},
    cssTextAttr = {fg = colors.pink06},
    cssTextProp = {fg = colors.pink06},
    cssURL = {fg = colors.base07, attr = 'underline'},

    -- [ Fennel ]
    -- ( https://github.com/bakpakin/fennel.vim )
    FennelSpecialForm = {fg = colors.pink01},
    FennelSymbol = {fg = colors.pink02},

    -- [ Go ]
    goBuiltins = {fg = colors.green00},
    goDeclType = {fg = colors.pink02},
    goVar = {fg = colors.pink02},
    goVarArgs = {fg = colors.yellow02},

    -- [ Html ]
    htmlArg = {fg = colors.yellow02},
    htmlBold = {fg = colors.base07, attr = 'bold'},
    htmlEndTag = {fg = colors.blue04},
    htmlH1 = {fg = colors.pink00},
    htmlH2 = {fg = colors.pink01},
    htmlH3 = {fg = colors.pink02},
    htmlH4 = {fg = colors.pink03},
    htmlH5 = {fg = colors.pink04},
    htmlH6 = {fg = colors.pink05},
    htmlItalic = {fg = colors.base07, attr = 'italic'},
    htmlLink = {fg = colors.base07, attr = 'underline'},
    htmlTag = {fg = colors.blue00},
    htmlTagN = {fg = colors.blue02},
    htmlTagName = {fg = colors.blue00},
    htmlTitle = {fg = colors.base09, attr = 'bold'},

    -- [ Java ]
    javaCommentTitle = {fg = colors.base05, attr = 'italic'},
    javaDocParam = {fg = colors.cyan00},
    javaDocSeeTagParam = {fg = colors.cyan00},
    javaDocTags = {fg = colors.cyan00, attr = 'bold'},

    -- [ Javascript ]
    -- ( http//github.com/pangloss/vim-javascript )
    jsArrowFunction = {fg = colors.yellow00},
    jsFuncArgs = {fg = colors.yellow06, attr = 'italic'},
    jsFuncCall = {fg = colors.yellow02},
    jsObjectColon = {fg = colors.blue03},
    jsObjectKey = {fg = colors.blue01},
    jsObjectProp = {fg = colors.cyan00},
    jsVariableDef = {fg = colors.base07, attr = 'italic'},

    -- [ Json ]
    jsonBraces = {fg = colors.magenta00},
    jsonNull = {fg = colors.pink00},

    -- [ Less ]
    --  ( http//github.com/groenewege/vim-less )
    lessClassCall = {fg = colors.yellow02},
    lessCssAttribute = {fg = colors.yellow04},
    lessFunction = {fg = colors.yellow00},
    lessVariable = {fg = colors.magenta00},
    lessclass = {fg = colors.blue00},
    lessclassChar = {fg = colors.blue00},

    -- [ Lua ]
    luaFuncCall = {fg = colors.yellow02},
    luaSpecialValue = {fg = colors.yellow04},
    luaBuiltIn = {fg = colors.green00},

    -- [ Markdown ]
    -- ( http//github.com/plasticboy/vim-markdown )
    mkdBold = {fg = colors.base07, attr = 'bold'},
    mkdCode = {fg = colors.blue03},
    mkdCodeDelimiter = {fg = colors.blue00},
    mkdCodeEnd = {fg = colors.blue00},
    mkdCodeStart = {fg = colors.blue00},
    mkdHeading = {fg = colors.pink00},
    mkdItalic = {fg = colors.base07, attr = 'italic'},
    mkdLink = {fg = colors.base07, attr = 'underline'},
    mkdListItem = {fg = colors.pink02},
    mkdListItemLine = {fg = colors.base06},

    -- [ Nim ]
    nimBuiltin = {fg = colors.green00},

    -- [ Php ]
    phpVarSelector = {fg = colors.pink02},
    phpIdentifier = {fg = colors.pink06},

    -- [ Python ]
    pythonClassVar = {fg = colors.magenta01},
    pythonBuiltinType = {fg = colors.green03},
    pythonFunctionCall = {fg = colors.yellow02},
    pythonStatement = {fg = colors.blue00},

    -- [ Rust ]
    -- ( http//github.com/rust-lang/rust.vim )
    rustArrowCharacter = {fg = colors.yellow00},
    rustFatRightArrowHead = {fg = colors.yellow02},
    rustFatRightArrowTail = {fg = colors.yellow02},
    rustModPathSep = {fg = colors.base07, attr = 'bold'},
    rustRepeat = {fg = colors.blue02},
    rustSelf = {fg = colors.green00},
    rustStructure = {fg = colors.pink02},


    -- [ Scss ]
    -- ( http//github.com/cakebaker/scss-syntax.vim )
    scssSelectorName = {fg = colors.cyan00},
    scssSelectorChar = {fg = colors.cyan00},
    scssVariable = {fg = colors.magenta00},

    -- [ Shell ]
    shCaseBar = {fg = colors.magenta02},
    shCmdParenRegion = {fg = colors.yellow06},
    shDerefPPSleft = {fg = colors.yellow03},
    shDerefPPSright = {fg = colors.yellow04},
    shDerefSimple = {fg = colors.pink06},
    shDerefSpecial = {fg = colors.pink02},
    shDerefVar = {fg = colors.pink04},
    shDerefVarArray = {fg = colors.orange00},
    shFunctionKey = {fg = colors.pink00},
    shSet = {fg = colors.pink02},
    shSetList = {fg = colors.pink02},
    shVariable = {fg = colors.base07, attr = 'italic'},

    -- [ Toml ]
    tomlKey = {fg = colors.blue03},
    tomlTable = {fg = colors.pink02},

    -- [ Typescript ]
    typescriptVariable = {fg = colors.pink02},
    typescriptOperator = {fg = colors.blue00},
    typescriptVariableDeclaration = {fg = colors.base07},

    -- [ Vim ]
    vimAugroupKey = {fg = colors.orange00},
    vimAutocmd = {fg = colors.orange03},
    vimCommand = {fg = colors.green00},
    vimSubsPat = {fg = colors.yellow03},
    vimSubsRep4 = {fg = colors.yellow03},
    vimFuncName = {fg = colors.yellow02},
    vimFunction = {fg = colors.yellow01},
    vimLet = {fg = colors.pink02},
    vimNotFunc = {fg = colors.magenta01},
    vimOption = {fg = colors.green00},
    vimUserFunc = {fg = colors.yellow01},
    vimVar = {fg = colors.pink02},

    -- [ Xml ]
    xmlProcessingDelim = {fg = colors.green00},
    xmlTag = {fg = colors.blue03},
    xmlTagName = {fg = colors.blue00},

    -- [ Yaml ]
    yamlBlockMappingKey = {fg = colors.blue00},
    yamlFlowIndicator = {fg = colors.magenta00},
    yamlFlowMappingKey = {fg = colors.blue03},
    yamlFlowMappingMerge = {fg = colors.yellow01},

    -- [ Zig ]
    zigBuiltinFn = {fg = colors.green01},
    zigExecution = {fg = colors.magenta02},
    zigKeyword = {fg = colors.yellow00},
    zigVarDecl = {fg = colors.pink00},

    -- [ Zsh ]
    zshDelimiter = {fg = colors.magenta02},
    zshDeref = {fg = colors.err},
    zshOption = {fg = colors.green00},
    zshShortDeref = {fg = colors.blue01},
    zshSubst = {fg = colors.orange02},
    zshSubstDelim = {fg = colors.orange03},
    zshVariableDef = {fg = colors.pink02},


    -- -------------------------------------------
    -- [ PLUGIN SUPPORT ]
    -- -------------------------------------------


    -- [ Hop ]
    -- ( https://github.com/phaazon/hop.nvim )
    HopNextKey = {fg = colors.pink00},
    HopNextKey1 = {fg = colors.yellow00},
    HopNextKey2 = {fg = colors.blue00},

    -- [ Lspsaga ]
    -- ( https://github.com/glepnir/lspsaga.nvim )
    LineDiagTuncateLine = {fg = colors.base02},
    LspFloatWinBorder = {fg = colors.yellow00},
    LspLinesDiagBorder = {fg = colors.err},
    LspSagaAutoPreview = {fg = colors.pink00},
    LspSagaBorderTitle = {fg = colors.pink00},
    LspSagaCodeActionBorder = {fg = colors.pink00},
    LspSagaCodeActionContent = {fg = colors.base08},
    LspSagaCodeActionTitle = {fg = colors.pink00},
    LspSagaCodeActionTruncateLine = {fg = colors.base02},
    LspSagaDefPreviewBorder = {fg = colors.blue00},
    LspSagaDocTruncateLine = {fg = colors.base02},
    LspSagaFinderSelection = {fg = colors.blue02},
    LspSagaHoverBorder = {fg = colors.blue00},
    LspSagaLspFinderBorder = {fg = colors.blue00},
    LspSagaRenameBorder = {fg = colors.pink00},
    LspSagaRenamePromptPrefix = {fg = colors.pink00},
    LspSagaShTruncateLine = {fg = colors.base02},
    LspSagaSignatureHelpBorder= {fg = colors.blue00},
    ProviderTruncateLine = {fg = colors.base02},
    SagaShadow = {fg = colors.base08, bg = colors.base00},


    -- [ Signify ]
    -- ( http//github.com/mhinz/vim-signify )
    SignifyDeleteFirstLine = {fg = colors.err},
    SignifyLineAdd = {fg = colors.green00},
    SignifyLineChange = {fg = colors.yellow00},
    SignifyLineChangeDelete = {fg = colors.yellow02},
    SignifyLineDelete = {fg = colors.err},
    SignifyLineDeleteFirstLine = {fg = colors.err},
    SignifySignAdd = {fg = colors.green00},
    SignifySignChange = {fg = colors.yellow00},
    SignifySignChangeDelete = {fg = colors.yellow02},
    SignifySignDelete = {fg = colors.err},

    -- [ Telescope ]
    -- ( https://github.com/nvim-telescope/telescope.nvim )
    TelescopePreviewLine = {fg = colors.blue00},
    TelescopeSelection = {fg = colors.yellow00},
    TelescopeSelectionCaret = {fg = colors.pink00},

    -- [ Treesitter ]
    -- ( https://github.com/nvim-treesitter/nvim-treesitter )
    TSConstBuiltin = {fg = colors.green02},
    TSConstMacro = {fg = colors.magenta02},
    TSConstant = {fg = colors.pink00},
    TSConstructor = {fg = colors.pink00},
    TSFuncBuiltin = {fg = colors.green01},
    TSFuncMacro = {fg = colors.magenta02},
    TSFunction = {fg = colors.yellow00},
    TSInclude = {fg = colors.magenta02},
    TSKeyword = {fg = colors.yellow02},
    TSKeywordFunction = {fg = colors.pink00},
    TSKeywordOperator = {fg = colors.blue03},
    TSMethod = {fg = colors.yellow02},
    TSParameter = {fg = colors.yellow06, attr = 'italic'},
    TSParameterReference = {fg = colors.yellow05, attr = 'italic'},
    TSProperty = {fg = colors.blue04, attr = 'italic'},
    TSStringEscape = {fg = colors.cyan00, attr = 'italic'},
    TSStringRegex = {fg = colors.cyan00, attr = 'italic'},
    TSType = {fg = colors.pink00},
    TSTypeBuiltin = {fg = colors.green03},
    TSVariable = {fg = colors.base07, attr = 'italic'},
    TSVariableBuiltin = {fg = colors.base07, attr = 'bold'},

    -- Nvim-ts-rainbow ( https://github.com/p00f/nvim-ts-rainbow )
    rainbowcol1 = {fg = colors.green00},
    rainbowcol2 = {fg = colors.err},
    rainbowcol3 = {fg = colors.cyan00},
    rainbowcol4 = {fg = colors.orange00},
    rainbowcol5 = {fg = colors.magenta00},
    rainbowcol6 = {fg = colors.blue00},
    rainbowcol7 = {fg = colors.yellow00},
    -- Nvim-treesitter-refactor ( https://github.com/nvim-treesitter/nvim-treesitter-refactor )
    TSCurrentScope = {bg = colors.base01},
    TSDefinitionUsage = {fg = colors.err, attr = 'italic'},
    TSDefiniton = {fg = colors.base00, bg = colors.base09, attr = 'bold'},
    -- Treesitter-playground ( https://github.com/nvim-treesitter/playground )
    TSPlaygroundFocus = {fg = colors.base00, bg = colors.orange00},

    -- [ Which-key ]
    -- ( https://github.com/liuchengxu/vim-which-key )
    WhichKey = {fg = colors.pink00},
    WhichKeyDesc = {fg = colors.base09},
    WhichKeyFloating = {bg = colors.base00},
    WhichKeyGroup = {fg = colors.yellow00},
    WhichKeyName = {fg = colors.base08},
    WhichKeySeperator = {fg = colors.blue00},
    WhichKeyTrigger = {fg = colors.magenta00},

  }

  return syntax
end


kosmikoa.setup = function(opts)
  local user_colors = opts or {}
  colors = vim.tbl_deep_extend('force', colors, user_colors.colors or {})

  vim.cmd [[hi clear]]

  if vim.fn.exists('syntax on') then
    vim.cmd [[syntax reset]]
  end

  vim.o.background = 'dark'
  vim.o.termguicolors = true

  for color, value in pairs(term_colors) do
    vim.g[color] = value
  end

  local syntax = kosmikoa.set_syntax()

  for group, color in pairs(syntax) do
    highlight(group, color)
  end

end


return kosmikoa

