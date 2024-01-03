vim.g.mapleader = " "

-- NeoVim keybinds
vim.keymap.set("i", "<C-z>", "<Cmd>u<CR>") -- Undo
vim.keymap.set("i", "<C-y>", "<C-O><C-R>") -- Redo
vim.keymap.set("i", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Insert mode)
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Normal mode)
vim.keymap.set("v", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Visual mode)
vim.keymap.set("i", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Insert mode)
vim.keymap.set("n", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Normal mode)
vim.keymap.set("v", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Visual mode)

-- Plugin keybinds
vim.keymap.set("n", "<leader>g", "<Cmd>LazyGit<CR>") -- Open LazyGit
