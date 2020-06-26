local gtable = require('gears.table')
local default_theme = require('theme.default')
-- PICK THEME HERE
local custom = require('theme.custom')

--{}-------------------------------------------------------
-- This is where the default and selected theme are merged
--  default first, then override with selected settings.
-------{}--------------------------------------------------
local final_theme = {}
gtable.crush(final_theme, default_theme.theme)
gtable.crush(final_theme, custom.theme)
default_theme.awesome_overrides(final_theme)
custom.awesome_overrides(final_theme)
return final_theme
