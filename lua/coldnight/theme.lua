local coldnight = require("coldnight.colors")
local M = {}

M.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Normal = { fg = coldnight.cn4_gui, bg = coldnight.background },
		Type = { fg = coldnight.cn9_gui },
		StorageClass = { fg = coldnight.cn9_gui },
		Structure = { fg = coldnight.cn9_gui },
		Constant = { fg = coldnight.cn4_gui },
		Character = { fg = coldnight.cn14_gui },
		Number = { fg = coldnight.cn15_gui },
		Boolean = { fg = coldnight.cn9_gui },
		Float = { fg = coldnight.cn15_gui },
		Statement = { fg = coldnight.cn9_gui },
		Label = { fg = coldnight.cn9_gui },
		Operator = { fg = coldnight.cn9_gui },
		Exception = { fg = coldnight.cn9_gui },
		PreProc = { fg = coldnight.cn9_gui },
		Include = { fg = coldnight.cn9_gui },
		Define = { fg = coldnight.cn9_gui },
		Macro = { fg = coldnight.cn9_gui },
		Typedef = { fg = coldnight.cn9_gui },
		PreCondit = { fg = coldnight.cn13_gui },
		Special = { fg = coldnight.cn4_gui },
		SpecialChar = { fg = coldnight.cn13_gui },
		Tag = { fg = coldnight.cn4_gui },
		Delimiter = { fg = coldnight.cn6_gui },
		SpecialComment = { fg = coldnight.cn8_gui },
		Debug = { fg = coldnight.cn11_gui },
		Underlined = { fg = coldnight.cn14_gui, bg = coldnight.none, style = "underline" },
		Ignore = { fg = coldnight.cn1_gui },
		Todo = { fg = coldnight.cn13_gui, bg = coldnight.none, style = "bold,italic" },
		Conceal = { fg = coldnight.none, bg = coldnight.cn0_gui },
		htmlLink = { fg = coldnight.cn14_gui, style = "underline" },
		markdownH1Delimiter = { fg = coldnight.cn8_gui },
		markdownH2Delimiter = { fg = coldnight.cn11_gui },
		markdownH3Delimiter = { fg = coldnight.cn14_gui },

		-- bold
		htmlH1 = { fg = coldnight.cn8_gui, style = "bold" },
		htmlH2 = { fg = coldnight.cn11_gui, style = "bold" },
		htmlH3 = { fg = coldnight.cn14_gui, style = "bold" },
		htmlH4 = { fg = coldnight.cn15_gui, style = "bold" },
		htmlH5 = { fg = coldnight.cn9_gui, style = "bold" },
		markdownH1 = { fg = coldnight.cn8_gui, style = "bold" },
		markdownH2 = { fg = coldnight.cn11_gui, style = "bold" },
		markdownH3 = { fg = coldnight.cn14_gui, style = "bold" },
		Error = { fg = coldnight.cn11_gui, bg = coldnight.none, style = "bold,underline" },
		-- italic
		Comment = { fg = coldnight.cn3_gui_bright, bg = coldnight.none, style = "italic" },
		Conditional = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "italic" },
		Function = { fg = coldnight.cn8_gui, bg = coldnight.none, style = "italic" },
		Identifier = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "italic" },
		Keyword = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "italic" },
		Repeat = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "italic" },
		String = { fg = coldnight.cn14_gui, bg = coldnight.none, style = "italic" },
	}

	return syntax
end

