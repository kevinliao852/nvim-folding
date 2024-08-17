local M = {}

local function set_folding_method(method)
	if method == "syntax" then
		vim.o.foldmethod = "syntax"
	elseif method == "indent" then
		vim.o.foldmethod = "indent"
	elseif method == "expr" then
		vim.o.foldmethod = "expr"
		vim.o.foldexpr = "nvim_treesitter#foldexpr()"
	elseif method == "manual" then
		vim.o.foldmethod = "manual"
	else
		vim.o.foldmethod = "manual"
		vim.o.foldlevel = 99 -- Opens all folds by default
	end
end

local function choose_folding_method()
	local choices = {
		"1. syntax based folding",
		"2. indent based folding",
		"3. treesitter based folding",
		"4. default with all folding open",
		"5. cancel",
	}

	local choice = vim.fn.inputlist(choices)

	vim.api.nvim_echo({ { "\n\n" } }, false, {})

	if choice == 1 then
		set_folding_method("syntax")
		print("\nSyntax based folding enabled")
	elseif choice == 2 then
		set_folding_method("indent")
		print("\nIndent based folding enabled")
	elseif choice == 3 then
		set_folding_method("expr")
		print("Tree-sitter based folding enabled")
	elseif choice == 4 then
		set_folding_method("manual")
		print("Default folding with all folds open enabled")
	elseif choice == 5 then
		print("Folding method selection cancelled")
	else
		print("Invalid choice")
	end
end

function M.setup() end

M.choose_folding_method = choose_folding_method

return M
