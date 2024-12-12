return {
	"lazymaniac/wttr.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		location = "",
		format = 1,
		custom_format = "%C+%cP:%p+T:%t+F:%f+%w+%m+%P+UV:%u+Hum:%h",
	},
	keys = {
		{
			"<leader>W",
			function()
				require("wttr").get_forecast() -- show forecast for my location
			end,
			desc = "Weather Forecast",
		},
		{
			"<leader>w",
			function()
				require("wttr").get_forecast("Hanoi") -- show forecast for London
			end,
			desc = "Weather Forecast - Ha Noi",
		},
	},
}
