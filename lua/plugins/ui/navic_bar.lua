local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

require("lspconfig").clangd.setup {
    on_attach = on_attach
}
