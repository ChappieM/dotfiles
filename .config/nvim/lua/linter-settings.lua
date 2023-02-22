--
-- Linter core
--

local null_ls = require("null-ls")

local cspell = null_ls.builtins.diagnostics.cspell.with({
	extra_args = { "--config", "/home/chawata/.config/cspell/cspell.json" },
	diagnostics_postprocess = function(diagnostic)
		-- レベルをWARNに変更
		diagnostic.severity = vim.diagnostic.severity["WARN"]
	end,
	condition = function()
		-- cspellが実行できるときのみ有効
		return vim.fn.executable("cspell") > 0
	end,
})

null_ls.setup({
	sources = {
		cspell,
	},
})
