require("ibl").setup({
    enabled = true,
    exclude = {
        filetypes = {
            "help",
            "packer",
            "neogitstatus",
        },
        buftypes = { 
            "terminal", 
            "nofile" 
        },
    },
    indent = {
        char = '│',
    },
    -- space_char_blankline = '|',
    -- show_traling_blankline_indent = false,
    -- show_first_indent_level = true,
    -- use_treesitter = true,
    -- show_current_context = true,
    -- show_current_context_start = true,
    -- context_patterns = {
    --     "class",
    --     "return",
    --     "function",
    --     "method",
    --     "^if",
    --     "^while",
    --     "^for",
    --     "^object",
    --     "^table",
    --     "block",
    --     "arguments",
    --     "if_statement",
    --     "else_clause",
    --     "try_statement",
    --     "catch_clause",
    --     "import_statement",
    --     "operation_type",
    -- }
})
