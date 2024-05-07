-- return {
--   { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons' },

return {
  'akinsho/bufferline.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  options = {
    mode = 'buffers',
    diagnostics = 'coc',
    offsets = {
      filetype = 'nvim-tree',
      text = 'File Explorer',
      highligt = 'Directory',
      separtor = true,
    },
  },
}

--   require('bufferline').setup {
--     options = {
--       mode = 'buffers', -- set to "tabs" to only show tabpages instead
--       offsets = {
--         {
--           filetype = 'NvimTree',
--           text = 'File Explorer',
--           -- text_align = "left" | "center" | "right"
--           separator = true,
--         },
--       },
--       color_icons = true, -- whether or not to add the filetype icon highlights
--       -- show_buffer_icons = true | false, -- disable filetype icons for buffers
--       -- show_buffer_close_icons = true | false,
--       -- show_close_icon = true | false,
--       -- show_tab_indicators = true | false,
--       -- show_duplicate_prefix = true | false, -- whether to show duplicate buffer prefix
--       -- duplicates_across_groups = true, -- whether to consider duplicate paths in different groups as duplicates
--       -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--       -- move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
--       -- -- can also be a table containing 2 custom separators
--       -- -- [focused and unfocused]. eg: { '|', '|' }
--       -- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
--       -- enforce_regular_tabs = false | true,
--       -- always_show_bufferline = true | false,
--       hover = {
--         enabled = true,
--         delay = 200,
--         reveal = { 'close' },
--       },
--       sort_by = 'insert_after_current' | 'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
--         -- add custom logic
--         return buffer_a.modified > buffer_b.modified
--       end,
--     },
