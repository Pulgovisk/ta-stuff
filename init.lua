-- Load the diff plugin
_M.file_diff = require('file_diff')
-- Load multiedit
require('Multiedit')

-- Set Text Adept Theme
if not CURSES then
	buffer:set_theme('base16-solarized-dark', {
		font = "DejaVu Sans Mono",
		fontsize = 14
	})
end

-- Text adept editor settings
textadept.editing.auto_indent = true
textadept.editing.strip_trailing_spaces = true

-- Disable the horizontal and vertical scrollbars
buffer.h_scroll_bar = false
buffer.v_scroll_bar = false

-- Use tabs insted spaces for identation
buffer.use_tabs = true
buffer.tab_width = 4

-- Set the multipaste option to EACH, but, for now, this dont works as spected
buffer.multi_paste = buffer.MULTIPASTE_EACH