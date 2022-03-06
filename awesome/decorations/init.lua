local add_decorations = function(c)
    require("decorations.top")(c)
end

client.connect_signal("request::titlebars", function(c)
    add_decorations(c)
end)
