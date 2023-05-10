local M = {}
local colors = require("sabiasagi.colors")

M.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Normal = { fg = colors.shade5, bg = colors.none },
		Type = { fg = colors.color6 },
		StorageClass = { fg = colors.color6 },
		Structure = { fg = colors.color6 },
		Constant = { fg = colors.shade5 },
		Character = { fg = colors.color2 },
		Number = { fg = colors.color5 },
		Boolean = { fg = colors.color6 },
		Float = { fg = colors.color5 },
		Statement = { fg = colors.color6 },
		Label = { fg = colors.color6 },
		Operator = { fg = colors.color6 },
		Exception = { fg = colors.color6 },
		PreProc = { fg = colors.color6 },
		Include = { fg = colors.color6 },
		Define = { fg = colors.color6 },
		Macro = { fg = colors.color6 },
		Typedef = { fg = colors.color6 },
		PreCondit = { fg = colors.color15 },
		Special = { fg = colors.shade5 },
		SpecialChar = { fg = colors.color15 },
		Tag = { fg = colors.shade5 },
		Delimiter = { fg = colors.shade7 },
		SpecialComment = { fg = colors.color4 },
		Debug = { fg = colors.color1 },
		Underlined = { fg = colors.color2, bg = colors.none, style = "underline" },
		Ignore = { fg = colors.shade1 },
		Todo = { fg = colors.color15, bg = colors.none, style = "bold,italic" },
		Conceal = { fg = colors.none, bg = colors.shade0 },
		htmlLink = { fg = colors.color2, style = "underline" },
		markdownH1Delimiter = { fg = colors.color4 },
		markdownH2Delimiter = { fg = colors.color1 },
		markdownH3Delimiter = { fg = colors.color2 },
		-- bold
		htmlH1 = { fg = colors.color4, style = "bold" },
		htmlH2 = { fg = colors.color1, style = "bold" },
		htmlH3 = { fg = colors.color2, style = "bold" },
		htmlH4 = { fg = colors.color5, style = "bold" },
		htmlH5 = { fg = colors.color6, style = "bold" },
		markdownH1 = { fg = colors.color4, style = "bold" },
		markdownH2 = { fg = colors.color1, style = "bold" },
		markdownH3 = { fg = colors.color2, style = "bold" },
		Error = { fg = colors.color1, bg = colors.none, style = "bold,underline" },
		-- italic
		Comment = { fg = colors.shade4, bg = colors.none, style = "italic" },
		Conditional = { fg = colors.color6, bg = colors.none, style = "italic" },
		Function = { fg = colors.color4, bg = colors.none, style = "italic" },
		Identifier = { fg = colors.color6, bg = colors.none, style = "italic" },
		Keyword = { fg = colors.color6, bg = colors.none, style = "italic" },
		Repeat = { fg = colors.color6, bg = colors.none, style = "italic" },
		String = { fg = colors.color2, bg = colors.none, style = "italic" },
		-- 検索・置換語句でフォーカスされている単語
		IncSearch = { fg = colors.shade0, bg = colors.color5, style = "italic" },
		-- 置換対象語句
		Substitute = { fg = colors.shade0, bg = colors.color15, style = "italic" },
	}

	return syntax
end

