local M = {}
local colors = require("sabiasagi.colors")

-- M.normal = {
-- 	a = { fg = colors.shade7, bg = colors.color6 },
-- 	b = { fg = colors.shade6, bg = colors.background },
-- 	c = { fg = colors.shade6, bg = colors.darker_background },
-- 	x = { fg = colors.shade6, bg = colors.background },
-- 	z = { fg = colors.shade7, bg = colors.color6 },
-- }
M.normal = {
	a = { fg = colors.shade6, bg = colors.darker_background },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade6, bg = colors.none },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.darker_background },
}

M.insert = { a = { fg = colors.color6, bg = colors.darker_background } }
M.visual = { a = { fg = colors.color3, bg = colors.darker_background } }
M.replace = { a = { fg = colors.color15, bg = colors.darker_background } }

M.inactive = {
	a = { fg = colors.shade6, bg = colors.darker_background },
	b = { fg = colors.shade6, bg = colors.shade0 },
	c = { fg = colors.shade6, bg = colors.none },
	x = { fg = colors.shade6, bg = colors.shade0 },
	z = { fg = colors.shade6, bg = colors.darker_background },
}

return M
