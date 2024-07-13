-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move highlighted lines up/down
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")

-- blackhole cut
vim.keymap.set("n", "<leader>x", '"_x')

-- blackhole delete
vim.keymap.set("n", "<leader>d", '"_d')

-- keep pasted content on paste
vim.keymap.set("n", "p", '"0p')

-- close buffer on ctrl-w
vim.keymap.set("i", "<C-k>", "<ESC>")

-- select all
vim.keymap.set("n", "<C-a>", "ggVG")

-- reopen closed buffer
vim.keymap.set("n", "<leader>u", ":e #<CR>")
