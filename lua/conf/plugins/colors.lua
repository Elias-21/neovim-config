return {
	"navarasu/onedark.nvim",

	config = function()
		require("onedark").setup({
			style = "deep",
			highlights = {
				Normal				= { fg = "#ffffff", bg = "#050520" },
				NormalNC			= { fg = "#ffffff", bg = "#050520" },	
				EndOfBuffer			= { fg = "#151530", bg = "#050520" },
				CursorLineNr		= { fg = "#50ff50" },
				LineNr				= { fg = "#20ff02" },
				StatusLine			= { fg = "#ffffff", bg = "#151530" },

				NvimTreeNormal      = { bg = "050520"},
				NvimTreeEndOfBuffer = { bg = "050520"},

			},
		})
		require("onedark").load()
	end
}

