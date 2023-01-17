local util = require("coldnight.util")
local M = {}

function M.set()
	-- local file = vim.fn.expand("%:p") -- 現在開いているファイルパスを取得
	-- -- vim.cmd("vsplit | terminal")
	-- -- local command = ':call jobsend(b:terminal_job_id, "jest ' .. file .. '\\n")'
	-- print("my file is" .. file)
	util.load()
end

return M
