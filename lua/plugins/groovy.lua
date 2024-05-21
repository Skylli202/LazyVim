-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

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
            "~/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar",
          },
          settings = {
            groovy = {
              classpath = {
                "~/.sdkman/candidates/groovy/current/lib",
                "~/flex-sdk/flex-sdk-external-6.3.15.jar",
              },
            },
          },
        },
      },
    },
  },
}
