local M = {}
local themes = require("sabiasagi.theme")

M.highlight = function(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

function M.loadColorSet(colorSet)
	for group, colors in pairs(colorSet) do
		M.highlight(group, colors)
	end
end

function M.load()
	-- Set the theme environment
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	-- vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "sabiasagi"

	-- load the most importaint parts of the theme
	local editor = themes.loadEditor()
	local syntax = themes.loadSyntax()
	local treesitter = themes.loadTreeSitter()
	local plugins = themes.loadPlugins()
	local lsp = themes.loadLSP()

	M.loadColorSet(editor)
	M.loadColorSet(syntax)
	M.loadColorSet(treesitter)
	M.loadColorSet(lsp)
	M.loadColorSet(plugins)
	themes.loadTerminal()
end

return M
