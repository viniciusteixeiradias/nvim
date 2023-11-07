-- Set the mapleader to a space character for key mappings that use <leader>.
vim.g.mapleader = " "

-- Define a key mapping in normal mode (<leader>pv) to execute an Ex command.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Create key mappings for moving selected text down and up in visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join the current line with the line below in normal mode (J).
vim.keymap.set("n", "J", "mzJ`z")

-- Scroll down and center the screen on the cursor in normal mode.
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Scroll up and center the screen on the cursor in normal mode.
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Find the next occurrence of the search pattern and center the screen on the cursor (n).
vim.keymap.set("n", "n", "nzzzv")

-- Find the previous occurrence of the search pattern and center the screen on the cursor (N).
vim.keymap.set("n", "N", "Nzzzv")

-- Copy the selected text to the system clipboard and paste it before the cursor in visual mode.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank the selected text to the system clipboard in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Yank the entire current line to the system clipboard in normal mode.
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Open a new Tmux window named "tmux-sessionizer" in normal mode.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Format code using the Language Server Protocol (LSP) in normal mode.
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Search and replace the word under the cursor with itself in normal mode.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Edit the Packer.nvim configuration file in normal mode.
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/vinicius/packer.lua<CR>")

-- Reload the current script in normal mode.
vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end)

