require("options")
require("keymaps")
require("plugins")

-- Packerのオートコンパイル
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "plugins.lua" },
  command = "PackerCompile",
})

-- telescope-file-browser  
require("telescope").load_extension "file_browser"


-- LSP
local lsp = require("lspconfig")
-- lsp.pyright.setup({})
-- lsp.tsserver.setup({})

-- 補完フレームワーク
local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
		{ name = "cmdline" },
		-- { name = "snippy" },
	},
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-l>"] = cmp.mapping.complete(),
	},
})
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "path" },
		{ name = "cmdline" },
	},
})

