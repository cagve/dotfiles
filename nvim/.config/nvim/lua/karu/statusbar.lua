local fn = vim.fn
local api = vim.api


local M = {}

M.get_current_line = function() 
	local line = api.nvim_buf_line_count(0)                          *nvim_buf_line_count()*
	return line
end

M.get_file = function()
	local name = api.nvim_buf_get_name(0) -- Obtener nombre del archivo

	if not name or name == "" then
		return "(no name)"
	end

	return name
end


M.modes = setmetatable({
  ['n']  = {'Normal', 'N'};
  ['no'] = {'N·Pending', 'N·P'} ;
  ['v']  = {'Visual', 'V' };
  ['V']  = {'V·Line', 'V·L' };
  [''] = {'V·Block', 'V·B'};
  ['s']  = {'Select', 'S'};
  ['S']  = {'S·Line', 'S·L'};
  [''] = {'S·Block', 'S·B'};
  ['i']  = {'Insert', 'I'};
  ['ic'] = {'Insert', 'I'};
  ['R']  = {'Replace', 'R'};
  ['Rv'] = {'V·Replace', 'V·R'};
  ['c']  = {'Command', 'C'};
  ['cv'] = {'Vim·Ex ', 'V·E'};
  ['ce'] = {'Ex ', 'E'};
  ['r']  = {'Prompt ', 'P'};
  ['rm'] = {'More ', 'M'};
  ['r?'] = {'Confirm ', 'C'};
  ['!']  = {'Shell ', 'S'};
  ['t']  = {'Terminal ', 'T'};
}, {
  __index = function()
      return {'Unknown', 'U'} -- handle edge cases
  end
})

M.get_current_mode = function()
    local current_mode = api.nvim_get_mode().mode
	return "["..current_mode.."]"
end

function StatusLine()
	local mode = M.get_current_mode()
	local file = M.get_file()
	local statusline = mode.." "..file
	return statusline
end

vim.o.statusline = '%!v:lua.StatusLine()'

vim.api.nvim_exec([[
augroup KARU_STATUSLINE
	autocmd!
augroup END
]],false)
