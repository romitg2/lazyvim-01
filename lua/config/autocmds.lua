-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<F5>", [[:lua RunCppProgram()<CR>]], { noremap = true, silent = true })

-- Function to compile and run C++ program

function RunCppProgram()
  -- Write the current buffer to the file
  vim.cmd("w")

  -- Get the full path of the current file
  local fullPath = vim.fn.expand("%")

  -- Extract the filename without path and extension
  local fileName = vim.fn.fnamemodify(fullPath, ":t:r")

  -- Compile the C++ file using g++
  local compileCmd = "g++ " .. fullPath .. " -o " .. fileName

  -- Run the compilation command and check for errors
  local compileStatus = vim.fn.system(compileCmd)

  if compileStatus == 0 then
    print("Compilation successful")
  else
    print("Compilation failed. Check the error messages.")
  end
end
