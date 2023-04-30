local M ={}
M.adapters = {
	type = "executable",
	command = "node-debug2-adapter",
	args = {os.getenv('HOME') .. '/dev/microsoft/vscode-node-debug2/src/nodeDebug.ts'},
}
M.configurations = {
	{
		name = "Launch",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
	{
		-- For this to work you need to make sure the node process is started with the `--inspect` flag.
		name = "Attach to process",
		type = "node2",
		request = "attach",
		processId = require("dap.utils").pick_process,
	},
}

return M