M.loadEditor = function()
	-- Editor highlight groups
	local editor = {
		NormalFloat = { fg = colors.shade5, bg = colors.float },
		FloatBorder = { fg = colors.shade5, bg = colors.float },
		ColorColumn = { fg = colors.none, bg = colors.shade1 },
		Conceal = { fg = colors.shade1 },
		Cursor = { fg = colors.shade5, bg = colors.none, style = "reverse" },
		CursorIM = { fg = colors.shade6, bg = colors.none, style = "reverse" },
		Directory = { fg = colors.color14, bg = colors.none },
		EndOfBuffer = { fg = colors.background },
		ErrorMsg = { fg = colors.none },
		Folded = { fg = colors.shade4, bg = colors.none, style = "italic" },
		FoldColumn = { fg = colors.color14 },
		IncSearch = { fg = colors.shade7, bg = colors.color15 },
		LineNr = { fg = colors.shade4 },
		CursorLineNr = { fg = colors.shade5 },
		MatchParen = { fg = colors.color5, bg = colors.none, style = "bold" },
		ModeMsg = { fg = colors.shade5 },
		MoreMsg = { fg = colors.shade5 },
		NonText = { fg = colors.shade1 },
		Pmenu = { fg = colors.shade5, bg = colors.shade2 },
		PmenuSel = { fg = colors.shade5, bg = colors.color15 },
		PmenuSbar = { fg = colors.shade5, bg = colors.shade2 },
		PmenuThumb = { fg = colors.shade5, bg = colors.cn4_gui },
		Question = { fg = colors.color2 },
		QuickFixLine = { fg = colors.shade5, bg = colors.none, style = "reverse" },
		qfLineNr = { fg = colors.shade5, bg = colors.none, style = "reverse" },
		Search = { fg = colors.shade7, bg = colors.color15 },
		SignColumn = { fg = colors.shade1, bg = colors.none },
		Substitute = { fg = colors.shade0, bg = colors.color16 },
		SpecialKey = { fg = colors.color6 },
		SpellBad = { fg = colors.color1, bg = colors.none, style = "italic,undercurl" },
		SpellCap = { fg = colors.color14, bg = colors.none, style = "italic,undercurl" },
		SpellLocal = { fg = colors.color4, bg = colors.none, style = "italic,undercurl" },
		SpellRare = { fg = colors.color6, bg = colors.none, style = "italic,undercurl" },
		StatusLine = { fg = colors.shade5, bg = colors.shade2 },
		StatusLineNC = { fg = colors.shade5, bg = colors.shade1 },
		StatusLineTerm = { fg = colors.shade5, bg = colors.shade2 },
		StatusLineTermNC = { fg = colors.shade5, bg = colors.shade1 },
		TabLineFill = { fg = colors.shade5, bg = colors.none },
		TablineSel = { fg = colors.shade1, bg = colors.color6 },
		Tabline = { fg = colors.shade5, bg = colors.shade1 },
		Title = { fg = colors.color2, bg = colors.none, style = "bold" },
		Visual = { fg = colors.none, bg = colors.shade2 },
		VisualNOS = { fg = colors.none, bg = colors.shade2 },
		WarningMsg = { fg = colors.color5 },
		WildMenu = { fg = colors.color16, bg = colors.none, style = "bold" },
		CursorColumn = { fg = colors.none, bg = colors.cursorlinefg },
		CursorLine = { fg = colors.none, bg = colors.cursorlinefg },
		ToolbarLine = { fg = colors.shade5, bg = colors.shade1 },
		ToolbarButton = { fg = colors.shade5, bg = colors.none, style = "bold" },
		NormalMode = { fg = colors.shade5, bg = colors.none, style = "reverse" },
		InsertMode = { fg = colors.color2, bg = colors.none, style = "reverse" },
		ReplacelMode = { fg = colors.color1, bg = colors.none, style = "reverse" },
		VisualMode = { fg = colors.color6, bg = colors.none, style = "reverse" },
		CommandMode = { fg = colors.shade5, bg = colors.none, style = "reverse" },
		Warnings = { fg = colors.color5 },
		WinSeparator = { fg = colors.shade0, bg = colors.none },

		healthError = { fg = colors.color1 },
		healthSuccess = { fg = colors.color2 },
		healthWarning = { fg = colors.color5 },
	}
	return editor
end

M.loadTerminal = function()
	vim.g.terminal_color_0 = colors.shade1 -- Ansi Black
	vim.g.terminal_color_1 = colors.color1 -- Ansi Red
	vim.g.terminal_color_2 = colors.color2 -- Ansi Green
	vim.g.terminal_color_3 = colors.color3 -- Ansi Yellow
	vim.g.terminal_color_4 = colors.color4 -- Ansi Blue
	vim.g.terminal_color_5 = colors.color5 -- Ansi Magenta
	vim.g.terminal_color_6 = colors.color6 -- Ansi Cyan
	vim.g.terminal_color_7 = colors.shade6 -- Ansi White
	vim.g.terminal_color_8 = colors.shade3 -- Bright Black
	vim.g.terminal_color_9 = colors.color9 -- Bright Red
	vim.g.terminal_color_10 = colors.color10 -- Bright Green
	vim.g.terminal_color_11 = colors.color11 -- Bright Yellow
	vim.g.terminal_color_12 = colors.color12 -- Bright Blue
	vim.g.terminal_color_13 = colors.color13 -- Bright Magenta
	vim.g.terminal_color_14 = colors.color14 -- Bright Cyan
	vim.g.terminal_color_15 = colors.shade7 -- Bright White
end

