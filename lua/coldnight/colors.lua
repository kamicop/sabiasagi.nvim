local dark_colors = {
	--16 colors
	cn0_gui = "#2E3440",
	cn1_gui = "#3B4252",
	cn2_gui = "#434C5E",
	cn3_gui = "#4C566A",
	cn3_gui_bright = "#616E88",
	cn4_gui = "#D8DEE9",
	cn5_gui = "#E5E9F0",
	cn6_gui = "#ECEFF4",
	cn7_gui = "#8FBCBB",
	cn8_gui = "#88C0D0",
	cn9_gui = "#81A1C1",
	cn10_gui = "#5E81AC",
	cn11_gui = "#BF616A",
	cn12_gui = "#D08770",
	cn13_gui = "#EBCB8B",
	cn14_gui = "#A3BE8C",
	cn15_gui = "#B48EAD",
	none = "NONE",

	background = "#212121",
	float = "#212121",
	sidebar = "#3B4252", -- ch1_gui
	cursorlinefg = "#3B4252", -- ch1_gui
}

-- light colorsを作ったら後者をlight_colorsに変更する
local coldnight = (vim.o.background == "dark") and dark_colors or dark_colors

return coldnight
