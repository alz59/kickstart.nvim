return {
  'nvimtools/none-ls.nvim',
  config = function()
    require('null-ls').get_sources()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.completion.spell,
        -- require 'none-ls.builtins.spell',
      },
    }

    vim.keymap.set('n', '<leader>fn', vim.lsp.buf.format, {})
  end,
}
