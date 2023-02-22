vim.cmd.packadd("packer.nvim")

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("ap/vim-buftabline")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("mhartington/formatter.nvim")
	use("j-hui/fidget.nvim")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("phaazon/hop.nvim")
end)

-- Packerオートコンパイル
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua" },
	command = "PackerCompile",
})

require("nvim-autopairs").setup({})
require("Comment").setup({})
require("hop").setup({})
require("telescope").load_extension("file_browser")

require("mason").setup()
require("mason-lspconfig").setup()

-- LSP core settings
require("LSP-settings")

-- LSP Standalone UI
require("fidget").setup({})

-- Linter settings
require("linter-settings")

-- Formatter settings
require("formatter-settings")

-- cmp
local cmp = require("cmp")
local cmp_sources = {
	{ name = "nvim_lsp" },
	{ name = "buffer" },
	{ name = "path" },
	{ name = "cmdline" },
	-- { name = "snippy" },
}
local cmp_mappings = {
	["<S-Tab>"] = cmp.mapping.select_prev_item(),
	["<Tab>"] = cmp.mapping.select_next_item(),
	["<C-l>"] = cmp.mapping.complete(),
}
cmp.setup({
	sources = cmp_sources,
	mapping = cmp_mappings,
})

local cmp_cmdline_sources = {
	{ name = "path" },
	{ name = "cmdline" },
}
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp_cmdline_sources,
})
