-- MySnippets.lua

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require 'luasnip.extras'
local l = require 'luasnip.extras._lambda'
local rep = extras.rep
local fmt = require('luasnip.extras.fmt').fmt
local c = ls.choice_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

print 'Hello from MySnippets.lua'

ls.add_snippets('all', {
  s('hi', t 'hello world'),
})

ls.add_snippets('lua', {
  s(
    'var',
    fmt('local {} = {}', {
      i(1, 'Name'),
      i(2, 'Value'),
    })
  ),
})

ls.add_snippets('python', {

  s('#!', t { '#!/usr/bin/env python3', '"""', '.py', '"""' }),

  s('skel', t { '#!/usr/bin/python3', '"""', '"""', 'def main():', '#', 'if __name__ == __main__ : main()' }),
})

-- ls.add_snippets('tex', {
--   s('beg', {
--     t '\\begin{',
--     i(1),
--     t '}',
--     t { '', '\t' },
--     i(0),
--     t { '', '\\end{' },
--     rep(1),
--     t '}',
--   }),
-- })
--
-- ls.add_snippets('cs', {
--   s(
--     'logc',
--     fmt([[Debug.Log($"<color={}>{}</color>");]], {
--       c(1, {
--         t 'red',
--         t 'green',
--         t 'blue',
--         t 'cyan',
--         t 'magenta',
--       }),
--       i(2),
--     })
--   ),
-- })
