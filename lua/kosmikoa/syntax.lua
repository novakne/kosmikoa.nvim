-- -----------------------------------------------
-- Theme: kosmikoa
-- Author: novakane
-- Repo: https://sr.ht/~novakane/kosmikoa.nvim/
-- License: MIT
-- -----------------------------------------------
local c = require 'kosmikoa.palette'

local syntax = {}

-- [ Terminal ]
syntax.term = function()
    vim.g.terminal_color_0 = c.base01
    vim.g.terminal_color_1 = c.pink00
    vim.g.terminal_color_2 = c.green00
    vim.g.terminal_color_3 = c.yellow00
    vim.g.terminal_color_4 = c.blue00
    vim.g.terminal_color_5 = c.magenta00
    vim.g.terminal_color_6 = c.cyan00
    vim.g.terminal_color_7 = c.base08
    vim.g.terminal_color_8 = c.base02
    vim.g.terminal_color_9 = c.pink00
    vim.g.terminal_color_10 = c.green00
    vim.g.terminal_color_11 = c.yellow00
    vim.g.terminal_color_12 = c.blue00
    vim.g.terminal_color_13 = c.magenta00
    vim.g.terminal_color_14 = c.cyan00
    vim.g.terminal_color_15 = c.base09
end

-- -----------------------------------------------
-- [ UI COMPONENTS ]
-- -----------------------------------------------
-- ( :so $VIMRUNTIME/syntax/hitest.vim )
syntax.editor = function()
    local editor = {
        -- [ Attributes ]
        Bold = { attr = 'bold' },
        Italic = { attr = 'italic' },
        Underline = { attr = 'underline' },

        -- [ Editor ]
        ColorColumn = { fg = c.base01 },
        Cursor = { fg = c.base00, bg = c.base09 },
        CursorLine = { bg = c.base01 },
        Error = { fg = c.err, bg = c.base00 },
        iCursor = { fg = c.base00, bg = c.base07 },
        LineNr = { fg = c.base02, bg = c.base00 },
        MatchParen = { fg = c.green00, bg = c.base02 },
        NonText = { fg = c.base02 },
        Normal = { fg = c.base09, bg = c.base00 },
        PMenu = { fg = c.base07, bg = c.base01 },
        PmenuSbar = { fg = c.base08, bg = c.base02 },
        PMenuSel = { fg = c.base01, bg = c.blue00 },
        PmenuThumb = { fg = c.green00, bg = c.base02 },
        RedrawDebugNormal = { fg = c.base00, bg = c.base09 },
        RedrawDebugClear = { fg = c.base00, bg = c.yellow00 },
        RedrawDebugComposed = { fg = c.base00, bg = c.green00 },
        RedrawDebugRecompose = { fg = c.base00, bg = c.err },
        SpecialKey = { fg = c.base04 },
        SpellBad = { fg = c.err, bg = c.base00, attr = 'undercurl', sp = c.err },
        SpellCap = {
            fg = c.pink00,
            bg = c.base00,
            attr = 'undercurl',
            sp = c.pink00,
        },
        SpellLocal = {
            fg = c.orange00,
            bg = c.base00,
            attr = 'undercurl',
            sp = c.orange00,
        },
        SpellRare = {
            fg = c.yellow00,
            bg = c.base00,
            attr = 'undercurl',
            sp = c.yellow00,
        },
        Visual = { fg = c.base07, bg = c.base01, attr = 'bold' },
        VisualNOS = { fg = c.base05 },

        -- [ Neovim support ]
        NvimInternalError = { fg = c.base00, bg = c.err },
        healthError = { fg = c.err, bg = c.base00 },
        healthSuccess = { fg = c.green00, bg = c.base00 },
        healthWarning = { fg = c.yellow00, bg = c.base00 },
        TermCursorNC = { fg = c.base01 },

        -- [ Gutter ]
        CursorColumn = { fg = c.base01 },
        CursorLineNr = { fg = c.blue00, bg = c.base00 },
        Folded = { fg = c.base04, bg = c.base01, attr = 'bold' },
        FoldColumn = { fg = c.base03, bg = c.base00 },
        SignColumn = { fg = c.base01, bg = c.base00 },

        -- [ Navigation ]
        Directory = { fg = c.blue01 },

        -- [ Prompt / Status ]
        EndOfBuffer = { fg = c.base01 },
        ErrorMsg = { fg = c.base00, bg = c.err },
        ModeMsg = { fg = c.base06 },
        MoreMsg = { fg = c.base06 },
        Question = { fg = c.base06 },
        StatusLine = { fg = c.base07, bg = c.base01 },
        StatusLineNC = { fg = c.base06, bg = c.base01 },
        StatusLineTerm = { fg = c.base07, bg = c.base01 },
        StatusLineTermNC = { fg = c.base06, bg = c.base01 },
        WarningMsg = { fg = c.base00, bg = c.yellow00 },
        WildMenu = { fg = c.yellow00, bg = c.base01 },

        -- [ Search ]
        IncSearch = { fg = c.base00, bg = c.yellow00, attr = 'underline' },
        Search = { fg = c.base00, bg = c.blue00 },

        -- [ Tabs ]
        TabLine = { fg = c.base06, bg = c.base01 },
        TabLineFill = { fg = c.base06, bg = c.base01 },
        TabLineSel = { fg = c.base00, bg = c.blue00 },

        -- [ Window ]
        Title = { fg = c.base06 },
        VertSplit = { fg = c.base01, bg = c.base00 },

        -- [ Diff ]
        DiffAdd = { fg = c.green00, bg = c.base00, attr = 'inverse' },
        DiffChange = { fg = c.yellow00, bg = c.base00, attr = 'inverse' },
        DiffDelete = { fg = c.err, bg = c.base00, attr = 'inverse' },
        DiffText = { fg = c.blue00, bg = c.base00, attr = 'inverse' },
        -- Legacy groups for official git.vim and diff.vim syntax
        diffAdded = { fg = c.base09, attr = 'bold' },
        diffChanged = { fg = c.yellow00 },
        diffRemoved = { fg = c.base06 },

        -- [ Quickfix / Location list ]
        qfLineNr = { fg = c.blue00 },

        -- [ Neovim lsp ]
        LspDiagnosticsDefaultError = { fg = c.err },
        LspDiagnosticsDefaultWarning = { fg = c.yellow00 },
        LspDiagnosticsDefaultInformation = { fg = c.blue00 },
        LspDiagnosticsDefaultHint = { fg = c.blue03 },
        LspDiagnosticsUnderlineError = { fg = c.err },
        LspDiagnosticsUnderlineWarning = { fg = c.yellow00 },
        LspDiagnosticsUnderlineInformation = { fg = c.blue00 },
        LspDiagnosticsUnderlineHint = { fg = c.blue03 },
        LspDiagErrorBorder = { fg = c.err },
        LspDiagWarnBorder = { fg = c.yellow00 },
        LspDiagInforBorder = { fg = c.blue00 },
        LspDiagHintBorder = { fg = c.blue03 },
    }

    return editor
