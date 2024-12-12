return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "buffers",
			offsets = {
				{
					-- đoạn cài đặt này cho phép Tab
					-- tự động thụt vào khi Nvim-tree được mở ra
					filetype = "neo-tree",
					text = "File Explorer",
					text_align = "center",
					separator = true,
				},
			},
			buffer_close_icon = "×",
		},
	},
}
