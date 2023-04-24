local wezterm = require 'wezterm'
local config = {}

config = wezterm.config_builder()

function scheme_for_appearance(appearance)
  if wezterm.gui.get_appearance():find 'Dark' then
    return 'Builtin Solarized Dark'
  else
    return 'Builtin Solarized Light'
  end
end

config.color_scheme = scheme_for_appearance()
return config