end

-- -----------------------------------------------
-- [ LANGUAGE KOSMIKOA.BASE GROUPS ]
-- -----------------------------------------------
-- ( :help w18 )
syntax.base = function()
    local base = {
        Comment = { fg = c.base03, attr = 'italic' },

        Constant = { fg = c.pink00 },
        String = { fg = c.blue05, attr = 'italic' },
        Character = { fg = c.cyan00 },
        Number = { fg = c.orange01 },
        Boolean = { fg = c.orange00 },
        Float = { fg = c.orange04 },

        Identifier = { fg = c.base07 },
        Function = { fg = c.yellow00 },

        Statement = { fg = c.blue04 },
        Conditional = { fg = c.blue00 },
        Repeat = { fg = c.blue02 },
        Label = { fg = c.yellow03 },
        Operator = { fg = c.magenta00 },
        Keyword = { fg = c.yellow02 },
        Exception = { fg = c.pink03 },

        PreProc = { fg = c.magenta01 },
        Include = { fg = c.magenta02 },
        Define = { fg = c.magenta01 },
        Macro = { fg = c.magenta02 },
        PreCondit = { fg = c.magenta02 },

        Type = { fg = c.pink00 },
        StorageClass = { fg = c.pink05 },
        Structure = { fg = c.pink02 },
        Typedef = { fg = c.pink04 },

        Special = { fg = c.cyan00 },
        SpecialChar = { fg = c.cyan00 },
        Tag = { fg = c.base07 },
        Delimiter = { fg = c.base08 },
        SpecialComment = { fg = c.base03, attr = 'italic' },
        Todo = { fg = c.base00, bg = c.yellow06 },
    }

    return base
