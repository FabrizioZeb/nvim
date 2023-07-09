vim.g.mapleader = " "

-- Nvim General Mappings
-- Insert Mode
-- Go to beggining and end
vim.keymap.set("i", "<C-b>", "<ESC>^i")
vim.keymap.set("i", "<C-e>", "<End>")

vim.keymap.set("i", "<C-h>", "<Left>")

-- Normal Mode

-- Window Sizing
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])   -- make the window biger vertically
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])   -- make the window smaller vertically
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Windows Moving
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- Save
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")

-- Allow Moving the cursors through wrapped lines Up and Down
vim.keymap.set("n", "<j>", 'v:count || mode(1)[0:1] == "no" ? "j" : ""gj"', { expr = true })
vim.keymap.set("n", "<k>", 'v:count || mode(1)[0:1] == "no" ? "k" : ""gk"', { expr = true })
vim.keymap.set("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
vim.keymap.set("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- LSP formatting
vim.keymap.set("n", "<leader>fm", function()
	vim.lsp.buf.format { async = true }
end)

-- View Mode
-- Allow Moving the cursors through wrapped lines Up and Down
vim.keymap.set("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
vim.keymap.set("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- Move Selected Lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Plugins 
-- Nvim Tree Api Custom Map
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus <CR>")