M.loadEditor = function()
	-- Editor highlight groups
	local editor = {
		NormalFloat = { fg = coldnight.cn4_gui, bg = coldnight.float },
		FloatBorder = { fg = coldnight.cn4_gui, bg = coldnight.float },
		ColorColumn = { fg = coldnight.none, bg = coldnight.cn1_gui },
		Conceal = { fg = coldnight.cn1_gui },
		Cursor = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "reverse" },
		CursorIM = { fg = coldnight.cn5_gui, bg = coldnight.none, style = "reverse" },
		Directory = { fg = coldnight.cn7_gui, bg = coldnight.none },
		EndOfBuffer = { fg = coldnight.background },
		ErrorMsg = { fg = coldnight.none },
		Folded = { fg = coldnight.cn3_gui_bright, bg = coldnight.none, style = "italic" },
		FoldColumn = { fg = coldnight.cn7_gui },
		IncSearch = { fg = coldnight.cn6_gui, bg = coldnight.cn10_gui },
		LineNr = { fg = coldnight.cn3_gui_bright },
		CursorLineNr = { fg = coldnight.cn4_gui },
		MatchParen = { fg = coldnight.cn15_gui, bg = coldnight.none, style = "bold" },
		ModeMsg = { fg = coldnight.cn4_gui },
		MoreMsg = { fg = coldnight.cn4_gui },
		NonText = { fg = coldnight.cn1_gui },
		Pmenu = { fg = coldnight.cn4_gui, bg = coldnight.cn2_gui },
		PmenuSel = { fg = coldnight.cn4_gui, bg = coldnight.cn10_gui },
		PmenuSbar = { fg = coldnight.cn4_gui, bg = coldnight.cn2_gui },
		PmenuThumb = { fg = coldnight.cn4_gui, bg = coldnight.cn4_gui },
		Question = { fg = coldnight.cn14_gui },
		QuickFixLine = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "reverse" },
		qfLineNr = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "reverse" },
		Search = { fg = coldnight.cn6_gui, bg = coldnight.cn10_gui },
		SignColumn = { fg = coldnight.cn1_gui, bg = coldnight.background },
		Substitute = { fg = coldnight.cn0_gui, bg = coldnight.cn12_gui },
		SpecialKey = { fg = coldnight.cn9_gui },
		SpellBad = { fg = coldnight.cn11_gui, bg = coldnight.none, style = "italic,undercurl" },
		SpellCap = { fg = coldnight.cn7_gui, bg = coldnight.none, style = "italic,undercurl" },
		SpellLocal = { fg = coldnight.cn8_gui, bg = coldnight.none, style = "italic,undercurl" },
		SpellRare = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "italic,undercurl" },
		StatusLine = { fg = coldnight.cn4_gui, bg = coldnight.cn2_gui },
		StatusLineNC = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		StatusLineTerm = { fg = coldnight.cn4_gui, bg = coldnight.cn2_gui },
		StatusLineTermNC = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		TabLineFill = { fg = coldnight.cn4_gui, bg = coldnight.none },
		TablineSel = { fg = coldnight.cn1_gui, bg = coldnight.cn9_gui },
		Tabline = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		Title = { fg = coldnight.cn14_gui, bg = coldnight.none, style = "bold" },
		Visual = { fg = coldnight.none, bg = coldnight.cn2_gui },
		VisualNOS = { fg = coldnight.none, bg = coldnight.cn2_gui },
		WarningMsg = { fg = coldnight.cn15_gui },
		WildMenu = { fg = coldnight.cn12_gui, bg = coldnight.none, style = "bold" },
		CursorColumn = { fg = coldnight.none, bg = coldnight.cursorlinefg },
		CursorLine = { fg = coldnight.none, bg = coldnight.cursorlinefg },
		ToolbarLine = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		ToolbarButton = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "bold" },
		NormalMode = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "reverse" },
		InsertMode = { fg = coldnight.cn14_gui, bg = coldnight.none, style = "reverse" },
		ReplacelMode = { fg = coldnight.cn11_gui, bg = coldnight.none, style = "reverse" },
		VisualMode = { fg = coldnight.cn9_gui, bg = coldnight.none, style = "reverse" },
		CommandMode = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "reverse" },
		Warnings = { fg = coldnight.cn15_gui },
		WinSeparator = { fg = coldnight.cn0_gui, bg = coldnight.background },

		healthError = { fg = coldnight.cn11_gui },
		healthSuccess = { fg = coldnight.cn14_gui },
		healthWarning = { fg = coldnight.cn15_gui },
	}
	return editor
end

