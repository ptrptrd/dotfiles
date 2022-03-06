-- {{{ Menu
-- Create a launcher widget and a main menu
local beautiful = require("beautiful")
local awful = require("awful")

local terminal = "termite"
local editor_cmd = "nvim"

awesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

multimediamenu = {
   { "Firefox", "firefox --private-window", beautiful.firefox_icon },
}

mymainmenu = awful.menu({
	items = {
		{ "awesome", awesomemenu },
		{ "multimedia", multimediamenu },
	}
})

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })


