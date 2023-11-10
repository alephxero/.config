return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local on_attach = function(_, bufnr)
            kmap("n", "<leader>cr", "<cmd>Telescope lsp_references<cr>", { buffer = bufnr, desc = "Find references" })
            kmap("n", "<leader>cf", "<cmd>Telescope lsp_definitions<cr>", { buffer = bufnr, desc = "Find definitions" })
            kmap("n", "<leader>ci", "<cmd>Telescope lsp_implementations<cr>", { buffer = bufnr, desc = "Find implmentations" })
            kmap("n", "<leader>ct", "<cmd>Telescope lsp_type_definitions<cr>", { buffer = bufnr, desc = "Find type definitions" })
            kmap("n", "<leader>cD", "<cmd>Telescope diagnostics bufnr=0<cr>", { buffer = bufnr, desc = "Find diagnositics" })
            kmap("n", "<leader>cF", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to declaration" })
            kmap({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action,{ buffer = bufnr, desc = "Code action" })
            kmap("n", "<leader>cr", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
            kmap("n", "<leader>cd", vim.diagnostic.open_float, { buffer = bufnr, desc = "Open diagnostics" })
            kmap("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Prev diagnostic" })
            kmap("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Next diagnostic" })
            kmap("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover" })
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = "⊗ ", Warn = "⚠ ", Hint = "⊕ ", Info = "ⓘ " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" }) 
        end

        local servers = { "tsserver", "html", "cssls", "tailwindcss" }
        for _, server in ipairs(servers) do
            lspconfig[server].setup({
                capabilities = capabilities,
                on_attach = on_attach
            })
        end

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.expand("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
}
