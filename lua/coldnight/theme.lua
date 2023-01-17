local coldnight = require("coldnight.colors")
local M = {}

M.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Normal = { fg = coldnight.shade5, bg = coldnight.background },
		Type = { fg = coldnight.color4 },
		StorageClass = { fg = coldnight.color4 },
		Structure = { fg = coldnight.color4 },
		Constant = { fg = coldnight.shade5 },
		Character = { fg = coldnight.color2 },
		Number = { fg = coldnight.color5 },
		Boolean = { fg = coldnight.color4 },
		Float = { fg = coldnight.color5 },
		Statement = { fg = coldnight.color4 },
		Label = { fg = coldnight.color4 },
		Operator = { fg = coldnight.color4 },
		Exception = { fg = coldnight.color4 },
		PreProc = { fg = coldnight.color4 },
		Include = { fg = coldnight.color4 },
		Define = { fg = coldnight.color4 },
		Macro = { fg = coldnight.color4 },
		Typedef = { fg = coldnight.color4 },
		PreCondit = { fg = coldnight.color3 },
		Special = { fg = coldnight.shade5 },
		SpecialChar = { fg = coldnight.color3 },
		Tag = { fg = coldnight.shade5 },
		Delimiter = { fg = coldnight.shade7 },
		SpecialComment = { fg = coldnight.color6 },
		Debug = { fg = coldnight.color1 },
		Underlined = { fg = coldnight.color2, bg = coldnight.none, style = "underline" },
		Ignore = { fg = coldnight.shade1 },
		Todo = { fg = coldnight.color3, bg = coldnight.none, style = "bold,italic" },
		Conceal = { fg = coldnight.none, bg = coldnight.shade0 },
		htmlLink = { fg = coldnight.color2, style = "underline" },
		markdownH1Delimiter = { fg = coldnight.color6 },
		markdownH2Delimiter = { fg = coldnight.color1 },
		markdownH3Delimiter = { fg = coldnight.color2 },

		-- bold
		htmlH1 = { fg = coldnight.color6, style = "bold" },
		htmlH2 = { fg = coldnight.color1, style = "bold" },
		htmlH3 = { fg = coldnight.color2, style = "bold" },
		htmlH4 = { fg = coldnight.color5, style = "bold" },
		htmlH5 = { fg = coldnight.color4, style = "bold" },
		markdownH1 = { fg = coldnight.color6, style = "bold" },
		markdownH2 = { fg = coldnight.color1, style = "bold" },
		markdownH3 = { fg = coldnight.color2, style = "bold" },
		Error = { fg = coldnight.color1, bg = coldnight.none, style = "bold,underline" },
		-- italic
		Comment = { fg = coldnight.shade4, bg = coldnight.none, style = "italic" },
		Conditional = { fg = coldnight.color4, bg = coldnight.none, style = "italic" },
		Function = { fg = coldnight.color6, bg = coldnight.none, style = "italic" },
		Identifier = { fg = coldnight.color4, bg = coldnight.none, style = "italic" },
		Keyword = { fg = coldnight.color4, bg = coldnight.none, style = "italic" },
		Repeat = { fg = coldnight.color4, bg = coldnight.none, style = "italic" },
		String = { fg = coldnight.color2, bg = coldnight.none, style = "italic" },
	}

	return syntax
end

