-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- split windows

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- move between windows

keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- open terminal

keymap.set("n", "tt", ":term<Return> <BAR> i", opts)
keymap.set("n", "st", ":split<Return><C-w>10-", opts)

-- line navigation
keymap.set("n", "J", "5j", opts)
keymap.set("n", "K", "5k", opts)

keymap.set("n", "0", "w", opts)
keymap.set("n", "9", "b", opts)

keymap.set("n", "(", "^", opts)
keymap.set("n", ")", "$", opts)

-- insert mode transition

keymap.set("n", "a", "o", opts)
keymap.set("n", "A", "O", opts)
keymap.set("n", "o", "a", opts)
