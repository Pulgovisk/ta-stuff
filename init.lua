-- Load the diff plugin
_M.file_diff = require('file_diff')
-- Load multiedit
local multiedit = require('Multiedit')

-- Set Text Adept Theme
if not CURSES then
	ui.set_theme('base16-solarized-dark', {
		font = "Hack",
		fontsize = 14
	})
end


-- mimics sublimes ctrl-d
keys.cd = multiedit.select_word
keys.af3 = multiedit.select_all_words

-- exchange all standard bindings with the multiedit version
keys['\n'] = multiedit.newline
keys.left = multiedit.char_left
keys.cleft = multiedit.word_left
keys.sleft = multiedit.char_left_extend
keys.csleft = multiedit.word_left_extend
keys.right = multiedit.char_right
keys.sright = multiedit.char_right_extend
keys.cright = multiedit.word_right
keys.csright = multiedit.word_right_extend
keys.home = multiedit.line_start
keys.shome = multiedit.line_start_extend
keys["end"] = multiedit.line_end
keys["send"] = multiedit.line_end_extend

-- Text adept editor settings
textadept.editing.auto_indent = true
textadept.editing.strip_trailing_spaces = true