M.loadEditor = function()
	-- Editor highlight groups
	local editor = {
		NormalFloat = { fg = coldnight.shade5, bg = coldnight.float },
		FloatBorder = { fg = coldnight.shade5, bg = coldnight.float },
		ColorColumn = { fg = coldnight.none, bg = coldnight.shade1 },
		Conceal = { fg = coldnight.shade1 },
		Cursor = { fg = coldnight.shade5, bg = coldnight.none, style = "reverse" },
		CursorIM = { fg = coldnight.shade6, bg = coldnight.none, style = "reverse" },
		Directory = { fg = coldnight.color14, bg = coldnight.none },
		EndOfBuffer = { fg = coldnight.background },
		ErrorMsg = { fg = coldnight.none },
		Folded = { fg = coldnight.shade4, bg = coldnight.none, style = "italic" },
		FoldColumn = { fg = coldnight.color14 },
		IncSearch = { fg = coldnight.shade7, bg = coldnight.color15 },
		LineNr = { fg = coldnight.shade4 },
		CursorLineNr = { fg = coldnight.shade5 },
		MatchParen = { fg = coldnight.color5, bg = coldnight.none, style = "bold" },
		ModeMsg = { fg = coldnight.shade5 },
		MoreMsg = { fg = coldnight.shade5 },
		NonText = { fg = coldnight.shade1 },
		Pmenu = { fg = coldnight.shade5, bg = coldnight.shade2 },
		PmenuSel = { fg = coldnight.shade5, bg = coldnight.color15 },
		PmenuSbar = { fg = coldnight.shade5, bg = coldnight.shade2 },
		PmenuThumb = { fg = coldnight.shade5, bg = coldnight.cn4_gui },
		Question = { fg = coldnight.color2 },
		QuickFixLine = { fg = coldnight.shade5, bg = coldnight.none, style = "reverse" },
		qfLineNr = { fg = coldnight.shade5, bg = coldnight.none, style = "reverse" },
		Search = { fg = coldnight.shade7, bg = coldnight.color15 },
		SignColumn = { fg = coldnight.shade1, bg = coldnight.background },
		Substitute = { fg = coldnight.shade0, bg = coldnight.color16 },
		SpecialKey = { fg = coldnight.color4 },
		SpellBad = { fg = coldnight.color1, bg = coldnight.none, style = "italic,undercurl" },
		SpellCap = { fg = coldnight.color14, bg = coldnight.none, style = "italic,undercurl" },
		SpellLocal = { fg = coldnight.color6, bg = coldnight.none, style = "italic,undercurl" },
		SpellRare = { fg = coldnight.color4, bg = coldnight.none, style = "italic,undercurl" },
		StatusLine = { fg = coldnight.shade5, bg = coldnight.shade2 },
		StatusLineNC = { fg = coldnight.shade5, bg = coldnight.shade1 },
		StatusLineTerm = { fg = coldnight.shade5, bg = coldnight.shade2 },
		StatusLineTermNC = { fg = coldnight.shade5, bg = coldnight.shade1 },
		TabLineFill = { fg = coldnight.shade5, bg = coldnight.none },
		TablineSel = { fg = coldnight.shade1, bg = coldnight.color4 },
		Tabline = { fg = coldnight.shade5, bg = coldnight.shade1 },
		Title = { fg = coldnight.color2, bg = coldnight.none, style = "bold" },
		Visual = { fg = coldnight.none, bg = coldnight.shade2 },
		VisualNOS = { fg = coldnight.none, bg = coldnight.shade2 },
		WarningMsg = { fg = coldnight.color5 },
		WildMenu = { fg = coldnight.color16, bg = coldnight.none, style = "bold" },
		CursorColumn = { fg = coldnight.none, bg = coldnight.cursorlinefg },
		CursorLine = { fg = coldnight.none, bg = coldnight.cursorlinefg },
		ToolbarLine = { fg = coldnight.shade5, bg = coldnight.shade1 },
		ToolbarButton = { fg = coldnight.shade5, bg = coldnight.none, style = "bold" },
		NormalMode = { fg = coldnight.shade5, bg = coldnight.none, style = "reverse" },
		InsertMode = { fg = coldnight.color2, bg = coldnight.none, style = "reverse" },
		ReplacelMode = { fg = coldnight.color1, bg = coldnight.none, style = "reverse" },
		VisualMode = { fg = coldnight.color4, bg = coldnight.none, style = "reverse" },
		CommandMode = { fg = coldnight.shade5, bg = coldnight.none, style = "reverse" },
		Warnings = { fg = coldnight.color5 },
		WinSeparator = { fg = coldnight.shade0, bg = coldnight.background },

		healthError = { fg = coldnight.color1 },
		healthSuccess = { fg = coldnight.color2 },
		healthWarning = { fg = coldnight.color5 },
	}
	return editor
