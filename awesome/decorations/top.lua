local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local wibox = require ("wibox")

local get_titlebar = require("decorations.titlebar")

local top = function(c)

    awful.titlebar(c) : setup {
        {
            get_titlebar(c),
            widget = wibox.container.background
        },
        widget = wibox.container.background
    }

end

return top
        
