local gtable = require('gears.table')
local default_theme = require('theme.default-theme')
-- PICK THEME HERE
local theme = require('theme.PapyElGringo-theme')
local xeo = require('theme.custom')

local final_theme = {}
gtable.crush(final_theme, default_theme.theme)
gtable.crush(final_theme, xeo.theme)
default_theme.awesome_overrides(final_theme)
xeo.awesome_overrides(final_theme)

return final_theme
