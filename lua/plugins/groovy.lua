return {
  -- Add groovy to treesitter.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "groovy" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      ---@diagnostic disable-next-line: missing-fields
      servers = {
        groovyls = {
          cmd = {
            "java",
            "-jar",
            "/home/skylli/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar",
          },
          settings = {
            groovy = {
              classpath = {
                "~/.sdkman/candidates/groovy/current/lib",
                "~/home/skylli/flex-sdk",
              },
            },
          },
        },
      },
    },
  },
}
