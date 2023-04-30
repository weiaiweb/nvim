require("code_runner").setup({
	-- put here the commands by filetype
    -- mode = "float",
    -- float = {
    --     close_key = '<ESC>',
    --     -- values: none single double rounded solid shadow 
    --     border = "rounded",
    -- },
	filetype = {
		javascript = "node",
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		c = "cd $dir && clang -g $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
		cpp = "cd $dir && clang -g $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
		python = "python3 -u",
		sh = "bash",
		rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
	},
})
