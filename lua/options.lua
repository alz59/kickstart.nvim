-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`
-- vim.opt.conceallevel = 2
vim.o.conceallevel = 2

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- use the directory of undotree plugin for managing the history
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '○', space = '·', nbsp = '␣', eol = '↲', extends = '>', precedes = '<' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.showtabline = 2
-- display 2 spaces for tab character
vim.opt.tabstop = 2
-- insert spaces when tab character in insert mode
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
--- ¶ ● · • ← ↑ → ↓ ↔ ↕ ⏎ 
-- vim.opt.listchars=tab:▸\ ,eol:↲,trail:·
-- vim.opt.listchars=eol:$,tab:\gcc

-- vim.opt.listchars = { space = '.', tab = '> ', eol = '$' }
-- hi CursorLine gui=underline cterm=underline
-- vim.cmd ':hi CursorLine gui=underline cterm=underline'
vim.api.nvim_set_hl(0, 'CursorLine', { underline = true })
