-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- ziontee113/color-picker.nvim
-- local opts = { noremap = true, silent = true }
-- vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
-- vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
map("n", "<C-c>", "<cmd>PickColor<cr>", { desc = "pick color", noremap = true, silent = true})
map("i", "<C-c>", "<cmd>PickColorInsert<cr>", { desc = "pick color", noremap = true, silent = true})