end

M.loadTerminal = function()
	vim.g.terminal_color_0 = coldnight.shade1 -- Ansi Black
	vim.g.terminal_color_1 = coldnight.color1 -- Ansi Red
	vim.g.terminal_color_2 = coldnight.color2 -- Ansi Green
	vim.g.terminal_color_3 = coldnight.color3 -- Ansi Yellow
	vim.g.terminal_color_4 = coldnight.color4 -- Ansi Blue
	vim.g.terminal_color_5 = coldnight.color5 -- Ansi Magenta
	vim.g.terminal_color_6 = coldnight.color6 -- Ansi Cyan
	vim.g.terminal_color_7 = coldnight.shade6 -- Ansi White
	vim.g.terminal_color_8 = coldnight.shade3 -- Bright Black
	vim.g.terminal_color_9 = coldnight.color9 -- Bright Red
	vim.g.terminal_color_10 = coldnight.color10 -- Bright Green
	vim.g.terminal_color_11 = coldnight.color11 -- Bright Yellow
	vim.g.terminal_color_12 = coldnight.color12 -- Bright Blue
	vim.g.terminal_color_13 = coldnight.color13 -- Bright Magenta
	vim.g.terminal_color_14 = coldnight.color14 -- Bright Cyan
	vim.g.terminal_color_15 = coldnight.shade7 -- Bright White
end

