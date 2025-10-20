return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
	harpoon = require("harpoon")
	harpoon:setup()
end
}
