return {
  {
    'akinsho/toggleterm.nvim',
    require('toggleterm').setup {
      direction = 'float',
    },
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new { cmd = 'lazygit', hidden = true, direction = 'float' }
      local btop = Terminal:new { cmd = 'btop', hidden = true, direction = 'float' }
      function _BTOP_TOGGLE()
        btop:toggle()
      end
      function _LAZYGIT_TOGGLE()
        lazygit:toggle()
      end
    end,
    version = '*',
    opts = { --[[ things you want to change go here]]
      direction = 'float',
      vim.keymap.set('n', 'tt', '<cmd>:ToggleTerm<cr>', { desc = 'Toggle Floating Terminal' }),
      vim.keymap.set('n', 'tg', '<cmd>:lua _LAZYGIT_TOGGLE()<cr>', { desc = 'Toggle Floating LazyGIT Terminal' }),
      vim.keymap.set('n', 'tb', '<cmd>:lua _BTOP_TOGGLE()<cr>', { desc = 'Toggle Floating BTop Terminal' }),
    },
  },
}
