-- Keymaps are automatically loaueu on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
map("n", "<leader>pv", ":Explore<CR>", { desc = "Open netwr" })
-- vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")
