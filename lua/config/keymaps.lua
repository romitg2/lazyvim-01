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

-- change window dimensions

keymap.set("n", "<leader>h", ":vertical resize +5<Return>", opts)
keymap.set("n", "<leader>j", ":resize +5<Return>", opts)
keymap.set("n", "<leader>k", ":resize -5<Return>", opts)

-- open terminal

keymap.set("n", "tt", ":term<Return> <BAR> i", opts)
keymap.set("n", "st", ":split<Return><C-w>10-", opts)

-- line navigation
keymap.set("n", "J", "5j", opts)

keymap.set("n", "(", "^", opts)
keymap.set("n", ")", "$", opts)

-- insert mode transition

keymap.set("n", "a", "o", opts)
keymap.set("n", "A", "O", opts)
keymap.set("n", "o", "a", opts)

-- Insert empty line without entering insert mode
keymap.set("n", "<leader>O", ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', opts)
keymap.set("n", "<leader>o", ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', opts)
