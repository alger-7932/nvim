return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "java",
        "dockerfile",
        "c",
        "cpp",
        "css",
        "scss",
        "http",
        "sql",
        "go",
      })
    end,
  },
}
