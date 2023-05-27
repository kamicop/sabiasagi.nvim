local M = {}
local colors = require("sabiasagi.colors")

M.normal = {
	a = { fg = colors.shade6, bg = colors.color6 },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade4, bg = colors.darker_background },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.color6 },
}

M.insert = { a = { fg = colors.shade6, bg = colors.background } }
M.visual = { a = { fg = colors.shade6, bg = colors.color3 } }
M.replace = { a = { fg = colors.shade6, bg = colors.color5 } }

M.inactive = {
	a = { fg = colors.shade6, bg = colors.color6 },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade4, bg = colors.darker_background },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.color6 },
}

return M
