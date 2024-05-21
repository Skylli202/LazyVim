return {
  {
    "xilliamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "templ",
      })
      -- vim.filetype.add({
      --   extension = {
      --     templ = "templ",
      --   },
      -- })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        groovyls = {
          settings = {
            groovy = {
              classpath = {
                "/home/skylli/.sdkman/candidates/groovy/current/lib",
                "/home/skylli/flex-sdk/flex-sdk-external-6.3.15.jar",
              },
            },
          },
        },
      },
    },
  },
}
