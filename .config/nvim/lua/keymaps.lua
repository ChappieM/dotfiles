-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true })

-- ファイラー
vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR>", { noremap = true })

-- fzf
vim.keymap.set("n", "<leader>e", ":Telescope find_files<CR>", { noremap = true })

-- バッファ切り替え
vim.keymap.set("n", "<C-n>", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-p>", ":bprev<CR>", { noremap = true })

-- フォーマットして保存
vim.keymap.set("n", "<leader>w", ":FormatWrite<CR>", { noremap = true })

-- LSP

-- hop
vim.keymap.set("n", "<leader><leader>", ":HopChar1<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":HopLine<CR>", { noremap = true })
