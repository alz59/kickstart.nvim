return {
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    app = 'browser',
    config = function()
      require('peek').setup()
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  -- -- install without yarn or npm
  -- {
  --   'iamcco/markdown-preview.nvim',
  --   cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  --   ft = { 'markdown' },
  --   build = function()
  --     vim.fn['mkdp#util#install']()
  --   end,
  -- },
  --
  -- install with yarn or npm

  --   cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  --   build = 'cd app && npm install',
  --   init = function()
  --     vim.g.mkdp_filetypes = { 'markdown' }
  --   end,
  --   ft = { 'markdown' },
  -- },
}
