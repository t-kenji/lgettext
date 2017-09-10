--[[
test for lgettext.
]]

local gettext = require('lgettext')

local _ = gettext.gettext

print('bindtextdomain', gettext.bindtextdomain('messages', './locale'))
print('bind_textdomain_codeset', gettext.bind_textdomain_codeset('messages', 'UTF-8'))
print('textdomain', gettext.textdomain('messages'))
print('gettext', _('test'))
print('gettext', _('test2'))
print('ngettext', string.format(gettext.ngettext('%d window', '%d windows', 1), 1))
print('ngettext', string.format(gettext.ngettext('%d window', '%d windows', 2), 2))
print('ngettext', string.format(gettext.ngettext('%d window', '%d windows', 5), 5))

local lang_ja = gettext.translation('messages', './locale', {'ja'}, 'UTF-8')
local lang_de = gettext.translation('messages', './locale', {'de'}, 'UTF-8')

print('ja', lang_ja:gettext('test'))
print('jan', string.format(lang_ja:ngettext('%d test', '%d tests', 2), 2))
print('de', lang_de:gettext('test'))
print('den', string.format(lang_de:ngettext('%d test', '%d tests', 5), 5))
