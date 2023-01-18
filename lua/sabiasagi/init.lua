local util = require("sabiasagi.util")
local bufferline = require("bufferline.theme")

local set = function()
	-- local file = vim.fn.expand("%:p") -- 現在開いているファイルパスを取得
	-- -- vim.cmd("vsplit | terminal")
	-- -- local command = ':call jobsend(b:terminal_job_id, "jest ' .. file .. '\\n")'
	-- print("my file is" .. file)
	util.load()
end

return { set = set, bufferline = bufferline }
