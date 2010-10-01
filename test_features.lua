#!/usr/bin/env lua

-- $Id: test_features.lua,v 1.7 2006/03/25 21:02:36 dermeister Exp $

require "gd"

function enabled(res, desc)
  local str = "    " .. desc .. " "
  str = str .. string.rep(".", 37 - string.len(str))
  if res then
    print(str .. " Enabled")
  else
    print(str .. " Disabled")
  end
end

print("Lua-GD version: " .. gd.VERSION)
print("Lua-GD features:")

enabled(gd.png, "PNG support")
enabled(gd.gif, "GIF support")
enabled(gd.jpeg, "JPEG support")
enabled(gd.createFromXpm, "XPM/XBM support")
enabled(gd.stringFT, "FreeType support")
enabled(gd.useFontConfig, "Fontconfig support")
