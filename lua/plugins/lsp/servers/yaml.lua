return function()
  vim.lsp.config('yamlls', {
    settings = {
      yaml = {
        schemaStore = {
          -- You must disable built-in schemaStore support if you want to use
          -- this plugin and its advanced options like `ignore`.
          enable = false,
        },
        validate = { enable = true },
        schemas = require('schemastore').yaml.schemas(),
        format = {
          enable = true,
        },
      },
    },
  })

  vim.lsp.enable('yamlls')
end
