return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = vim.list_extend(opts.sources or {}, {
      -- nls.builtins.formatting.npm_groovy_lint,
      -- nls.builtins.diagnostics.npm_groovy_lint,
    })
  end,
}
