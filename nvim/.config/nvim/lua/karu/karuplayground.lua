local ts_utils = require("nvim-treesitter.ts_utils")
-- local query = require("nvim-treesitter.query")
local parsers = require("nvim-treesitter.parsers")

local M = {}

M.testing = function()
	local parser = vim.treesitter.get_parser(0,lang)
	local pattern_name = "inline_formula"
	local tstree = parser:parse()
	local root = tstree:root()
	local table_formulas = root:field(pattern_name)
	-- local node = ts_utils.get_node_at_cursor(0)
	-- local name = vim.treesitter.get_node_text(node,0)	

	
end

M.get_query= function()
    local query = vim.treesitter.get_query("latex", "test")
    if not query then
        error(
            "refactoring not supported in this language.  Please provide a queries/<lang>/refactoring.scm"
        )

    end
    return query
end

return M
