 function kmap(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
	options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

kmap("n", "<leader>fe", vim.cmd.Ex, { desc = "Explore files" })

kmap("n", "<leader>bn", ":bn<cr>", { desc = "Next buffer" })
kmap("n", "<leader>bp", ":bp<cr>", { desc = "Previous buffer" })

kmap("n", "<leader>ww", ":wincmd w<cr>", { desc = "Focus other window" })
kmap("n", "<leader>wh", ":wincmd h<cr>", { desc = "Focus left window" })
kmap("n", "<leader>wj", ":wincmd j<cr>", { desc = "Focus below window" })
kmap("n", "<leader>wk", ":wincmd k<cr>", { desc = "Focus above window" })
kmap("n", "<leader>wl", ":wincmd l<cr>", { desc = "Focus right window" })
kmap("n", "<leader>ws", ":wincmd s<cr>", { desc = "Split window horizontally" })
kmap("n", "<leader>wv", ":wincmd v<cr>", { desc = "Split window vertically" })
kmap("n", "<leader>w=", ":wincmd =<cr>", { desc = "Balance window sizes" })
kmap("n", "<leader>w>", ":vertical resize +5<cr>", { desc = "Increase window width" })
kmap("n", "<leader>w<", ":vertical resize -5<cr>", { desc = "Decrease window width" })
kmap("n", "<leader>w+", ":resize +5<cr>", { desc = "Increase window height" })
kmap("n", "<leader>w-", ":resize -5<cr>", { desc = "Decrease window height" })

kmap("n", "<leader>kw", ":wincmd c<cr>", { desc = "Kill current window" })
kmap("n", "<leader>kb", ":bd<cr>", { desc = "Kill current buffer" })
kmap("n", "<leader>ko", ":on<cr>", { desc = "Kill other windows" })
