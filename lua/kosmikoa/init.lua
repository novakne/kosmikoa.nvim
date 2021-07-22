-- -----------------------------------------------
-- Theme: kosmikoa
-- Author: novakane
-- Repo: https://sr.ht/~novakane/kosmikoa.nvim/
-- License: MIT
-- -----------------------------------------------
local syntax = require 'kosmikoa.syntax'

local kosmikoa = {}

-- [ Highlighting function ]
local highlight = function(group, color)
    local guifg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local guibg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local attr = color.attr and 'gui=' .. color.attr or 'gui=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    local cmd = ('highlight! %s %s %s %s %s'):format(group, guifg, guibg, attr, sp)

    vim.cmd(cmd)
end

local async
async = vim.loop.new_async(vim.schedule_wrap(function()
    local lang = syntax.lang()
    for group, color in pairs(lang) do
        highlight(group, color)
    end

    local ts = syntax.treesitter()
    for group, color in pairs(ts) do
        highlight(group, color)
    end

    local plugin = syntax.plugin()
    for group, color in pairs(plugin) do
        highlight(group, color)
    end

    syntax.term()
    async:close()
end))

kosmikoa.init = function()
    vim.cmd [[hi clear]]
    if vim.fn.exists 'syntax on' then
        vim.cmd [[syntax reset]]
    end

    vim.o.background = 'dark'
    vim.o.termguicolors = true

    local editor = syntax.editor()
    for group, color in pairs(editor) do
        highlight(group, color)
    end

    local base = syntax.base()
    for group, color in pairs(base) do
        highlight(group, color)
    end

    async:send()
end

kosmikoa.init()