M.loadTerminal = function()
	vim.g.terminal_color_0 = coldnight.cn1_gui
	vim.g.terminal_color_1 = coldnight.cn11_gui
	vim.g.terminal_color_2 = coldnight.cn14_gui
	vim.g.terminal_color_3 = coldnight.cn13_gui
	vim.g.terminal_color_4 = coldnight.cn9_gui
	vim.g.terminal_color_5 = coldnight.cn15_gui
	vim.g.terminal_color_6 = coldnight.cn8_gui
	vim.g.terminal_color_7 = coldnight.cn5_gui
	vim.g.terminal_color_8 = coldnight.cn3_gui
	vim.g.terminal_color_9 = coldnight.cn11_gui
	vim.g.terminal_color_10 = coldnight.cn14_gui
	vim.g.terminal_color_11 = coldnight.cn13_gui
	vim.g.terminal_color_12 = coldnight.cn9_gui
	vim.g.terminal_color_13 = coldnight.cn15_gui
	vim.g.terminal_color_14 = coldnight.cn7_gui
	vim.g.terminal_color_15 = coldnight.cn6_gui
end

M.loadTreeSitter = function()
	-- TreeSitter highlight groups
	local treesitter = {
		TSConstructor = { fg = coldnight.cn9_gui },
		TSConstant = { fg = coldnight.cn13_gui },
		TSFloat = { fg = coldnight.cn15_gui },
		TSNumber = { fg = coldnight.cn15_gui },
		TSAttribute = { fg = coldnight.cn15_gui },
		TSError = { fg = coldnight.cn11_gui },
		TSException = { fg = coldnight.cn15_gui },
		TSFuncMacro = { fg = coldnight.cn7_gui },
		TSInclude = { fg = coldnight.cn9_gui },
		TSLabel = { fg = coldnight.cn15_gui },
		TSOperator = { fg = coldnight.cn9_gui },
		TSParameter = { fg = coldnight.cn10_gui },
		TSParameterReference = { fg = coldnight.cn10_gui },
		TSPunctDelimiter = { fg = coldnight.cn8_gui },
		TSPunctBracket = { fg = coldnight.cn8_gui },
		TSPunctSpecial = { fg = coldnight.cn8_gui },
		TSSymbol = { fg = coldnight.cn15_gui },
		TSType = { fg = coldnight.cn9_gui },
		TSTypeBuiltin = { fg = coldnight.cn9_gui },
		TSTag = { fg = coldnight.cn4_gui },
		TSTagDelimiter = { fg = coldnight.cn15_gui },
		TSText = { fg = coldnight.cn4_gui },
		TSTextReference = { fg = coldnight.cn15_gui },
		TSEmphasis = { fg = coldnight.cn10_gui },
		TSUnderline = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "underline" },
		TSLiteral = { fg = coldnight.cn4_gui },
		TSURI = { fg = coldnight.cn14_gui },
		TSAnnotation = { fg = coldnight.cn11_gui },
		["@constructor"] = { fg = coldnight.cn9_gui },
		["@constant"] = { fg = coldnight.cn13_gui },
		["@float"] = { fg = coldnight.cn15_gui },
		["@number"] = { fg = coldnight.cn15_gui },
		["@attribute"] = { fg = coldnight.cn15_gui },
		["@error"] = { fg = coldnight.cn11_gui },
		["@exception"] = { fg = coldnight.cn15_gui },
		["@funtion.macro"] = { fg = coldnight.cn7_gui },
		["@include"] = { fg = coldnight.cn9_gui },
		["@label"] = { fg = coldnight.cn15_gui },
		["@operator"] = { fg = coldnight.cn9_gui },
		["@parameter"] = { fg = coldnight.cn10_gui },
		["@punctuation.delimiter"] = { fg = coldnight.cn8_gui },
		["@punctuation.bracket"] = { fg = coldnight.cn8_gui },
		["@punctuation.special"] = { fg = coldnight.cn8_gui },
		["@symbol"] = { fg = coldnight.cn15_gui },
		["@type"] = { fg = coldnight.cn9_gui },
		["@type.builtin"] = { fg = coldnight.cn9_gui },
		["@tag"] = { fg = coldnight.cn4_gui },
		["@tag.delimiter"] = { fg = coldnight.cn15_gui },
		["@text"] = { fg = coldnight.cn4_gui },
		["@text.reference"] = { fg = coldnight.cn15_gui },
		["@text.emphasis"] = { fg = coldnight.cn10_gui },
		["@text.underline"] = { fg = coldnight.cn4_gui, bg = coldnight.none, style = "underline" },
		["@text.literal"] = { fg = coldnight.cn4_gui },
		["@text.uri"] = { fg = coldnight.cn14_gui },

		-- bold
		TSVariableBuiltin = { fg = coldnight.cn4_gui, style = "bold" },
		TSBoolean = { fg = coldnight.cn9_gui, style = "bold" },
		TSConstBuiltin = { fg = coldnight.cn7_gui, style = "bold" },
		TSConstMacro = { fg = coldnight.cn7_gui, style = "bold" },
		TSVariable = { fg = coldnight.cn4_gui, style = "bold" },
		TSTitle = { fg = coldnight.cn10_gui, bg = coldnight.none, style = "bold" },
		["@variable"] = { fg = coldnight.cn4_gui, style = "bold" },
		["@variable.builtin"] = { fg = coldnight.cn4_gui, style = "bold" },
		["@variable.global"] = { fg = coldnight.cn4_gui, style = "bold" },
		["@boolean"] = { fg = coldnight.cn9_gui, style = "bold" },
		["@constant.builtin"] = { fg = coldnight.cn7_gui, style = "bold" },
		["@constant.macro"] = { fg = coldnight.cn7_gui, style = "bold" },
		["@text.title"] = { fg = coldnight.cn10_gui, bg = coldnight.none, style = "bold" },
		["@text.strong"] = { fg = coldnight.cn10_gui, bg = coldnight.none, style = "bold" },
		-- italic
		TSComment = { fg = coldnight.cn3_gui_bright, style = "italic" },
		TSConditional = { fg = coldnight.cn9_gui, style = "italic" },
		TSFunction = { fg = coldnight.cn8_gui, style = "italic" },
		TSMethod = { fg = coldnight.cn7_gui, style = "italic" },
		TSFuncBuiltin = { fg = coldnight.cn8_gui, style = "italic" },
		TSNamespace = { fg = coldnight.cn4_gui, style = "italic" },
		TSField = { fg = coldnight.cn4_gui, style = "italic" },
		TSProperty = { fg = coldnight.cn10_gui, style = "italic" },
		TSKeyword = { fg = coldnight.cn9_gui, style = "italic" },
		TSKeywordFunction = { fg = coldnight.cn8_gui, style = "italic" },
		TSKeywordReturn = { fg = coldnight.cn8_gui, style = "italic" },
		TSKeywordOperator = { fg = coldnight.cn8_gui, style = "italic" },
		TSRepeat = { fg = coldnight.cn9_gui, style = "italic" },
		TSString = { fg = coldnight.cn14_gui, style = "italic" },
		TSStringRegex = { fg = coldnight.cn7_gui, style = "italic" },
		TSStringEscape = { fg = coldnight.cn15_gui, style = "italic" },
		TSCharacter = { fg = coldnight.cn14_gui, style = "italic" },

		["@comment"] = { fg = coldnight.cn3_gui_bright, style = "italic" },
		["@conditional"] = { fg = coldnight.cn9_gui, style = "italic" },
		["@function"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@method"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@function.builtin"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@namespace"] = { fg = coldnight.cn4_gui, style = "italic" },
		["@field"] = { fg = coldnight.cn4_gui, style = "italic" },
		["@property"] = { fg = coldnight.cn10_gui, style = "italic" },
		["@keyword"] = { fg = coldnight.cn9_gui, style = "italic" },
		["@keyword.function"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@keyword.return"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@keyword.operator"] = { fg = coldnight.cn8_gui, style = "italic" },
		["@repeat"] = { fg = coldnight.cn9_gui, style = "italic" },
		["@string"] = { fg = coldnight.cn14_gui, style = "italic" },
		["@string.regex"] = { fg = coldnight.cn7_gui, style = "italic" },
		["@string.escape"] = { fg = coldnight.cn15_gui, style = "italic" },
		["@character"] = { fg = coldnight.cn14_gui, style = "italic" },
	}

	return treesitter