M.loadTreeSitter = function()
	-- TreeSitter highlight groups
	local treesitter = {
		TSConstructor = { fg = colors.color6 },
		TSConstant = { fg = colors.color15 },
		TSFloat = { fg = colors.color5 },
		TSNumber = { fg = colors.color5 },
		TSAttribute = { fg = colors.color5 },
		TSError = { fg = colors.color1 },
		TSException = { fg = colors.color5 },
		TSFuncMacro = { fg = colors.color14 },
		TSInclude = { fg = colors.color6 },
		TSLabel = { fg = colors.color5 },
		TSOperator = { fg = colors.color6 },
		TSParameter = { fg = colors.color15 },
		TSParameterReference = { fg = colors.color15 },
		TSPunctDelimiter = { fg = colors.color4 },
		TSPunctBracket = { fg = colors.color4 },
		TSPunctSpecial = { fg = colors.color4 },
		TSSymbol = { fg = colors.color5 },
		TSType = { fg = colors.color6 },
		TSTypeBuiltin = { fg = colors.color6 },
		TSTag = { fg = colors.shade5 },
		TSTagDelimiter = { fg = colors.color5 },
		TSText = { fg = colors.shade5 },
		TSTextReference = { fg = colors.color5 },
		TSEmphasis = { fg = colors.color15 },
		TSUnderline = { fg = colors.shade5, bg = colors.none, style = "underline" },
		TSLiteral = { fg = colors.shade5 },
		TSURI = { fg = colors.color2 },
		TSAnnotation = { fg = colors.color1 },
		["@constructor"] = { fg = colors.color6 },
		["@constant"] = { fg = colors.color15 },
		["@float"] = { fg = colors.color5 },
		["@number"] = { fg = colors.color5 },
		["@attribute"] = { fg = colors.color5 },
		["@error"] = { fg = colors.color1 },
		["@exception"] = { fg = colors.color5 },
		["@funtion.macro"] = { fg = colors.color14 },
		["@include"] = { fg = colors.color6 },
		["@label"] = { fg = colors.color5 },
		["@operator"] = { fg = colors.color6 },
		["@parameter"] = { fg = colors.color15 },
		["@punctuation.delimiter"] = { fg = colors.color4 },
		["@punctuation.bracket"] = { fg = colors.color4 },
		["@punctuation.special"] = { fg = colors.color4 },
		["@symbol"] = { fg = colors.color5 },
		["@type"] = { fg = colors.color6 },
		["@type.builtin"] = { fg = colors.color6 },
		["@tag"] = { fg = colors.shade5 },
		["@tag.delimiter"] = { fg = colors.color5 },
		["@text"] = { fg = colors.shade5 },
		["@text.reference"] = { fg = colors.color5 },
		["@text.emphasis"] = { fg = colors.color15 },
		["@text.underline"] = { fg = colors.shade5, bg = colors.none, style = "underline" },
		["@text.literal"] = { fg = colors.shade5 },
		["@text.uri"] = { fg = colors.color2 },
		-- bold
		TSVariableBuiltin = { fg = colors.shade5, style = "bold" },
		TSBoolean = { fg = colors.color6, style = "bold" },
		TSConstBuiltin = { fg = colors.color14, style = "bold" },
		TSConstMacro = { fg = colors.color14, style = "bold" },
		TSVariable = { fg = colors.shade5, style = "bold" },
		TSTitle = { fg = colors.color15, bg = colors.none, style = "bold" },
		["@variable"] = { fg = colors.shade5, style = "bold" },
		["@variable.builtin"] = { fg = colors.shade5, style = "bold" },
		["@variable.global"] = { fg = colors.shade5, style = "bold" },
		["@boolean"] = { fg = colors.color6, style = "bold" },
		["@constant.builtin"] = { fg = colors.color14, style = "bold" },
		["@constant.macro"] = { fg = colors.color14, style = "bold" },
		["@text.title"] = { fg = colors.color15, bg = colors.none, style = "bold" },
		["@text.strong"] = { fg = colors.color15, bg = colors.none, style = "bold" },
		-- italic
		TSComment = { fg = colors.shade4, style = "italic" },
		TSConditional = { fg = colors.color6, style = "italic" },
		TSFunction = { fg = colors.color4, style = "italic" },
		TSMethod = { fg = colors.color14, style = "italic" },
		TSFuncBuiltin = { fg = colors.color4, style = "italic" },
		TSNamespace = { fg = colors.shade5, style = "italic" },
		TSField = { fg = colors.shade5, style = "italic" },
		TSProperty = { fg = colors.color15, style = "italic" },
		TSKeyword = { fg = colors.color6, style = "italic" },
		TSKeywordFunction = { fg = colors.color4, style = "italic" },
		TSKeywordReturn = { fg = colors.color4, style = "italic" },
		TSKeywordOperator = { fg = colors.color4, style = "italic" },
		TSRepeat = { fg = colors.color6, style = "italic" },
		TSString = { fg = colors.color2, style = "italic" },
		TSStringRegex = { fg = colors.color14, style = "italic" },
		TSStringEscape = { fg = colors.color5, style = "italic" },
		TSCharacter = { fg = colors.color2, style = "italic" },
		["@comment"] = { fg = colors.shade4, style = "italic" },
		["@conditional"] = { fg = colors.color6, style = "italic" },
		["@function"] = { fg = colors.color4, style = "italic" },
		["@method"] = { fg = colors.color4, style = "italic" },
		["@function.builtin"] = { fg = colors.color4, style = "italic" },
		["@namespace"] = { fg = colors.shade5, style = "italic" },
		["@field"] = { fg = colors.shade5, style = "italic" },
		["@property"] = { fg = colors.color15, style = "italic" },
		["@keyword"] = { fg = colors.color6, style = "italic" },
		["@keyword.function"] = { fg = colors.color4, style = "italic" },
		["@keyword.return"] = { fg = colors.color4, style = "italic" },
		["@keyword.operator"] = { fg = colors.color4, style = "italic" },
		["@repeat"] = { fg = colors.color6, style = "italic" },
		["@string"] = { fg = colors.color2, style = "italic" },
		["@string.regex"] = { fg = colors.color14, style = "italic" },
		["@string.escape"] = { fg = colors.color5, style = "italic" },
		["@character"] = { fg = colors.color2, style = "italic" },
	}

	return treesitter
