vim.g.mapleader = " "                           -- Map spacebar as leader key
vim.g.netrw_localrmdir = "rm -r"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)   -- Open directory explorer
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")    -- Shift highlighted text down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")    -- Shift highlighted text up

vim.keymap.set("n", "J", "mzJ`z")               -- Don't move cursor when appending below line to current
vim.keymap.set("n", "<C-d>", "<C-d>zz")         -- Keep cursor centred when jumping down page
vim.keymap.set("n", "<C-u>", "<C-u>zz")         -- Keep cursor centred when jumping up page
vim.keymap.set("n", "n", "nzzzv")               -- Keep cursor centred when jumping to searched term
vim.keymap.set("n", "N", "Nzzzv")               -- Keep cursor centred when jumping to searched term

vim.keymap.set("x", "<leader>p", "\"_dP")       -- Paste over a highlighted section without losing current clipboard

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])    -- Sub all instances highlighted word
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })     -- Make current file executable

vim.keymap.set("n", "<leader>O", "O<Esc>0\"_D") -- Insert line above cursor and stay in normal mode
vim.keymap.set("n", "<leader>o", "o<Esc>0\"_D") -- Insert line below cursor and stay in normal mode

