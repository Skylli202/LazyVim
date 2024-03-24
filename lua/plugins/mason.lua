return {
  {
    "xilliamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "svelte",
        "templ",
      })
      -- vim.filetype.add({
      --   extension = {
      --     templ = "templ",
      --   },
      -- })
    end,
  },
}