end

-- -----------------------------------------------
-- [ LANGUAGES SPECIFIC ]
-- -----------------------------------------------
syntax.lang = function()
    local lang = {
        -- [ C ]
        cDefine = { fg = c.magenta01 },

        -- [ Css ]
        cssAttributeSelector = { fg = c.magenta01 },
        cssBackgroundAttr = { fg = c.pink00 },
        cssBackgroundProp = { fg = c.pink00 },
        cssBorderAttr = { fg = c.pink01 },
        cssBorderProp = { fg = c.pink01 },
        cssBoxAttr = { fg = c.pink02 },
        cssBoxProp = { fg = c.pink02 },
        cssClassName = { fg = c.blue00 },
        cssClassNameDot = { fg = c.blue00 },
        cssColor = { fg = c.base07 },
        cssFontAttr = { fg = c.pink03 },
        cssFontProp = { fg = c.pink03 },
        cssIdentifier = { fg = c.blue02 },
        cssMediaType = { fg = c.pink04 },
        cssPositioningAttr = { fg = c.pink05 },
        cssPositioningProp = { fg = c.pink05 },
        cssPseudoClassId = { fg = c.blue06 },
        cssSelectorOp = { fg = c.magenta02 },
        cssSelectorOp2 = { fg = c.yellow02 },
        cssTagName = { fg = c.blue04 },
        cssTextAttr = { fg = c.pink06 },
        cssTextProp = { fg = c.pink06 },
        cssURL = { fg = c.base07, attr = 'underline' },

        -- [ Fennel ]
        -- ( https://github.com/bakpakin/fennel.vim )
        FennelSpecialForm = { fg = c.pink01 },
        FennelSymbol = { fg = c.pink02 },

        -- [Git]
        gitcommitBlank = { fg = c.pink00, bg = c.pink06 },
        gitcommitFirstLine = { fg = c.base09, attr = 'bold' },
        gitcommitOverflow = { fg = c.base00, bg = c.pink00 },
        gitcommitSummary = { fg = c.base09 },

        -- [ Go ]
        goBuiltins = { fg = c.green00 },
        goDeclType = { fg = c.pink02 },
        goVar = { fg = c.pink02 },
        goVarArgs = { fg = c.yellow02 },

        -- [ Html ]
        htmlArg = { fg = c.yellow02 },
        htmlBold = { fg = c.base07, attr = 'bold' },
        htmlEndTag = { fg = c.blue04 },
        htmlH1 = { fg = c.pink00 },
        htmlH2 = { fg = c.pink01 },
        htmlH3 = { fg = c.pink02 },
        htmlH4 = { fg = c.pink03 },
        htmlH5 = { fg = c.pink04 },
        htmlH6 = { fg = c.pink05 },
        htmlItalic = { fg = c.base07, attr = 'italic' },
        htmlLink = { fg = c.base07, attr = 'underline' },
        htmlTag = { fg = c.blue00 },
        htmlTagN = { fg = c.blue02 },
        htmlTagName = { fg = c.blue00 },
        htmlTitle = { fg = c.base09, attr = 'bold' },

        -- [ Java ]
        javaCommentTitle = { fg = c.base05, attr = 'italic' },
        javaDocParam = { fg = c.cyan00 },
        javaDocSeeTagParam = { fg = c.cyan00 },
        javaDocTags = { fg = c.cyan00, attr = 'bold' },

        -- [ Javascript ]
        -- ( http//github.com/pangloss/vim-javascript )
        jsArrowFunction = { fg = c.yellow00 },
        jsDestructuringBlock = { fg = c.magenta01 },
        jsFuncArgs = { fg = c.yellow06, attr = 'italic' },
        jsFuncCall = { fg = c.yellow02 },
        jsObjectColon = { fg = c.blue03 },
        jsObjectKey = { fg = c.blue02 },
        jsObjectProp = { fg = c.cyan00 },
        jsTemplateExpression = { fg = c.magenta02 },
        jsThis = { fg = c.green00 },
        jsVariableDef = { fg = c.base07, attr = 'italic' },

        -- [ Json ]
        jsonBraces = { fg = c.magenta00 },
        jsonNull = { fg = c.pink00 },

        -- [ Jsx ]
        jsxClosePunct = { fg = c.blue04 },
        jsxOpenPunct = { fg = c.blue00 },
        jsxTagName = { fg = c.blue00 },

        -- [ Less ]
        --  ( http//github.com/groenewege/vim-less )
        lessClassCall = { fg = c.yellow02 },
        lessCssAttribute = { fg = c.yellow04 },
        lessFunction = { fg = c.yellow00 },
        lessVariable = { fg = c.magenta00 },
        lessclass = { fg = c.blue00 },
        lessclassChar = { fg = c.blue00 },

        -- [ Lua ]
        luaFuncCall = { fg = c.yellow02 },
        luaSpecialValue = { fg = c.yellow04 },
        luaBuiltIn = { fg = c.green00 },

        -- [ mail ]
        mailHeader = { fg = c.blue00 },
        mailHeaderKey = { fg = c.base09, attr = 'bold' },
        mailHeaderEmail = { fg = c.blue00, attr = 'underline' },
        mailSubject = { fg = c.base00, bg = c.blue06 },
        -- git sendmail
        diffFile = { fg = c.yellow00, attr = 'bold' },
        diffIndexLine = { attr = 'italic' },
        diffOldFile = { fg = c.pink00 },
        diffNewFile = { fg = c.blue00 },
        diffLine = { attr = 'bold' },

        -- [ Markdown ]
        markdownBlockquote = { fg = c.base09, attr = 'bold' },
        markdownCode = { fg = c.base09, attr = 'italic' },
        markdownCodeDelimiter = { fg = c.base09, attr = 'italic' },
        markdownUrl = { fg = c.base07, attr = 'underline' },
        -- ( http//github.com/plasticboy/vim-markdown )
        mkdBold = { fg = c.base07, attr = 'bold' },
        mkdCode = { fg = c.blue03 },
        mkdCodeDelimiter = { fg = c.blue00 },
        mkdCodeEnd = { fg = c.blue00 },
        mkdCodeStart = { fg = c.blue00 },
        mkdHeading = { fg = c.pink00 },
        mkdItalic = { fg = c.base07, attr = 'italic' },
        mkdLink = { fg = c.base07, attr = 'underline' },
        mkdListItem = { fg = c.pink02 },
        mkdListItemLine = { fg = c.base06 },

        -- [ Nim ]
        nimBuiltin = { fg = c.green00 },

        -- [ Php ]
        phpVarSelector = { fg = c.pink02 },
        phpIdentifier = { fg = c.pink06 },

        -- [ Python ]
        pythonClassVar = { fg = c.magenta01 },
        pythonBuiltinType = { fg = c.green03 },
        pythonFunctionCall = { fg = c.yellow02 },
        pythonStatement = { fg = c.blue00 },

        -- [ Rust ]
        -- ( http//github.com/rust-lang/rust.vim )
        rustArrowCharacter = { fg = c.yellow00 },
        rustFatRightArrowHead = { fg = c.yellow02 },
        rustFatRightArrowTail = { fg = c.yellow02 },
        rustModPathSep = { fg = c.base07, attr = 'bold' },
        rustRepeat = { fg = c.blue02 },
        rustSelf = { fg = c.green00 },
        rustStructure = { fg = c.pink02 },

        -- [ Scss ]
        -- ( http//github.com/cakebaker/scss-syntax.vim )
        scssSelectorName = { fg = c.cyan00 },
        scssSelectorChar = { fg = c.cyan00 },
        scssVariable = { fg = c.magenta00 },

        -- [ Shell ]
        shCaseBar = { fg = c.magenta02 },
        shCmdParenRegion = { fg = c.yellow06 },
        shDerefPPSleft = { fg = c.yellow03 },
        shDerefPPSright = { fg = c.yellow04 },
        shDerefSimple = { fg = c.pink06 },
        shDerefSpecial = { fg = c.pink02 },
        shDerefVar = { fg = c.pink04 },
        shDerefVarArray = { fg = c.orange00 },
        shFunctionKey = { fg = c.pink00 },
        shSet = { fg = c.pink02 },
        shSetList = { fg = c.pink02 },
        shVariable = { fg = c.base07, attr = 'italic' },

        -- [ Toml ]
        tomlKey = { fg = c.blue03 },
        tomlTable = { fg = c.pink02 },

        -- [ Typescript ]
        typescriptVariable = { fg = c.pink02 },
        typescriptOperator = { fg = c.blue00 },
        typescriptVariableDeclaration = { fg = c.base07 },

        -- [ Vim ]
        vimAugroupKey = { fg = c.orange00 },
        vimAutocmd = { fg = c.orange03 },
        vimCommand = { fg = c.green00 },
        vimSubsPat = { fg = c.yellow03 },
        vimSubsRep4 = { fg = c.yellow03 },
        vimFuncName = { fg = c.yellow02 },
        vimFunction = { fg = c.yellow01 },
        vimLet = { fg = c.pink02 },
        vimNotFunc = { fg = c.magenta01 },
        vimOption = { fg = c.green00 },
        vimUserFunc = { fg = c.yellow01 },
        vimVar = { fg = c.pink02 },

        -- [ Xml ]
        xmlProcessingDelim = { fg = c.green00 },
        xmlTag = { fg = c.blue03 },
        xmlTagName = { fg = c.blue00 },

        -- [ Yaml ]
        yamlBlockMappingKey = { fg = c.blue00 },
        yamlFlowIndicator = { fg = c.magenta00 },
        yamlFlowMappingKey = { fg = c.blue03 },
        yamlFlowMappingMerge = { fg = c.yellow01 },

        -- [ Zig ]
        zigBuiltinFn = { fg = c.green01 },
        zigExecution = { fg = c.magenta02 },
        zigKeyword = { fg = c.yellow00 },
        zigVarDecl = { fg = c.pink00 },
        zigMultilineStringDelimiter = { fg = c.blue06 },

        -- [ Zsh ]
        zshDelimiter = { fg = c.magenta02 },
        zshDeref = { fg = c.err },
        zshOption = { fg = c.green00 },
        zshShortDeref = { fg = c.blue01 },
        zshSubst = { fg = c.orange02 },
        zshSubstDelim = { fg = c.orange03 },
        zshVariableDef = { fg = c.pink02 },
    }

    return lang
end

-- -----------------------------------------------
-- [ TREESITTER ]
-- -----------------------------------------------
-- <https://github.com/nvim-treesitter/nvim-treesitter>
syntax.treesitter = function()
    local treesitter = {
        TSConstBuiltin = { fg = c.green02 },
        TSConstMacro = { fg = c.magenta02 },
        TSConstant = { fg = c.pink00 },
        TSConstructor = { fg = c.pink00 },
        TSFuncBuiltin = { fg = c.green01 },
        TSFuncMacro = { fg = c.magenta02 },
        TSFunction = { fg = c.yellow00 },
        TSInclude = { fg = c.magenta02 },
        TSKeyword = { fg = c.yellow02 },
        TSKeywordFunction = { fg = c.pink00 },
        TSKeywordOperator = { fg = c.blue03 },
        TSMethod = { fg = c.yellow02 },
        TSParameter = { fg = c.yellow06, attr = 'italic' },
        TSParameterReference = { fg = c.yellow05, attr = 'italic' },
        TSProperty = { fg = c.blue04, attr = 'italic' },
        TSStringEscape = { fg = c.cyan00, attr = 'italic' },
        TSStringRegex = { fg = c.cyan00, attr = 'italic' },
        TSType = { fg = c.pink00 },
        TSTypeBuiltin = { fg = c.green03 },
        TSVariable = { fg = c.base07, attr = 'italic' },
        TSVariableBuiltin = { fg = c.base07, attr = 'bold' },

        commentTSConstant = { fg = c.base00, bg = c.blue06 },

        -- Languages specific
        zigTSField = { fg = c.base08 },
        zigTSVariable = { fg = c.base09 },

        -- Nvim-ts-rainbow ( https://github.com/p00f/nvim-ts-rainbow )
        rainbowcol1 = { fg = c.green00 },
        rainbowcol2 = { fg = c.err },
        rainbowcol3 = { fg = c.cyan00 },
        rainbowcol4 = { fg = c.orange00 },
        rainbowcol5 = { fg = c.magenta00 },
        rainbowcol6 = { fg = c.blue00 },
        rainbowcol7 = { fg = c.yellow00 },
        -- Nvim-treesitter-refactor ( https://github.com/nvim-treesitter/nvim-treesitter-refactor )
        TSCurrentScope = { bg = c.base01 },
        TSDefinitionUsage = { fg = c.err, attr = 'italic' },
        TSDefiniton = { fg = c.base00, bg = c.base09, attr = 'bold' },
        -- Treesitter-playground ( https://github.com/nvim-treesitter/playground )
        TSPlaygroundFocus = { fg = c.base00, bg = c.orange00 },
    }
    return treesitter
end

-- -----------------------------------------------
-- [ PLUGIN SUPPORT ]
-- -----------------------------------------------
syntax.plugin = function()
    local plugin = {
        -- [ Hop ]
        -- ( https://github.com/phaazon/hop.nvim )
        HopNextKey = { fg = c.pink00 },
        HopNextKey1 = { fg = c.yellow00 },
        HopNextKey2 = { fg = c.blue00 },

        -- [ Lspsaga ]
        -- ( https://github.com/glepnir/lspsaga.nvim )
        LineDiagTuncateLine = { fg = c.base02 },
        LspFloatWinBorder = { fg = c.yellow00 },
        LspLinesDiagBorder = { fg = c.err },
        LspSagaAutoPreview = { fg = c.pink00 },
        LspSagaBorderTitle = { fg = c.pink00 },
        LspSagaCodeActionBorder = { fg = c.pink00 },
        LspSagaCodeActionContent = { fg = c.base08 },
        LspSagaCodeActionTitle = { fg = c.pink00 },
        LspSagaCodeActionTruncateLine = { fg = c.base02 },
        LspSagaDefPreviewBorder = { fg = c.blue00 },
        LspSagaDocTruncateLine = { fg = c.base02 },
        LspSagaFinderSelection = { fg = c.blue02 },
        LspSagaHoverBorder = { fg = c.blue00 },
        LspSagaLspFinderBorder = { fg = c.blue00 },
        LspSagaRenameBorder = { fg = c.pink00 },
        LspSagaRenamePromptPrefix = { fg = c.pink00 },
        LspSagaShTruncateLine = { fg = c.base02 },
        LspSagaSignatureHelpBorder = { fg = c.blue00 },
        ProviderTruncateLine = { fg = c.base02 },
        SagaShadow = { fg = c.base08, bg = c.base00 },

        -- [ Signify ]
        -- ( http//github.com/mhinz/vim-signify )
        SignifyDeleteFirstLine = { fg = c.err },
        SignifyLineAdd = { fg = c.green00 },
        SignifyLineChange = { fg = c.yellow00 },
        SignifyLineChangeDelete = { fg = c.yellow02 },
        SignifyLineDelete = { fg = c.err },
        SignifyLineDeleteFirstLine = { fg = c.err },
        SignifySignAdd = { fg = c.green00 },
        SignifySignChange = { fg = c.yellow00 },
        SignifySignChangeDelete = { fg = c.yellow02 },
        SignifySignDelete = { fg = c.err },

        -- [ Telescope ]
        -- ( https://github.com/nvim-telescope/telescope.nvim )
        TelescopePreviewLine = { bg = c.base01 },
        TelescopeSelection = { fg = c.yellow00 },
        TelescopeSelectionCaret = { fg = c.pink00 },

        -- [ Which-key ]
        -- ( https://github.com/liuchengxu/vim-which-key )
        WhichKey = { fg = c.pink00 },
        WhichKeyDesc = { fg = c.base09 },
        WhichKeyFloating = { bg = c.base00 },
        WhichKeyGroup = { fg = c.yellow00 },
        WhichKeyName = { fg = c.base08 },
        WhichKeySeperator = { fg = c.blue00 },
        WhichKeyTrigger = { fg = c.magenta00 },
    }

    return plugin
end

return syntax
