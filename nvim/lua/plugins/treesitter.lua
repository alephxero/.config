return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  opts = {
    ensure_installed = {
      "lua",
      "dockerfile",
      "elixir",
      "erlang",
      "ocaml",
      "hcl",
      "heex",
      "html",
      "javascript",
      "json",
      "rust",
      "scala",
      "scss",
      "sql",
      "terraform",
      "toml",
      "tsx",
      "typescript",
      "yaml",
    },

    highlight = {
      enable = true,
    }
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
