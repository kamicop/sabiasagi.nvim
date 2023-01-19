local M = {}
local colors = require("sabiasagi.colors")

M.normal = {
	a = { fg = colors.shade6, bg = colors.darker_background },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade6, bg = colors.none },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.darker_background },
}

M.insert = { a = { fg = colors.color6, bg = colors.shade0 } }
M.visual = { a = { fg = colors.color2, bg = colors.shade0 } }
M.replace = { a = { fg = colors.color6, bg = colors.shade0 } }

M.inactive = {
	a = { fg = colors.shade6, bg = colors.darker_background },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade6, bg = colors.none },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.darker_background },
}

return M
