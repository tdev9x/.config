vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("i", "jk", "<ESC>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")

keymap.set("n", "<leader><Right>", "<C-w>l")

keymap.set("n", "<Left>b", ":bnext<CR>")
keymap.set("n", "<Right>b", ":bprevious<CR>")

keymap.set("n", "<F5>", ":!go run %:p<CR>", { noremap = true })