end

M.loadLSP = function()
	local lsp = {
		LspDiagnosticsDefaultError = { fg = colors.color1 },
		LspDiagnosticsSignError = { fg = colors.color1 },
		LspDiagnosticsFloatingError = { fg = colors.color1 },
		LspDiagnosticsVirtualTextError = { fg = colors.color1 },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = colors.color1 },
		LspDiagnosticsDefaultWarning = { fg = colors.color5 },
		LspDiagnosticsSignWarning = { fg = colors.color5 },
		LspDiagnosticsFloatingWarning = { fg = colors.color5 },
		LspDiagnosticsVirtualTextWarning = { fg = colors.color5 },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = colors.color5 },
		LspDiagnosticsDefaultInformation = { fg = colors.color15 },
		LspDiagnosticsSignInformation = { fg = colors.color15 },
		LspDiagnosticsFloatingInformation = { fg = colors.color15 },
		LspDiagnosticsVirtualTextInformation = { fg = colors.color15 },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = colors.color15 },
		LspDiagnosticsDefaultHint = { fg = colors.color6 },
		LspDiagnosticsSignHint = { fg = colors.color6 },
		LspDiagnosticsFloatingHint = { fg = colors.color6 },
		LspDiagnosticsVirtualTextHint = { fg = colors.color6 },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = colors.color15 },
		LspReferenceText = { fg = colors.shade5, bg = colors.shade1 },
		LspReferenceRead = { fg = colors.shade5, bg = colors.shade1 },
		LspReferenceWrite = { fg = colors.shade5, bg = colors.shade1 },
		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

M.loadPlugins = function()
	local plugins = {
		-- Fern
		FernBranchText = { fg = colors.shade4 },
		FernWindowSelectIndicator = { fg = colors.shade5, bg = colors.color6 },

		-- GitSigns
		GitSignsAdd = { fg = colors.color2 },
		GitSignsAddNr = { fg = colors.color2 },
		GitSignsAddLn = { fg = colors.color2 },
		GitSignsChange = { fg = colors.color3 },
		GitSignsChangeNr = { fg = colors.color3 },
		GitSignsChangeLn = { fg = colors.color3 },
		GitSignsDelete = { fg = colors.color1 },
		GitSignsDeleteNr = { fg = colors.color1 },
		GitSignsDeleteLn = { fg = colors.color1 },
		GitSignsCurrentLineBlame = { fg = colors.shade4, style = "bold" },

		-- Hop
		HopNextKey = { fg = colors.color10, style = "bold" },
		HopNextKey1 = { fg = colors.color10, style = "bold" },
		HopNextKey2 = { fg = colors.shade5, style = "bold" },
		HopUnmatched = { fg = colors.shade3 },

		-- Indent Blankline
		IndentBlanklineChar = { fg = colors.shade3 },
		IndentBlanklineContextChar = { fg = colors.color15 },

		-- Telescope
		TelescopePromptBorder = { fg = colors.shade5 },
		TelescopeResultsBorder = { fg = colors.shade5 },
		TelescopePreviewBorder = { fg = colors.shade5 },
		TelescopeSelectionCaret = { fg = colors.color6 },
		TelescopeSelection = { fg = colors.shade7, bg = colors.shade2 },
		TelescopeMatching = { link = "Search" },

		-- LspTrouble
		LspTroubleText = { fg = colors.shade5 },
		LspTroubleCount = { fg = colors.color6, bg = colors.color15 },
		LspTroubleNormal = { fg = colors.shade5, bg = colors.sidebar },
	}
	return plugins
end

return M
