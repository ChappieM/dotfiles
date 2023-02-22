--
-- Formatter core settings
--

local util = require("formatter.util")

local lua = {
	function()
		return {
			exe = "stylua",
			args = {
				"--search-parent-directories",
				"--stdin-filepath",
				util.escape_path(util.get_current_buffer_file_path()),
				"--",
				"-",
			},
			stdin = true,
		}
	end,
}

local any = {
	require("formatter.filetypes.any").remove_trailing_whitespace,
}

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = lua,
		["*"] = any,
	},
})
