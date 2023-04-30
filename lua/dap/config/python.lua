local M = {}
M.adapters = {
	type = "executable",
	command = "/usr/local/bin/python3.10",
	args = { "-m", "debugpy.adapter" },
}

M.configurations = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			-- return "/usr/local/bin/python3.10"
			-- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
			-- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
			-- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
			local cwd = vim.fn.getcwd()
			if vim.fn.executable(cwd .. "/venv/bin/python3") == 1 then
				return cwd .. "/venv/bin/python3"
			elseif vim.fn.executable(cwd .. "/.venv/bin/python3") == 1 then
				return cwd .. "/.venv/bin/python3"
			else
				return "/usr/local/bin/python3.10"
			end
		end,
	},
}

return M
