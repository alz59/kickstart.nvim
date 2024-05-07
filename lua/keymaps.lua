-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
--
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
-- {mode}: mode where the keybinding should execute. It can be a list of modes. We need to specify the mode's short name. Here are some of the most common.
-- n: Normal mode.
-- i: Insert mode.
-- x: Visual mode.
-- s: Selection mode.
-- v: Visual + Selection.
-- t: Terminal mode.
-- o: Operator-pending.
-- '': Yes, an empty string. Is the equivalent of n + v + o.
-- {lhs}: is the key we want to bind.
--
-- {rhs} is the action we want to execute. It can be a string with a command or an expression. You can also provide a lua function.
-- {opts} this must be a lua table. If you don't know what is a "lua table" just think is a way of storing several values in one place. Anyway, it can have these properties.
--
-- desc: A string that describes what the keybinding does. You can write anything you want.
--
-- remap: A boolean that determines if our keybinding can be recursive. The default value is false. Recursive keybindings can cause some conflicts if used incorrectly. Don't enable it unless you know what you're doing.
-- buffer: It can be a boolean or a number. If we assign the boolean true it means the keybinding will only be effective in the current file. If we assign a number, it needs to be the "id" of an open buffer.
-- silent: A boolean. Determines whether or not the keybindings can show a message. The default value is false.
-- expr: A boolean. If enabled it gives the chance to use vimscript or lua to calculate the value of {rhs}. The default value is false.

-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('i', 'jj', '<esc>')

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