end

M.loadLSP = function()
	local lsp = {
		LspDiagnosticsDefaultError = { fg = coldnight.cn11_gui },
		LspDiagnosticsSignError = { fg = coldnight.cn11_gui },
		LspDiagnosticsFloatingError = { fg = coldnight.cn11_gui },
		LspDiagnosticsVirtualTextError = { fg = coldnight.cn11_gui },
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = coldnight.cn11_gui },
		LspDiagnosticsDefaultWarning = { fg = coldnight.cn15_gui },
		LspDiagnosticsSignWarning = { fg = coldnight.cn15_gui },
		LspDiagnosticsFloatingWarning = { fg = coldnight.cn15_gui },
		LspDiagnosticsVirtualTextWarning = { fg = coldnight.cn15_gui },
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = coldnight.cn15_gui },
		LspDiagnosticsDefaultInformation = { fg = coldnight.cn10_gui },
		LspDiagnosticsSignInformation = { fg = coldnight.cn10_gui },
		LspDiagnosticsFloatingInformation = { fg = coldnight.cn10_gui },
		LspDiagnosticsVirtualTextInformation = { fg = coldnight.cn10_gui },
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = coldnight.cn10_gui },
		LspDiagnosticsDefaultHint = { fg = coldnight.cn9_gui },
		LspDiagnosticsSignHint = { fg = coldnight.cn9_gui },
		LspDiagnosticsFloatingHint = { fg = coldnight.cn9_gui },
		LspDiagnosticsVirtualTextHint = { fg = coldnight.cn9_gui },
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = coldnight.cn10_gui },
		LspReferenceText = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		LspReferenceRead = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },
		LspReferenceWrite = { fg = coldnight.cn4_gui, bg = coldnight.cn1_gui },

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
		FernBranchText = { fg = coldnight.cn3_gui_bright },

		-- GitSigns
		GitSignsAdd = { fg = coldnight.cn14_gui },
		GitSignsAddNr = { fg = coldnight.cn14_gui },
		GitSignsAddLn = { fg = coldnight.cn14_gui },
		GitSignsChange = { fg = coldnight.cn13_gui },
		GitSignsChangeNr = { fg = coldnight.cn13_gui },
		GitSignsChangeLn = { fg = coldnight.cn13_gui },
		GitSignsDelete = { fg = coldnight.cn11_gui },
		GitSignsDeleteNr = { fg = coldnight.cn11_gui },
		GitSignsDeleteLn = { fg = coldnight.cn11_gui },
		GitSignsCurrentLineBlame = { fg = coldnight.cn3_gui_bright, style = "bold" },

		-- Hop
		HopNextKey = { fg = coldnight.cn4_gui, style = "bold" },
		HopNextKey1 = { fg = coldnight.cn8_gui, style = "bold" },
		HopNextKey2 = { fg = coldnight.cn4_gui },
		HopUnmatched = { fg = coldnight.cn3_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = coldnight.cn3_gui },
		IndentBlanklineContextChar = { fg = coldnight.cn10_gui },

		-- Telescope
		TelescopePromptBorder = { fg = coldnight.cn4_gui },
		TelescopeResultsBorder = { fg = coldnight.cn4_gui },
		TelescopePreviewBorder = { fg = coldnight.cn4_gui },
		TelescopeSelectionCaret = { fg = coldnight.cn9_gui },
		TelescopeSelection = { fg = coldnight.cn6_gui, bg = coldnight.cn2_gui },
		TelescopeMatching = { link = "Search" },

		-- LspTrouble
		LspTroubleText = { fg = coldnight.cn4_gui },
		LspTroubleCount = { fg = coldnight.cn9_gui, bg = coldnight.cn10_gui },
		LspTroubleNormal = { fg = coldnight.cn4_gui, bg = coldnight.sidebar },
	}
	return plugins
end

return M
