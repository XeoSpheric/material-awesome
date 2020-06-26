--{}-------------------------------------------------------------------------------
-- Great starting point for customizing this aweseome wm setup is right here. 
--  copy this 'custom' folder and change the colors. theme/init.lua will combine 
--  the selected theme and the default.lua together. ../mat-colors.lua was 
--  created with color palletts. Choose one, or make one accordingly.
--{}-------------------------------------------------------------------------------
local filesystem = require('gears.filesystem')
local mat_colors = require('theme.mat-colors')
local theme_dir = filesystem.get_configuration_dir() .. '/theme'
local gears = require('gears')
local dpi = require('beautiful').xresources.apply_dpi
local theme = {}
theme.icons = theme_dir .. '/icons/'
theme.font = 'Roboto medium 10'

--{}-------------------------------------------------------------------------------
-- Colors Pallets, pretty self explainitory
--  Primary will become the border color,
--  accent will appear by the icons on the left
--  bar when something happens a screen you are not
--  on, and finally background is the background color
--  of the layout
--{}-------------------------------------------------------------------------------
theme.primary = mat_colors.green
theme.accent = mat_colors.red
theme.background = mat_colors.grey

--{}-------------------------------------------------------------------------------
-- Awesome_overrrides explained. 
--
--  So awesome_overrides is simply used to override a setting that is a part of
--   the default theme. Here I only override the wallpaper, but I could find 
--   others from ../default.lua and change those. 
--{}-------------------------------------------------------------------------------
local awesome_overrides =
  function(theme)
  theme.wallpaper = theme.dir .. '/wallpapers/smallMemory.jpg'
end

--{}-------------------------------------------------------------------------------
-- When using many files, return is important. 
--  It represents what the data is refered to outside, and what the data is in them.
-- ex: custom.theme = the local var theme created in this file
--{}--------------------------------------------------------------------------------
return {
  theme = theme,
  awesome_overrides = awesome_overrides
}
