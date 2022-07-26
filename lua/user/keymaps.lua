-- Misc
vim.keymap.set("n", "<CR>", ":noh<CR>", { silent = true }); -- press enter to get rid of search highlighting

-- Navigate buffers
vim.keymap.set("n", "<C-l>", ":bnext<CR>");
vim.keymap.set("n", "<C-h>", ":bprevious<CR>");

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>");
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>");
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>");
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>");

-- Nvim-Tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>");
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>");
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>");

-- Nvim-Transparent
vim.keymap.set("n", "<leader>c", ":TransparentToggle<CR>", { silent = true });

-- Telescope
vim.keymap.set("n", "<leader>t", ":Telescope <CR>");
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>");
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>");
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>");
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>");

-- LSP
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
vim.keymap.set('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, opts)
