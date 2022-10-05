--neovim keymaps file
--use this for making changes to any keymaps

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Normal Mode --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-v>", "<C-w>v", opts)
keymap("n", "<C-s>", "<C-w>s", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Open up telescope
keymap("n", "<C-]>", ":Telescope find_files<CR>", opts)

-- Toggle nvimtree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Visual Mode --
-- Stay in indent mode after a single indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move highlighted text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
