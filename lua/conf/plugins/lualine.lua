return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"navarasu/onedark.nvim"
	},

	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark"
				
			},
		})
	end
}
