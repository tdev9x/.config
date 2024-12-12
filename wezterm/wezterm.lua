-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.font = wezterm.font("JetBrainsMono Nerd Font", {
	weight = "Medium",
})
config.font_size = 16

config.window_padding = {
	top = 0,
	left = 0,
	right = 0,
	bottom = 0,
}

config.window_background_opacity = 0.8
config.macos_window_background_blur = 90

-- image setting
local user_home = os.getenv("HOME")
local background_folder = user_home .. "/.config/wezterm/bg"
local function pick_random_background(folder)
	local handle = io.popen('ls "' .. folder .. '"')
	local files = handle:read("*a")
	handle:close()

	local images = {}
	for file in string.gmatch(files, "[^\n]+") do
		table.insert(images, file)
	end

	if #images > 0 then
		return folder .. "/" .. images[math.random(#images)]
	else
		return nil
	end
end

config.keys = {
	{
		key = "b",
		mods = "CTRL|SHIFT",
		action = wezterm.action_callback(function(window, pane)
			local new_background = pick_random_background(background_folder)
			if new_background then
				window:set_config_overrides({
					window_background_image = new_background,
				})
				wezterm.log_info("New bg:" .. new_background)
			else
				wezterm.log_error("Could not find bg image")
			end
		end),
	},
}

config.window_background_image_hsb = {
	-- Darken the background image by reducing it
	brightness = 0.04,
	hue = 1.0,
	saturation = 0.7,
}

config.window_background_image = user_home .. "/.config/wezterm/bg/bg.jpg"

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
