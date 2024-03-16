
return {
	{"ThePrimeagen/harpoon",
		cmd = "",
		opts = {},

		keys = {
			{"<leader>hm", function() require("harpoon.mark").add_file() end, desc="Harpoon Mark File"},
			{"<leader>hr", function() require("harpoon.mark").rm_file() end, desc="Harpoon Remove File Mark"},
			{"<leader>hh", function() require("harpoon.ui").toggle_quick_menu() end, desc="Open Harpoon UI"}
		}
	}
}
