local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<CR>", ":noh<CR>", opts) -- press enter to get rid of search highlighting

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Smooth Scrolling
keymap("", "<C-u>", ":call smooth_scroll#up(&scroll, 30, 2)<CR>", opts)
keymap("", "<C-d>", ":call smooth_scroll#down(&scroll, 30, 2)<CR>", opts)
keymap("", "<C-b>", ":call smooth_scroll#up(&scroll*2, 30, 2)<CR>", opts)
keymap("", "<C-f>", ":call smooth_scroll#down(&scroll*2, 30, 2)<CR>", opts)

-- Nvim-Tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", "NvimTreeRefresh<CR>", opts)
keymap("n", "<leader>n", "NvimTreeFindFile<CR>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>t", "<cmd>Telescope live_grep<cr>", opts)


