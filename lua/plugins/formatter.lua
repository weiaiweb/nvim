-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,
		},

		python = {
			require("formatter.filetypes.python").black,
		},

		c = {
			require("formatter.filetypes.c").astyle,
		},

		cpp = {
			require("formatter.filetypes.c").astyle,
		},

        java = {
            require("formatter.filetypes.java").clangformat,
        },

        javascript = {
			require("formatter.filetypes.javascript").jsbeautify,
		},

        json = {
            require("formatter.filetypes.json").jsbeautify,
        },

        html = {
            require("formatter.filetypes.html").htmlbeautify,
        },

        css = {
            require("formatter.filetypes.css").cssbeautify,
        },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
