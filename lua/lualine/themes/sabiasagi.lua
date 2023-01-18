local M = {}
local colors = require("sabiasagi.colors")

M.normal = {
	a = { fg = colors.shade6, bg = colors.shade0 },
	b = { fg = colors.shade6, bg = colors.shade1 },
	c = { fg = colors.shade6, bg = colors.background },
	x = { fg = colors.shade6, bg = colors.shade1 },
	z = { fg = colors.shade6, bg = colors.shade0 },
}

M.insert = { a = { fg = colors.color4, bg = colors.shade0 } }
M.visual = { a = { fg = colors.color2, bg = colors.shade0 } }
M.replace = { a = { fg = colors.color6, bg = colors.shade0 } }

M.inactive = {
	a = { fg = colors.shade6, bg = colors.shade0 },
	b = { fg = colors.shade6, bg = colors.shade2 },
	c = { fg = colors.shade6, bg = colors.background },
	x = { fg = colors.shade6, bg = colors.shade2 },
	z = { fg = colors.shade6, bg = colors.shade0 },
}

return M
