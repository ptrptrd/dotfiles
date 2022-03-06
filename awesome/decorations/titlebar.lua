local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi

local get_titlebar = function(c)

    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.resize(c)
        end)
    )

    local left = {
        awful.titlebar.widget.iconwidget(c),
        buttons     = buttons, 
        layout      = wibox.layout.fixed.horizontal
    }

    local middle = {
        { -- Title
            align  = "center",
            widget = awful.titlebar.widget.titlewidget(c)
        },
        buttons = buttons,
        layout  = wibox.layout.flex.horizontal
    }

    local right = {
        {
            awful.titlebar.widget.minimizebutton(c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.closebutton(c),
            layout = wibox.layout.fixed.horizontal
        },
        align = "right",
        top = dpi(2), bottom = dpi(2), left = dpi(4), right = dpi(4),
        widget = wibox.container.margin
    }

    local titlebar = {
        {
            left,
            middle,
            right,
            layout = wibox.layout.align.horizontal
        },
        widget = wibox.container.background,
    }

        return titlebar

end

return get_titlebar
