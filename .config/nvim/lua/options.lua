-- 行番号
vim.opt.number = true 

-- マウス操作
vim.opt.mouse = 'a'

-- タイトル表示
vim.opt.title = true

-- help言語
vim.opt.helplang = 'ja', 'en'

-- -エラー時の音を画面表示に
vim.opt.visualbell = true

-- -括弧の連携
vim.opt.showmatch = true
vim.opt.matchtime = 1

-- タブバーを常に表示
vim.opt.showtabline = 2

-- クリップボード連携
vim.opt.clipboard:append{'unnamedplus'}

-- バッファを保存せずに切り替え可
vim.opt.hidden = true

-- 検索
-- -大文字無視
vim.opt.ignorecase = true
-- -大文字で検索したら区別をつける
vim.opt.smartcase = true
-- -検索が末尾までいったら先頭から検索
vim.opt.wrapscan = true


-- フロートウィンドウのカラースキームを上書きしておく
vim.cmd[[hi NormalFloat ctermfg=LightGrey]] 
