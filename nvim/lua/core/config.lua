vim.g.netrw_banner = 0

vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_size_style = "H"

-- tree style
vim.g.netrw_liststyle = 1

-- Hide anything in the .gitignore file
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]()
