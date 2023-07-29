local line_ok, feline = pcall(require, "feline")

if not line_ok then
	return
end

local rahulsnvimtheme = {
	fg = "#8f96a0",
	bg = "#660c0e18",
	purple = "#d3869b",
	orange = "#fe8019",
	peanut = "#f6d5a4",
	red = "#fb4934",
	aqua = "#8ec07c",
	darkblue = "#121524",
	dark_red = "#cc241d",
}

local vi_mode_colors = {
	NORMAL = "#8AA499",
	OP = "green",
	INSERT = "purple",
	VISUAL = "aqua",
	LINES = "aqua",
	BLOCK = "aqua",
	REPLACE = "red",
	COMMAND = "yellow",
}

local c = { vim_mode = {
        icon = {
            str = '' 
        },
		provider = {
			name = "vi_mode",
			opts = {
				show_mode_name = true,
				-- padding = "center", -- Uncomment for extra padding.
			},
		},
		hl = function()
			return {
				bg = require("feline.providers.vi_mode").get_mode_color(),
				fg = "black",
				style = "bold",
				name = require('feline.providers.vi_mode').get_mode_highlight_name(),
			}
		end,
		left_sep = "block",
		right_sep = "block",
	},
	gitBranch = {
        provider = 'git_branch',
        hl = function ()
            return {
                fg = require("feline.providers.vi_mode").get_mode_color(),
                bg = "#0c0e18",
                style = "bold",
            }
        end,
		left_sep = "block",
		right_sep = "block",
	},
	gitDiffAdded = {
		provider = "git_diff_added",
		hl = {
			fg = rahulsnvimtheme.aqua,
			bg = "#0c0e18",
		},
		-- left_sep = "block",
		right_sep = "block",
	},
	gitDiffRemoved = {
		provider = "git_diff_removed",
		hl = {
			fg = rahulsnvimtheme.red,
			bg = "#0c0e18",
		},
		-- left_sep = "block",
		right_sep = "block",
	},
	gitDiffChanged = {
		provider = "git_diff_changed",
		hl = {
			fg = "fg",
			bg = "#0c0e18",
		},
		-- left_sep = "block",
		-- right_sep = "block",
	},
	separator = {
		provider = "",
	},
	fileinfo = {
		provider = {
			name = "file_info",
			opts = {
				type = "relative-short",
			},
		},
		hl = {
			fg = "#8f96a0",
			style = "bold",
		},
		left_sep = " ",
		right_sep = " ",
	},
	diagnostic_errors = {
		provider = "diagnostic_errors",
		hl = {
			fg = "red",
		},
	},
	diagnostic_warnings = {
		provider = "diagnostic_warnings",
		hl = {
			fg = "yellow",
		},
	},
	diagnostic_hints = {
		provider = "diagnostic_hints",
		hl = {
			fg = "aqua",
		},
	},
	diagnostic_info = {
		provider = "diagnostic_info",
	},
	lsp_client_names = {
		provider = "lsp_client_names",
		hl = {
			fg = "purple",
			bg = "darkblue",
			style = "bold",
		},
		left_sep = "block",
		right_sep = "block",
	},
	file_type = {
		hl = {
			fg = "#F0E6C1",
			bg = "#0c0e18",
			style = "bold",
		},
		name = "",
		left_sep = "block",
		right_sep = "block",
		provider = {
			name = "file_type",
			opts = {
				filetype_icon = true,
				case = "lowercase",
			},
		},
	},
	position = {
		provider = "position",
        hl = function()
            return {
                bg = require("feline.providers.vi_mode").get_mode_color(),
                fg = "black",
                style = "bold",
            }
        end,
		left_sep = "block",
		right_sep = "block",
	},
	line_percentage = {
		provider = "line_percentage",
		hl = {
			bg = "#F0E6C1",
			fg = "darkblue",
			style = "bold",
		},
		left_sep = "block",
		right_sep = "block",
	},
	scroll_bar = {
		provider = "scroll_bar",
		hl = {
			fg = "#8f96a0",
			bg = "darkblue",
			style = "bold",
		},
	},
}

local left = {
	c.vim_mode,
    c.gitBranch,
	c.gitDiffAdded,
    c.gitDiffRemoved,
	c.gitDiffChanged,
	c.separator,
}

local middle = {
	c.fileinfo,
	c.diagnostic_errors,
	c.diagnostic_warnings,
	c.diagnostic_info,
	c.diagnostic_hints,
}

local right = {
	c.lsp_client_names,
	-- c.file_type,
	c.position,
	c.line_percentage,
	-- c.scroll_bar,
}

local components = {
	active = {
		left,
		-- middle,
		right,
	},
	inactive = {
		-- left,
		-- middle,
		-- right,
	},
}

feline.setup({
	components = components,
	theme = rahulsnvimtheme,
	vi_mode_colors = vi_mode_colors,
})

