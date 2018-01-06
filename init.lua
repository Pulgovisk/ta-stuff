-- Load the diff plugin
_M.file_diff = require('file_diff')
-- Load multiedit
require('Multiedit')

-- Set Text Adept Theme
if not CURSES then
	ui.set_theme('base16-solarized-dark', {
		font = "DejaVu Sans Mono",
		fontsize = 14
	})
end

-- Text adept editor settings
textadept.editing.auto_indent = true
textadept.editing.strip_trailing_spaces = true
