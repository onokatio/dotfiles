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
config.window_close_confirmation = "NeverPrompt"
config.skip_close_confirmation_for_processes_named = {
    'bash',
    'sh',
    'zsh',
    'fish',
    'tmux',
    'nu',
    'cmd.exe',
    'pwsh.exe',
    'powershell.exe',
    'wslhost.exe', 
    'wsl.exe', 
    'conhost.exe',
    'wezterm-gui'
}
return config
