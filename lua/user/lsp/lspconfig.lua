-- Servers to configure
local servers = { "clangd", "sumneko_lua", "pyright", "bashls" }

-- Key Mappings
-- local on_attach = function(_, bufnr)
--     -- Enable completion triggered by <c-x><c-o>
--     -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
-- end

-- Set LSP flags
-- local lsp_flags = {
--     debounce_text_changes = 150, -- This is the default in Nvim 0.7+
-- }

-- Set diagnostic message options
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})

-- Add diagnostic signs
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Round borders for hover and signature help popups
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
    width = 60,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
    width = 60,
})

-- Enabled nvim-cmp capabilities
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Attach configurations to servers
for _, server in ipairs(servers) do
    local status_ok, settings = pcall(require, "user/lsp/settings/" .. server)
    require('lspconfig')[server].setup({
        -- on_attach = on_attach,
        -- flags = lsp_flags,
        capabilities = capabilities,
        settings = status_ok and settings or nil
    })
end