M.loadTreeSitter = function()
	-- TreeSitter highlight groups
	local treesitter = {
		TSConstructor = { fg = coldnight.color4 },
		TSConstant = { fg = coldnight.color3 },
		TSFloat = { fg = coldnight.color5 },
		TSNumber = { fg = coldnight.color5 },
		TSAttribute = { fg = coldnight.color5 },
		TSError = { fg = coldnight.color1 },
		TSException = { fg = coldnight.color5 },
		TSFuncMacro = { fg = coldnight.color14 },
		TSInclude = { fg = coldnight.color4 },
		TSLabel = { fg = coldnight.color5 },
		TSOperator = { fg = coldnight.color4 },
		TSParameter = { fg = coldnight.color15 },
		TSParameterReference = { fg = coldnight.color15 },
		TSPunctDelimiter = { fg = coldnight.color6 },
		TSPunctBracket = { fg = coldnight.color6 },
		TSPunctSpecial = { fg = coldnight.color6 },
		TSSymbol = { fg = coldnight.color5 },
		TSType = { fg = coldnight.color4 },
		TSTypeBuiltin = { fg = coldnight.color4 },
		TSTag = { fg = coldnight.shade5 },
		TSTagDelimiter = { fg = coldnight.color5 },
		TSText = { fg = coldnight.shade5 },
		TSTextReference = { fg = coldnight.color5 },
		TSEmphasis = { fg = coldnight.color15 },
		TSUnderline = { fg = coldnight.shade5, bg = coldnight.none, style = "underline" },
		TSLiteral = { fg = coldnight.shade5 },
		TSURI = { fg = coldnight.color2 },
		TSAnnotation = { fg = coldnight.color1 },
		["@constructor"] = { fg = coldnight.color4 },
		["@constant"] = { fg = coldnight.color3 },
		["@float"] = { fg = coldnight.color5 },
		["@number"] = { fg = coldnight.color5 },
		["@attribute"] = { fg = coldnight.color5 },
		["@error"] = { fg = coldnight.color1 },
		["@exception"] = { fg = coldnight.color5 },
		["@funtion.macro"] = { fg = coldnight.color14 },
		["@include"] = { fg = coldnight.color4 },
		["@label"] = { fg = coldnight.color5 },
		["@operator"] = { fg = coldnight.color4 },
		["@parameter"] = { fg = coldnight.color15 },
		["@punctuation.delimiter"] = { fg = coldnight.color6 },
		["@punctuation.bracket"] = { fg = coldnight.color6 },
		["@punctuation.special"] = { fg = coldnight.color6 },
		["@symbol"] = { fg = coldnight.color5 },
		["@type"] = { fg = coldnight.color4 },
		["@type.builtin"] = { fg = coldnight.color4 },
		["@tag"] = { fg = coldnight.shade5 },
		["@tag.delimiter"] = { fg = coldnight.color5 },
		["@text"] = { fg = coldnight.shade5 },
		["@text.reference"] = { fg = coldnight.color5 },
		["@text.emphasis"] = { fg = coldnight.color15 },
		["@text.underline"] = { fg = coldnight.shade5, bg = coldnight.none, style = "underline" },
		["@text.literal"] = { fg = coldnight.shade5 },
		["@text.uri"] = { fg = coldnight.color2 },

		-- bold
		TSVariableBuiltin = { fg = coldnight.shade5, style = "bold" },
		TSBoolean = { fg = coldnight.color4, style = "bold" },
		TSConstBuiltin = { fg = coldnight.color14, style = "bold" },
		TSConstMacro = { fg = coldnight.color14, style = "bold" },
		TSVariable = { fg = coldnight.shade5, style = "bold" },
		TSTitle = { fg = coldnight.color15, bg = coldnight.none, style = "bold" },
		["@variable"] = { fg = coldnight.shade5, style = "bold" },
		["@variable.builtin"] = { fg = coldnight.shade5, style = "bold" },
		["@variable.global"] = { fg = coldnight.shade5, style = "bold" },
		["@boolean"] = { fg = coldnight.color4, style = "bold" },
		["@constant.builtin"] = { fg = coldnight.color14, style = "bold" },
		["@constant.macro"] = { fg = coldnight.color14, style = "bold" },
		["@text.title"] = { fg = coldnight.color15, bg = coldnight.none, style = "bold" },
		["@text.strong"] = { fg = coldnight.color15, bg = coldnight.none, style = "bold" },
		-- italic
		TSComment = { fg = coldnight.shade4, style = "italic" },
		TSConditional = { fg = coldnight.color4, style = "italic" },
		TSFunction = { fg = coldnight.color6, style = "italic" },
		TSMethod = { fg = coldnight.color14, style = "italic" },
		TSFuncBuiltin = { fg = coldnight.color6, style = "italic" },
		TSNamespace = { fg = coldnight.shade5, style = "italic" },
		TSField = { fg = coldnight.shade5, style = "italic" },
		TSProperty = { fg = coldnight.color15, style = "italic" },
		TSKeyword = { fg = coldnight.color4, style = "italic" },
		TSKeywordFunction = { fg = coldnight.color6, style = "italic" },
		TSKeywordReturn = { fg = coldnight.color6, style = "italic" },
		TSKeywordOperator = { fg = coldnight.color6, style = "italic" },
		TSRepeat = { fg = coldnight.color4, style = "italic" },
		TSString = { fg = coldnight.color2, style = "italic" },
		TSStringRegex = { fg = coldnight.color14, style = "italic" },
		TSStringEscape = { fg = coldnight.color5, style = "italic" },
		TSCharacter = { fg = coldnight.color2, style = "italic" },

		["@comment"] = { fg = coldnight.shade4, style = "italic" },
		["@conditional"] = { fg = coldnight.color4, style = "italic" },
		["@function"] = { fg = coldnight.color6, style = "italic" },
		["@method"] = { fg = coldnight.color6, style = "italic" },
		["@function.builtin"] = { fg = coldnight.color6, style = "italic" },
		["@namespace"] = { fg = coldnight.shade5, style = "italic" },
		["@field"] = { fg = coldnight.shade5, style = "italic" },
		["@property"] = { fg = coldnight.color15, style = "italic" },
		["@keyword"] = { fg = coldnight.color4, style = "italic" },
		["@keyword.function"] = { fg = coldnight.color6, style = "italic" },
		["@keyword.return"] = { fg = coldnight.color6, style = "italic" },
		["@keyword.operator"] = { fg = coldnight.color6, style = "italic" },
		["@repeat"] = { fg = coldnight.color4, style = "italic" },
		["@string"] = { fg = coldnight.color2, style = "italic" },
		["@string.regex"] = { fg = coldnight.color14, style = "italic" },
		["@string.escape"] = { fg = coldnight.color5, style = "italic" },
		["@character"] = { fg = coldnight.color2, style = "italic" },
	}

	return treesitter
