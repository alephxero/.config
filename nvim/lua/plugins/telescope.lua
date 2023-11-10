return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-p>"] = actions.move_selection_previous,
                        ["<C-n>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            }
        })

        telescope.load_extension("fzf")
        local kmap = vim.keymap

        kmap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
        kmap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
        kmap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
        kmap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Find string in files" })
        kmap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc  = "Find help tags" })
        kmap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
        kmap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
    end,
}
