local named_color = {
	background = "#212121",
	teal = "#8FBCBB",
	cyan = "#88C0D0",
	light_blue = "#81A1C1",
	blue = "#5E81AC",
	red = "#BF616A",
	orange = "#D08770",
	yellow = "#EBCB8B",
	green = "#A3BE8C",
	magenta = "#B48EAD",
}

local dark_colors = {
	background = named_color.background,

	shade0 = "#2E3440",
	shade1 = "#3B4252", -- Ansi Black , term0
	shade2 = "#434C5E",
	shade3 = "#4C566A", -- Bright Black, term8
	shade4 = "#616E88",
	shade5 = "#D8DEE9",
	shade6 = "#E5E9F0", -- Ansi White, term7
	shade7 = "#ECEFF4", -- Bright White, term15

	color1 = named_color.red, -- Ansi Red, term1
	color9 = named_color.red, -- Bright Red, term9
	color2 = named_color.green, -- Ansi Green, term2
	color10 = named_color.green, -- Bright Green, term10
	color3 = named_color.yellow, -- Ansi Yellow, term3
	color11 = named_color.yellow, -- Bright Yellow, term11
	color4 = named_color.blue, -- Ansi Blue, term4
	color12 = named_color.light_blue, -- Ansi Blue, term12
	color5 = named_color.magenta, -- Ansi Magenta. term5
	color13 = named_color.magenta, -- Bright Magenta. term13
	color6 = named_color.teal, -- Ansi Cyan, term3, term6
	color14 = named_color.cyan, -- Bright Cyan, term14

	color15 = named_color.blue,
	color16 = named_color.orange,

	none = "NONE",
}

if vim.o.background == "dark" then
	dark_colors.float = dark_colors.background
	dark_colors.sidebar = dark_colors.shade1
	dark_colors.cursorlinefg = dark_colors.shade1
end

-- light colorsを作ったら後者をlight_colorsに変更する
local coldnight = (vim.o.background == "dark") and dark_colors or dark_colors

return coldnight
