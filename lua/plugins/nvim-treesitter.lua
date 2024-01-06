return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "bash",
      "go",
      "templ",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "rust",
      "typescript",
      "groovy",
      "regex",
      "xml",
    })
  end,
}
