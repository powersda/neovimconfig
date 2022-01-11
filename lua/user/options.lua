local options = {
    backup = false,                          -- creates a backup file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    fileencoding = "utf-8",                  -- the encoding written to a file
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- pop up menu height
    -- showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs (1: only if multiple tabs)
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    undofile = true,                         -- enable persistent undo
    -- updatetime = 300,                        -- faster completion (4000ms default)
    expandtab = true,                        -- convert tabs to spaces
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- insert 2 spaces for a tab
    softtabstop = 4,
    number = true,                           -- set numbered lines
    relativenumber = true,                   -- set relative numbered lines
    -- numberwidth = 4,                      -- set number column width to 2 {default 4}
    signcolumn = "yes",                   -- always show the sign column
    wrap = true,                             -- display lines as one long line
    linebreak = true,                        -- wrap at specificed character (breakat)
    breakat = " ",                           -- wrap on this character
    title = true,                            -- change title of window to file name
    errorbells = true,                       -- no annoying error beeps
    guicursor = "",                          -- stop neovim from changing terminal cursor
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
