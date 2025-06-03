local application = require("hs.application")
local spaces = require("hs.spaces")
local double_press = require("ctrlDoublePress")

local open_terminal = function()
  local appName = "com.mitchellh.ghostty"
  local app = application.get(appName)

  if app == nil then
    application.launchOrFocus(appName)
  elseif app:isFrontmost() then
    app:hide()
  else
    local active_space = spaces.focusedSpace()
    local terminal_window = app:focusedWindow()
    spaces.moveWindowToSpace(terminal_window, active_space)
    app:setFrontmost()
  end
end

double_press.timeFrame = 0.5
double_press.action = open_terminal
