-- Lua configuration file for way-cooler.

local background = "~/.config/way-cooler/background.jpg"

way_cooler.programs = {
  terminal = "xfce4-terminal --hide-borders",
  x11_bar = "lemonbar"
}

util.program.spawn_at_startup("way-cooler-bg", background)
util.program.spawn_at_startup("dropbox", "start")
util.program.spawn_at_startup("sleep 1 && /home/timidger/.config/way-cooler/bar.sh", "")

mod = "Mod4"
local key = way_cooler.key -- Alias key so it's faster to type

-- These options are applied to all windows.
way_cooler.windows = {
  gaps = {
    size = 0,
  },
  borders = {
    size = 10,
    inactive_color = 0x386890,
    active_color = 0x57beb9
  },
  title_bar = { -- Options for title bar above windows
    size = 20, -- Size of the title bar
    background_color = 0x386690, -- Color of inactive title bar
    active_background_color = 0x57beb9, -- Color of active title bar
    font_color = 0x0, -- Color of the font for an inactive title bar
    active_font_color = 0xffffff -- Color of font for active title bar
  }
}

local keys = {
  -- launch programs
  key({ mod }, "d", "launch_dmenu"),
  key({ mod }, "return", "launch_terminal"),

  -- Move focus
  key({ mod }, "h", "focus_left"),
  key({ mod }, "l", "focus_right"),
  key({ mod }, "k", "focus_up"),
  key({ mod }, "j", "focus_down"),

  -- Move active container
  key({ mod, "Shift" }, "h", "move_active_left"),
  key({ mod, "Shift" }, "l", "move_active_right"),
  key({ mod, "Shift" }, "k", "move_active_up"),
  key({ mod, "Shift" }, "j", "move_active_down"),

  -- Split containers
  key({ mod }, "semicolon", "split_horizontal"),
  key({ mod }, "v", "split_vertical"),
  key({ mod }, "e", "horizontal_vertical_switch"),
  key({ mod }, "f", "fullscreen_toggle"),
  key({ mod, "Shift" }, "q", "close_window"),
  key({ mod, "Shift" }, "space", "toggle_float_active"),
  key({ mod }, "space", "toggle_float_focus"),
  key({ mod, "Shift" }, "r", "way_cooler_restart"),
  key({ mod, "Shift" }, "escape", "way_cooler_quit"),

  -- Brightness control stuff
  key({}, "XF86MonBrightnessDown", function () os.execute("light -U 10") end),
  key({}, "XF86MonBrightnessUp", function () os.execute("light -A 10") end),
}

-- Add Mod + X bindings to switch to workspace X, Mod+Shift+X send active to X
for i = 0, 9 do
  table.insert(keys,
               key({ mod }, tostring(i), "switch_workspace_" .. i))
  table.insert(keys,
               key({ mod, "Shift" }, tostring(i), "move_to_workspace_" .. i))
end

-- Register the keybindings.
for _, key in pairs(keys) do
    way_cooler.register_key(key)
end

-- Register the mod key to also be the mod key for mouse commands
way_cooler.register_mouse_modifier(mod)
-- Execute some code after Way Cooler is finished initializing
way_cooler.on_init = function()
  util.program.spawn_startup_programs()
end

--- Execute some code when Way Cooler restarts
way_cooler.on_restart = function()
  util.program.restart_startup_programs()
  os.execute("pkill lemonbar")
end

way_cooler.on_terminate = function()
  util.program.terminate_startup_programs()
  os.execute("pkill lemonbar")
end
