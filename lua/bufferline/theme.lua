local M = {}
local colors = require("sabiasagi.colors")

local setting = {
	fill = colors.darker_background,
	indicator = colors.shade4,
	bg = colors.lighter_background,
	buffer_bg = colors.ligher_background,
	buffer_bg_selected = colors.background,
	buffer_bg_visible = colors.background,
	fg = colors.shade5,
	bold = true,
	italic = true,
}

M.highlights = function(new_setting)
	if new_setting ~= nil then
		for key, value in pairs(new_setting) do
			setting[key] = value
		end
	end

	local fill = setting.fill
	local indicator = setting.indicator
	local bg = setting.bg
	local buffer_bg = setting.bg
	local buffer_bg_selected = setting.buffer_bg_selected
	local buffer_bg_visible = setting.buffer_bg_visible
	local buffer_fg = setting.fg
	local bold = setting.bold
	local italic = setting.italic

	-- see h:bufferline-hightlights
	return {
		fill = {
			bg = fill,
		},
		background = {
			bg = bg,
		},
		buffer_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			italic = italic,
		},
		buffer_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
			italic = italic,
		},

		numbers = {
			bg = buffer_bg,
		},
		numbers_selected = {
			bg = buffer_bg_selected,
		},
		numbers_visible = {
			bg = buffer_bg_visible,
			italic = italic,
		},

		diagnostic = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		diagnostic_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		diagnostic_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},

		hint = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		hint_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		hint_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		hint_diagnostic = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		hint_diagnostic_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		hint_diagnostic_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		info = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		info_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		info_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		info_diagnostic = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		info_diagnostic_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		info_diagnostic_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		warning = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		warning_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		warning_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		warning_diagnostic = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		warning_diagnostic_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		warning_diagnostic_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		error_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		error_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error_diagnostic = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		error_diagnostic_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		error_diagnostic_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		close_button = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		close_button_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},
		close_button_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
		},

		duplicate = {
			fg = buffer_fg,
			bg = buffer_bg,
		},
		duplicate_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
		},
		duplicate_visible = {
			fg = buffer_fg,
			bg = buffer_bg_visible,
		},

		separator = {
			fg = fill,
			bg = buffer_bg,
		},
		separator_selected = {
			fg = fill,
			bg = buffer_bg_selected,
		},
		separator_visible = {
			fg = fill,
			bg = buffer_bg_visible,
		},
		modified = {
			bg = buffer_bg,
		},
		modified_selected = {
			bg = buffer_bg_selected,
		},
		modified_visible = {
			bg = buffer_bg_visible,
		},
		indicator_selected = {
			fg = indicator,
			bg = buffer_bg_selected,
		},
		pick = {
			bg = buffer_bg,
			bold = bold,
			italic = italic,
		},
		pick_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		pick_visible = {
			bg = buffer_bg_visible,
			bold = bold,
			italic = italic,
		},

		tab = {
			bg = buffer_bg,
		},
		tab_selected = {
			fg = buffer_fg,
			bg = buffer_bg_selected,
		},
		tab_close = {
			bg = fill,
		},
		tab_separator_selected = {
			fg = fill,
			bg = buffer_bg_selected,
		},
		tab_separator = {
			fg = fill,
			bg = buffer_bg,
		},

		offset_separator = {
			fg = fill,
			bg = fill,
		},
	}
end

return M
