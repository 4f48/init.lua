local builtin = require("telescope.builtin")
local harpoon = require("harpoon")

vim.g.mapleader = " "

-- NeoVim keybinds
vim.keymap.set("i", "<C-z>", "<Cmd>u<CR>") -- Undo (Insert mode)
vim.keymap.set("n", "<C-z>", "<Cmd>u<CR>") -- Undo (Normal mode)
vim.keymap.set("i", "<C-y>", "<C-O><C-R>") -- Redo
vim.keymap.set("i", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Insert mode)
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Normal mode)
vim.keymap.set("v", "<C-s>", "<Cmd>w<CR>") -- Save/Write buffer (Visual mode)
vim.keymap.set("i", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Insert mode)
vim.keymap.set("n", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Normal mode)
vim.keymap.set("v", "<A-s>", "<Cmd>wq<CR>") -- Save/Write buffer & quit (Visual mode)
vim.keymap.set("n", "<leader>fm", "<Cmd>E<CR>") -- Open file manager
vim.keymap.set("n", "<leader>sv", "<Cmd>vs<CR>") -- Vertical split
vim.keymap.set("n", "<leader>sh", "<Cmd>sp<CR>") -- Horizontal split
vim.keymap.set("n", "<leader>s<Up>", "<C-W><Up>") -- Go to up in split
vim.keymap.set("n", "<leader>s<Down>", "<C-W><Down>") -- Go down in split
vim.keymap.set("n", "<leader>s<Left>", "<C-W><Left>") -- Go left in split
vim.keymap.set("n", "<leader>s<Right>", "<C-W><Right>") -- Go right in split
vim.keymap.set("n", "<C-Up>", "<C-W>+") -- Increase split window size
vim.keymap.set("n", "<C-Down>", "<C-W>-") -- Decrease split window size
vim.keymap.set("n", "<C-Right>", "<C-W>>") -- Increase vertical split window size
vim.keymap.set("n", "<C-Left>", "<C-W><") -- Decrease vertical split window size
vim.keymap.set("n", "<Tab>s", "<Cmd>tabnew<CR>") -- New tab
vim.keymap.set("n", "<Tab>c", "<Cmd>tabc<CR>") -- Close tab
vim.keymap.set("n", "<Tab>n", "<Cmd>tabn<CR>") -- New tab
vim.keymap.set("n", "<Tab>p", "<Cmd>tabp<CR>") -- New tab

-- Typing keybinds
vim.keymap.set("i", '"', '""<Left>') -- Duplicate double quotes
vim.keymap.set("i", "'", "''<Left>") -- Duplicate quotes
vim.keymap.set("i", "(", "()<Left>") -- Duplicate brackets
vim.keymap.set("i", "{", "{}<Left>") -- Duplicate curly brackets
vim.keymap.set("i", "[", "[]<Left>") -- Duplicate square brackets
vim.keymap.set("i", "<", "<><Left>") -- Duplicate chevrons

-- Plugin keybinds
vim.keymap.set("n", "<leader>g", "<Cmd>LazyGit<CR>") -- Open LazyGit
vim.keymap.set("n", "<leader>t", builtin.builtin, {}) -- Open telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Open telescope in find file mode
vim.keymap.set("n", "<leader>fs", builtin.live_grep, {}) -- Open telescope in live grep mode
vim.keymap.set("n", "<leader>ft", builtin.treesitter, {}) -- Open telescope in treesitter mode
vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end) -- Append file to harpoon list
vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end) -- Remove file from harpoon list
vim.keymap.set("n", "<leader>hm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end) -- Open harpoon quick menu
vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)
vim.keymap.set("n", "<C-p>", function() harpoon:list():prev() end)
