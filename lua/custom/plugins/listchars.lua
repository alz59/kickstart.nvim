return {
  'fraso-dev/nvim-listchars',
  config = function()
    require('nvim-listchars').setup {
      save_state = true,

      -- ¶ ● · • ← ↑ → ↓ ↔ ↕ ⏎ 

      -- vim.opt.listchars = { tab = '» ', trail = '○', space = '·', nbsp = '␣', eol = '↲', extends = '>', precedes = '<' }
      listchars = {
        trail = '●',
        eol = '¶',
        -- ¶ ● · • ← ↑ → ↓ ↔ ↕ ⏎ 

        -- tab = '»',
        extends = '→',
        precedes = '←',
        space = '•',
      },
      exclude_filetypes = {
        -- 'markdown',
      },
      lighten_step = 15,
      notifications = true,
    }

    vim.keymap.set('n', 'tl', ':ListcharsLightenColors<CR>', { desc = 'ListChar Lighten WhiteSpace' })
    vim.keymap.set('n', 'td', ':ListcharsDarkenColors<CR>', { desc = 'ListChar Darken WhiteSpace' })
    vim.keymap.set('n', 'ts', '<cmd>:ListcharsToggle<CR>', { desc = 'Toggle WhiteSpace' })
    vim.keymap.set('n', 'tw', '<cmd>:set wrap!<CR>', { desc = 'Toggle Wrap' })
  end,
}
