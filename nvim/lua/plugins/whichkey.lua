return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {},
    config = function()
        local wk = require("which-key")
        wk.register({
            f = { name = "file" },
            b = { name = "buffer" },
            c = { name = "code" },
            w = { name = "window" },
            k = { name = "kill" },
        }, { prefix = "<leader>" })
    end
}
