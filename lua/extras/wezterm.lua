local colors = {
	darker_background = "#1a1a1a",
	background = "#212121",

	shade0 = "#2c2c2c",
	shade1 = "#373736",
	shade2 = "#4c4d4b",
	shade3 = "#575855",
	shade4 = "#61635f",
	shade5 = "#dfe3dc",
	shade6 = "#e9ede6",
	shade7 = "#f3f7f0",

	teal = "#6699A1", -- 錆浅葱
	cyan = "#6c8d9b", -- 錆浅葱2
	light_blue = "#719bad",
	blue = "#758492",
	red = "#9d6a76",
	orange = "#c2894b",
	yellow = "#a39a52",
	green = "#70a19f",
	magenta = "#95728d",
}

return {
	foreground = colors.shade5,
	background = colors.background,

	cursor_bg = colors.shade6,
	cursor_fg = colors.shade0,
	cursor_border = colors.teal,

	selection_fg = colors.shade0,
	selection_bg = colors.yellow,

	scrollbar_thumb = colors.shade2,

	split = colors.shade0,

	tab_bar = {
		background = colors.background,
		active_tab = {
			bg_color = colors.shade0,
			fg_color = colors.shade5,
		},
		inactive_tab = {
			bg_color = colors.background,
			fg_color = colors.shade5,
		},
		new_tab = {
			bg_color = colors.background,
			fg_color = colors.shade5,
			italic = false,
		},
	},

	ansi = {
		colors.shade1,
		colors.red,
		colors.green,
		colors.yellow,
		colors.blue,
		colors.magenta,
		colors.teal,
		colors.shade6,
	},

	brights = {
		colors.shade3,
		colors.red,
		colors.green,
		colors.yellow,
		colors.light_blue,
		colors.magenta,
		colors.cyan,
		colors.shade7,
	},
}
