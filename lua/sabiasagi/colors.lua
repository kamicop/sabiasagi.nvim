local named_color = {
	darker_background = "#1a1a1a",
	lighter_background = "#212121",
	main_background = "#373738",

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

local dark_colors = {
	darker_background = named_color.darker_background,
	lighter_background = named_color.lighter_background,
	background = named_color.main_background,

	shade0 = named_color.shade0,
	shade1 = named_color.shade1, -- Ansi Black , term0
	shade2 = named_color.shade2,
	shade3 = named_color.shade3, -- Bright Black, term8
	shade4 = named_color.shade4,
	shade5 = named_color.shade5,
	shade6 = named_color.shade6, -- Ansi White, term7
	shade7 = named_color.shade7, -- Bright White, term15

	-- no color7 & 8
	color1 = named_color.red, -- Ansi Red, term1
	color9 = named_color.red, -- Bright Red, term9
	color2 = named_color.green, -- Ansi Green, term2
	color10 = named_color.green, -- Bright Green, term10
	color3 = named_color.yellow, -- Ansi Yellow, term3
	color11 = named_color.yellow, -- Bright Yellow, term11
	color4 = named_color.blue, -- Ansi Blue, term4
	color12 = named_color.light_blue, -- Bright Blue, term12
	color5 = named_color.magenta, -- Ansi Magenta. term5
	color13 = named_color.magenta, -- Bright Magenta. term13
	color6 = named_color.teal, -- Ansi Cyan, term3, term6
	color14 = named_color.cyan, -- Bright Cyan, term14

	color15 = named_color.orange,

	none = "NONE",
}

if vim.o.background == "dark" then
	dark_colors.float = dark_colors.background
	dark_colors.sidebar = dark_colors.darker_background
	dark_colors.cursorlinefg = dark_colors.shade0
end

-- light colorsを作ったら後者をlight_colorsに変更する
local colors = (vim.o.background == "dark") and dark_colors or dark_colors

return colors