end

M.loadLSP = function()
	local lsp = {
		LspDiagnosticsDefaultError = { fg = coldnight.color1 },
		LspDiagnosticsSignError = { fg = coldnight.color1 },
		LspDiagnosticsFloatingError = { fg = coldnight.color1 },
		LspDiagnosticsVirtualTextError = { fg = coldnight.color1 },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = coldnight.color1 },
		LspDiagnosticsDefaultWarning = { fg = coldnight.color5 },
		LspDiagnosticsSignWarning = { fg = coldnight.color5 },
		LspDiagnosticsFloatingWarning = { fg = coldnight.color5 },
		LspDiagnosticsVirtualTextWarning = { fg = coldnight.color5 },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = coldnight.color5 },
		LspDiagnosticsDefaultInformation = { fg = coldnight.color15 },
		LspDiagnosticsSignInformation = { fg = coldnight.color15 },
		LspDiagnosticsFloatingInformation = { fg = coldnight.color15 },
		LspDiagnosticsVirtualTextInformation = { fg = coldnight.color15 },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = coldnight.color15 },
		LspDiagnosticsDefaultHint = { fg = coldnight.color4 },
		LspDiagnosticsSignHint = { fg = coldnight.color4 },
		LspDiagnosticsFloatingHint = { fg = coldnight.color4 },
		LspDiagnosticsVirtualTextHint = { fg = coldnight.color4 },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = coldnight.color15 },
		LspReferenceText = { fg = coldnight.shade5, bg = coldnight.shade1 },
		LspReferenceRead = { fg = coldnight.shade5, bg = coldnight.shade1 },
		LspReferenceWrite = { fg = coldnight.shade5, bg = coldnight.shade1 },

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
		FernBranchText = { fg = coldnight.shade4 },

		-- GitSigns
		GitSignsAdd = { fg = coldnight.color2 },
		GitSignsAddNr = { fg = coldnight.color2 },
		GitSignsAddLn = { fg = coldnight.color2 },
		GitSignsChange = { fg = coldnight.color3 },
		GitSignsChangeNr = { fg = coldnight.color3 },
		GitSignsChangeLn = { fg = coldnight.color3 },
		GitSignsDelete = { fg = coldnight.color1 },
		GitSignsDeleteNr = { fg = coldnight.color1 },
		GitSignsDeleteLn = { fg = coldnight.color1 },
		GitSignsCurrentLineBlame = { fg = coldnight.shade4, style = "bold" },

		-- Hop
		HopNextKey = { fg = coldnight.shade5, style = "bold" },
		HopNextKey1 = { fg = coldnight.color6, style = "bold" },
		HopNextKey2 = { fg = coldnight.shade5 },
		HopUnmatched = { fg = coldnight.shade3 },

		-- Indent Blankline
		IndentBlanklineChar = { fg = coldnight.shade3 },
		IndentBlanklineContextChar = { fg = coldnight.color15 },

		-- Telescope
		TelescopePromptBorder = { fg = coldnight.shade5 },
		TelescopeResultsBorder = { fg = coldnight.shade5 },
		TelescopePreviewBorder = { fg = coldnight.shade5 },
		TelescopeSelectionCaret = { fg = coldnight.color4 },
		TelescopeSelection = { fg = coldnight.shade7, bg = coldnight.shade2 },
		TelescopeMatching = { link = "Search" },

		-- LspTrouble
		LspTroubleText = { fg = coldnight.shade5 },
		LspTroubleCount = { fg = coldnight.color4, bg = coldnight.color15 },
		LspTroubleNormal = { fg = coldnight.shade5, bg = coldnight.sidebar },
	}
	return plugins
end

return M
