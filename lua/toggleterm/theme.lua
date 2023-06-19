local M = {}
local colors = require("sabiasagi.colors")

M.highlights = function()
	return {
		NormalFloat = {
			guibg = colors.shade0,
		},
		FloatBorder = {
			guifg = colors.shade0,
			guibg = colors.shade0,
		},
	}
end

return M
